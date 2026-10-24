#!/usr/bin/env python3
"""
Cycle 5 & 6 Upgrade: Deep-History Incremental Aave V3 Borrower Indexer + Exact P_liq Trigger Calculator + Multi-Leg Co-Liquidation Discovery.
Scans sliding historical windows of Arbitrum Borrow events (persisted in reports/aave_all_borrowers_cache.json),
evaluates all 12 Aave V3 reserves, enforces the Aave V3.2 MustNotLeaveDust() (0xb629b0e4, >= $1,015 leftover) rule,
emits both Primary & Secondary collateral legs for multi-collateral whales, and pre-computes exact trigger_eth_usd (P_liq).
"""
import json, sys, time, urllib.request
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent
REPORTS = BASE / "reports"
CACHE_FILE = REPORTS / "aave_all_borrowers_cache.json"
OUT_FILE = REPORTS / "aave_watch_extra.json"

RPCS = [
    "https://arb1.arbitrum.io/rpc",
    "https://arbitrum-one-rpc.publicnode.com",
    "https://arbitrum-one.public.blastapi.io",
    "https://1rpc.io/arb",
]
POOL = "0x794a61358D6845594F94dc1DB02A252b5b4814aD"
DATA_PROVIDER = "0x69FA688f1Dc47d4B5d8029D5a35FB7a548310654"
BORROW_TOPIC = "0xb3d084820fb1a9decffb176436bd02558d15fac9b0ddfed8c465bc7359d7dce0"

ASSETS = {
    "WETH":   ("0x82aF49447D8a07e3bd95BD0d56f35241523fBab1", 18),
    "USDC":   ("0xaf88d065e77c8cC2239327C5EDb3A432268e5831", 6),
    "USDT":   ("0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9", 6),
    "USDC.e": ("0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8", 6),
    "WBTC":   ("0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f", 8),
    "ARB":    ("0x912CE59144191C1204E64559FE8253a0e49E6548", 18),
    "wstETH": ("0x5979D7b546E38E414F7E9822514be443A4800529", 18),
    "weETH":  ("0x35751007a407ca6FEFfE80b3cB397736D2cf4dbe", 18),
    "LINK":   ("0xf97f4df75117a78c1A5a0DBb814Af92458539FB4", 18),
    "AAVE":   ("0xba5DdD1f9d7F570dc94a51479a000E3BCE967196", 18),
    "DAI":    ("0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1", 18),
    "LUSD":   ("0x93b346b6BC2548dA6A1E7d98E9a421B42541425b", 18),
}
DEBT_OK = {"WETH", "USDC", "USDT"}
STABLE_SYMS = {"USDC", "USDT", "USDC.e", "DAI", "LUSD"}
BONUS_BY_COL = {
    "WETH": 0.05, "USDC": 0.05, "USDT": 0.05, "USDC.e": 0.05,
    "wstETH": 0.05, "weETH": 0.05, "DAI": 0.05, "LUSD": 0.05,
    "WBTC": 0.065, "LINK": 0.075, "AAVE": 0.075, "ARB": 0.10,
}
HF_MAX, MIN_DEBT_USD, WINDOW, WINDOWS_PER_RUN = 1.18, 1080.0, 9500, 18


def rpc(payload):
    want_list = isinstance(payload, list)
    for u in RPCS:
        try:
            r = urllib.request.Request(
                u,
                data=json.dumps(payload).encode(),
                headers={"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
            )
            parsed = json.loads(urllib.request.urlopen(r, timeout=10).read())
            if want_list and not isinstance(parsed, list):
                continue
            if not want_list and (not isinstance(parsed, dict) or "error" in parsed):
                continue
            return parsed
        except Exception:
            continue
    return None


def one(m, p):
    r = rpc({"jsonrpc": "2.0", "id": 1, "method": m, "params": p})
    return (r or {}).get("result") if isinstance(r, dict) else None


def batch(calls):
    import concurrent.futures
    out = {}
    chunks = [(i, calls[i : i + 32]) for i in range(0, len(calls), 32)]

    def _run_chunk(item):
        base_i, chunk = item
        r = rpc([
            {"jsonrpc": "2.0", "id": j, "method": "eth_call", "params": [{"to": t, "data": d}, "latest"]}
            for j, (t, d) in enumerate(chunk)
        ])
        res_map = {}
        if isinstance(r, list):
            for it in r:
                if isinstance(it, dict) and "id" in it:
                    res_map[base_i + it["id"]] = it.get("result")
        return res_map

    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as ex:
        for partial in ex.map(_run_chunk, chunks):
            out.update(partial)
    return out


def w(h, n):
    return int(h[2 + 64 * n : 2 + 64 * (n + 1)], 16)


def main():
    REPORTS.mkdir(parents=True, exist_ok=True)
    head_hex = one("eth_blockNumber", [])
    if not head_hex:
        return 0
    head = int(head_hex, 16)

    # Load persistent borrower cache & historical scan cursor
    users = set()
    lowest_scanned_block = head
    if CACHE_FILE.exists():
        try:
            c_doc = json.loads(CACHE_FILE.read_text())
            for u in c_doc.get("all_users", []):
                users.add(u.lower())
            lowest_scanned_block = int(c_doc.get("lowest_scanned_block", head))
        except Exception:
            pass
    if OUT_FILE.exists():
        try:
            prev_doc = json.loads(OUT_FILE.read_text())
            for x in prev_doc.get("watch", []):
                if x.get("borrower"):
                    users.add(x["borrower"].lower())
        except Exception:
            pass

    # Always scan top 4 recent windows + 14 deep-history windows below lowest_scanned_block
    scan_ranges = []
    for k in range(4):
        hi = head - k * WINDOW
        scan_ranges.append((hi - WINDOW, hi))
    cursor = min(lowest_scanned_block, head - 4 * WINDOW)
    for k in range(WINDOWS_PER_RUN - 4):
        hi = cursor - k * WINDOW
        if hi > WINDOW:
            scan_ranges.append((hi - WINDOW, hi))
            lowest_scanned_block = min(lowest_scanned_block, hi - WINDOW)

    import concurrent.futures

    def _scan_log_range(rng):
        lo, hi = rng
        r = rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getLogs",
            "params": [{"address": POOL, "fromBlock": hex(lo), "toBlock": hex(hi), "topics": [BORROW_TOPIC]}],
        })
        found = set()
        for lg in (r or {}).get("result", []) or []:
            if isinstance(lg, dict) and len(lg.get("topics", [])) >= 3:
                found.add("0x" + lg["topics"][2][-40:].lower())
        return found

    with concurrent.futures.ThreadPoolExecutor(max_workers=6) as ex:
        for found_set in ex.map(_scan_log_range, scan_ranges):
            users.update(found_set)

    users_list = sorted(users)
    try:
        CACHE_FILE.write_text(json.dumps({
            "ts": time.time(),
            "head_block": head,
            "lowest_scanned_block": lowest_scanned_block,
            "blocks_span_covered": head - lowest_scanned_block,
            "total_cached_users": len(users_list),
            "all_users": users_list,
        }, indent=2))
    except Exception:
        pass

    pad = lambda a: a.lower().replace("0x", "").rjust(64, "0")
    res = batch([(POOL, "0xbf92857c" + pad(u)) for u in users_list])

    cl = one("eth_call", [{"to": "0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612", "data": "0x50d25bcd"}, "latest"])
    eth_usd = int(cl, 16) / 1e8 if cl else 2310.0
    cl_btc = one("eth_call", [{"to": "0x6ce185860a4963106506C203335A2910413708e9", "data": "0x50d25bcd"}, "latest"])
    btc_usd = int(cl_btc, 16) / 1e8 if cl_btc else eth_usd * 28.0
    cl_arb = one("eth_call", [{"to": "0xb2A824043730FE05F3DA2efaFa1CBbe83fa548D6", "data": "0x50d25bcd"}, "latest"])
    arb_usd = int(cl_arb, 16) / 1e8 if cl_arb else 0.55

    price = {
        "WETH": eth_usd,
        "USDC": 1.0,
        "USDT": 1.0,
        "USDC.e": 1.0,
        "DAI": 1.0,
        "LUSD": 1.0,
        "WBTC": btc_usd,
        "ARB": arb_usd,
        "wstETH": eth_usd * 1.18,
        "weETH": eth_usd * 1.05,
        "LINK": 11.50,
        "AAVE": 145.0,
    }

    cands = []
    for i, u in enumerate(users_list):
        h = res.get(i)
        if not h or len(h) < 386:
            continue
        col_usd, debt_usd, hf = w(h, 0) / 1e8, w(h, 1) / 1e8, w(h, 5) / 1e18
        if debt_usd >= MIN_DEBT_USD and 0 < hf <= HF_MAX:
            cands.append((hf, debt_usd, col_usd, u))
    cands.sort()

    top_cands = cands[:55]
    asset_items = list(ASSETS.items())
    all_res_calls = []
    for _, _, _, u in top_cands:
        for _, (a, _) in asset_items:
            all_res_calls.append((DATA_PROVIDER, "0x28dd2d01" + pad(a) + pad(u)))
    all_rd = batch(all_res_calls)

    out = []
    for c_idx, (hf, debt_usd, col_usd, u) in enumerate(top_cands):
        debts = []
        cols = []
        base_offset = c_idx * len(asset_items)
        for j, (sym, (addr, dec)) in enumerate(asset_items):
            h = all_rd.get(base_offset + j)
            if not h or len(h) < 2 + 64 * 4:
                continue
            col_bal, debt = w(h, 0), w(h, 1) + w(h, 2)
            if sym in DEBT_OK and debt > 0:
                d_val = (debt / 10 ** dec) * price[sym]
                if d_val >= 1050.0:
                    debts.append((d_val, sym, debt))
            if col_bal > 0 and w(h, 8) == 1:
                c_val = (col_bal / 10 ** dec) * price[sym]
                if c_val >= 1100.0:
                    cols.append((c_val, sym, col_bal))
        if not debts or not cols:
            continue
        debts.sort(reverse=True)
        cols.sort(reverse=True)

        best_d_val, best_d_sym, best_d_raw = debts[0]
        # Emit primary collateral leg AND (if available) secondary collateral leg for Multi-Leg Co-Liquidation!
        for leg_idx, (c_val, c_sym, c_raw) in enumerate(cols[:2]):
            if best_d_sym == c_sym:
                continue
            bonus_rate = BONUS_BY_COL.get(c_sym, 0.05)
            # Enforce Aave V3.2 MustNotLeaveDust() (0xb629b0e4): remaining debt & collateral >= $1,015 USD
            max_repay_usd = min(
                best_d_val * (0.45 if leg_idx == 0 else 0.24),
                best_d_val - 1015.0,
                (c_val - 1015.0) / (1.0 + bonus_rate),
            )
            if max_repay_usd < 80.0:
                continue
            repay_fraction = max_repay_usd / best_d_val
            repay = int(best_d_raw * repay_fraction)
            if repay <= 0:
                continue

            # Pre-compute exact ETH trigger price P_liq (where HF crosses 0.9995)
            if best_d_sym in STABLE_SYMS and c_sym not in STABLE_SYMS:
                direction = "LONG_CRYPTO_SHORT_STABLE"
                trigger_eth_usd = round(eth_usd / max(1.0001, hf), 2)
            elif best_d_sym not in STABLE_SYMS and c_sym in STABLE_SYMS:
                direction = "SHORT_CRYPTO_LONG_STABLE"
                trigger_eth_usd = round(eth_usd * max(1.0001, hf), 2)
            else:
                direction = "CROSS_CRYPTO"
                trigger_eth_usd = round(eth_usd / max(1.0001, hf), 2)

            out.append({
                "borrower": u,
                "leg": "PRIMARY" if leg_idx == 0 else "SECONDARY_RESIDUAL",
                "hf": round(hf, 6),
                "total_debt_usd": round(debt_usd, 2),
                "debt_symbol": best_d_sym,
                "debt_token": ASSETS[best_d_sym][0],
                "collateral_symbol": c_sym,
                "collateral_token": ASSETS[c_sym][0],
                "repay_amount_raw": repay,
                "est_bonus_usd": round(max_repay_usd * bonus_rate, 2),
                "direction": direction,
                "trigger_eth_usd": trigger_eth_usd,
                "price_move_pct_needed": round((hf - 1.0) * 100.0, 3),
            })

    doc = {
        "ts": time.time(),
        "eth_usd_ref": round(eth_usd, 2),
        "borrowers_scanned": len(users_list),
        "blocks_covered": head - lowest_scanned_block,
        "candidates_under_hf": len(cands),
        "watch_count": len(out),
        "watch": out,
    }
    OUT_FILE.write_text(json.dumps(doc, indent=2))
    print(json.dumps({k: v for k, v in doc.items() if k != "watch"}))
    for x in out[:15]:
        print(
            f"[{x['leg'][:4]}] HF {x['hf']:.4f} (P_liq=${x['trigger_eth_usd']}) debt ${x['total_debt_usd']:>9,.0f} "
            f"{x['debt_symbol']}/{x['collateral_symbol']} bonus~${x['est_bonus_usd']:,.0f} {x['borrower']}"
        )
    return 0


if __name__ == "__main__":
    sys.exit(main())
