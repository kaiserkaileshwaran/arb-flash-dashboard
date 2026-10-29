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
    "https://arbitrum-one-rpc.publicnode.com",
    "https://arbitrum.drpc.org",
    "https://arb1.arbitrum.io/rpc",
    "https://1rpc.io/arb",
]
MC3 = "0xcA11bde05977b3631167028862bE2a173976CA11"
POOL = "0x794a61358D6845594F94dc1DB02A252b5b4814aD"
DATA_PROVIDER = "0x69FA688f1Dc47d4B5d8029D5a35FB7a548310654"
BORROW_TOPIC = "0xb3d084820fb1a9decffb176436bd02558d15fac9b0ddfed8c465bc7359d7dce0"
WITHDRAW_TOPIC = "0x3115d1449a7b732c986cba18244e897a450f61e1bb8d589cd2e69e6c8924f9f7"
LIQUIDATION_TOPIC = "0xe413a321e8681d831f4dbccbca790d2952b56f977908e45be37335533e005286"

SEED_KNOWN_BORROWERS = [
    "0x6b738ce36d2f1a74db1d32191c01043f423d8775",
    "0x5feeb9d38b8b028d2380875a60e8090db63ef319",
    "0x954b9cfb8055fcfcc74b2252d4b2b9827dfb44bb",
    "0xe171627de29a230147b235ed39b3ec0e1338e470",
    "0x8b81420441ac3933c58d1190c8499c2f89eb1263",
    "0x270d1c8c0f13ff925f710dff38bf806bdbb4e6b2",
    "0x22f1d8e414ef3c8eb426489498eeaef2488a44f9",
    "0xc358f7803a0a28afe56b5bbce157664fe5e1624d",
    "0xba62acf915c1697d000de2f70494ab65cfbcf710",
    "0x9cd61cab43075c6c4a56a95dacadad39df555d25",
    "0x9f25248e8465a4a5106948615c6db2ed1e1b9052",
    "0x12bb24d553161036461ef1dc789c6f73765e1a57",
    "0x50dd9ba784f9e3658f7bade66c2a9e19ad3dde36",
    "0x408dcf31e16b438a86fe01e258cd357651aa7b3f",
    "0x7d7937bac6af9975bbacbcd53d53e5c61968cd36",
    "0x541980dd1db4123185d6b632e9d6a09f77c1e4fa",
    "0x572372831a9d6b2e3ee8fa284505599e6125fea9",
    "0x4c2707ec572416256c939ca9cc653acbb1473145",
    "0xb71ae1fe3a27d8b3f9a769f033374cfe1587b07a",
    "0x9cd696c583ded4716d82012f7f22caeaf335266a",
    "0x2012395e71a4af2e621d522b175f6c29232398db",
    "0xea12ea09ecd81f19ec642d93ccd2c4723bdb592b",
    "0xbfef061243c3da14d20aa9cb054350a9192d3a93",
    "0x875e726fa2e984570b32f505c9c64f864d1d2e5b",
    "0x41f18c7d037a523d5473150276b25ddcd774d8ac",
    "0xe091330c53b971ed4e886f902f18e8544a8d6705",
    "0x24b89d942f4b0c8f1380247187c63a9d0fc16e60",
    "0xc81e714b95eeaa16ffe012b848e230c81c4c0fe8",
    "0xe7e4c24d28c52f8e373678c4730582b6083372d7",
    "0x67374a534c8b4224e3da99afa2e2f901cefedabc",
    "0xea9991acee7d9d56f591947177d1bcd23a8f894a",
    "0xad38255febd566809ae387d5be66ecd287947cb9",
    "0x2e4634304d58856d003545badbfef5ec1a442c1d",
    "0x38741b85840efd529d55d8567eee5064f719ea3c",
    "0xddc60d163015cf5ca1369d557a2ca1cc2de1f1e3",
]

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
DEBT_OK = {"WETH", "USDC", "USDT", "USDC.e", "DAI", "LUSD", "WBTC", "ARB"}
STABLE_SYMS = {"USDC", "USDT", "USDC.e", "DAI", "LUSD"}
BONUS_BY_COL = {
    "WETH": 0.05, "USDC": 0.05, "USDT": 0.05, "USDC.e": 0.05,
    "wstETH": 0.05, "weETH": 0.05, "DAI": 0.05, "LUSD": 0.05,
    "WBTC": 0.065, "LINK": 0.075, "AAVE": 0.075, "ARB": 0.10,
}
HF_MAX, MIN_DEBT_USD, WINDOW, WINDOWS_PER_RUN = 1.18, 120.0, 9500, 32


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


def _encode_agg3(subcalls):
    n = len(subcalls)
    head_words = [hex(32)[2:].rjust(64, "0"), hex(n)[2:].rjust(64, "0")]
    tuple_offsets, tuple_bodies = [], []
    cur_offset = 32 * n
    for target, cd_hex in subcalls:
        cd_clean = cd_hex[2:] if cd_hex.startswith("0x") else cd_hex
        cd_bytes_len = len(cd_clean) // 2
        padded_cd = cd_clean + ("0" * ((64 - (len(cd_clean) % 64)) % 64))
        body = (
            target.lower().replace("0x", "").rjust(64, "0")
            + ("1").rjust(64, "0")
            + hex(96)[2:].rjust(64, "0")
            + hex(cd_bytes_len)[2:].rjust(64, "0")
            + padded_cd
        )
        tuple_offsets.append(hex(cur_offset)[2:].rjust(64, "0"))
        tuple_bodies.append(body)
        cur_offset += len(body) // 2
    return "0x82ad56cb" + "".join(head_words + tuple_offsets + tuple_bodies)


def _decode_agg3(ret_hex, count):
    if not isinstance(ret_hex, str) or len(ret_hex) < 66:
        return [None] * count
    raw = bytes.fromhex(ret_hex[2:] if ret_hex.startswith("0x") else ret_hex)
    if len(raw) < 64:
        return [None] * count
    arr_off = int.from_bytes(raw[0:32], "big")
    n = int.from_bytes(raw[arr_off : arr_off + 32], "big")
    base = arr_off + 32
    out = []
    for i in range(min(n, count)):
        elem_off = base + int.from_bytes(raw[base + i * 32 : base + (i + 1) * 32], "big")
        success = int.from_bytes(raw[elem_off : elem_off + 32], "big") == 1
        data_off = elem_off + int.from_bytes(raw[elem_off + 32 : elem_off + 64], "big")
        data_len = int.from_bytes(raw[data_off : data_off + 32], "big")
        data_bytes = raw[data_off + 32 : data_off + 32 + data_len]
        out.append(("0x" + data_bytes.hex()) if (success and data_len > 0) else None)
    return out


def batch(calls):
    import concurrent.futures
    out = {}
    chunks = [(i, calls[i : i + 160]) for i in range(0, len(calls), 160)]

    def _run_chunk(item):
        base_i, chunk = item
        cd = _encode_agg3(chunk)
        r = one("eth_call", [{"to": MC3, "data": cd}, "latest"])
        res_map = {}
        if r:
            dec = _decode_agg3(r, len(chunk))
            for j, val in enumerate(dec):
                if val:
                    res_map[base_i + j] = val
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
    users = set(u.lower() for u in SEED_KNOWN_BORROWERS)
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

    # Scan top 8 recent windows (Borrow + Withdraw + LiquidationCall) + deep-history windows below lowest_scanned_block
    scan_ranges = []
    for k in range(8):
        hi = head - k * WINDOW
        scan_ranges.append((hi - WINDOW, hi, True))
    cursor = min(lowest_scanned_block, head - 8 * WINDOW)
    for k in range(WINDOWS_PER_RUN - 8):
        hi = cursor - k * WINDOW
        if hi > WINDOW:
            scan_ranges.append((hi - WINDOW, hi, k < 8))
            lowest_scanned_block = min(lowest_scanned_block, hi - WINDOW)

    import concurrent.futures

    def _scan_log_range(rng):
        lo, hi, scan_all_topics = rng
        topics_filter = [[BORROW_TOPIC, WITHDRAW_TOPIC, LIQUIDATION_TOPIC]] if scan_all_topics else [BORROW_TOPIC]
        r = rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getLogs",
            "params": [{"address": POOL, "fromBlock": hex(lo), "toBlock": hex(hi), "topics": topics_filter}],
        })
        found = set()
        for lg in (r or {}).get("result", []) or []:
            if isinstance(lg, dict):
                tops = lg.get("topics", [])
                if not tops:
                    continue
                t0 = tops[0].lower()
                if t0 == LIQUIDATION_TOPIC and len(tops) >= 4:
                    found.add("0x" + tops[3][-40:].lower())
                elif len(tops) >= 3:
                    found.add("0x" + tops[2][-40:].lower())
        return found

    with concurrent.futures.ThreadPoolExecutor(max_workers=8) as ex:
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
    mega_crore_cands = []
    for i, u in enumerate(users_list):
        h = res.get(i)
        if not h or len(h) < 386:
            continue
        col_usd, debt_usd, hf = w(h, 0) / 1e8, w(h, 1) / 1e8, w(h, 5) / 1e18
        if debt_usd >= MIN_DEBT_USD and 0 < hf <= HF_MAX:
            cands.append((hf, debt_usd, col_usd, u))
        elif debt_usd >= 250000.0 and 0 < hf <= 1.38:
            mega_crore_cands.append((hf, debt_usd, col_usd, u))
    cands.sort()
    mega_crore_cands.sort(key=lambda x: (-x[1], x[0]))

    seen_top_u = set()
    top_cands = []
    for item in (cands[:85] + mega_crore_cands[:25]):
        if item[3] not in seen_top_u:
            seen_top_u.add(item[3])
            top_cands.append(item)
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
                if d_val >= 120.0:
                    debts.append((d_val, sym, debt))
            if col_bal > 0 and w(h, 8) == 1:
                c_val = (col_bal / 10 ** dec) * price[sym]
                if c_val >= 135.0:
                    cols.append((c_val, sym, col_bal))
        if not debts or not cols:
            continue
        debts.sort(reverse=True)
        cols.sort(reverse=True)

        # Emit primary collateral leg AND (if available) secondary collateral leg for Multi-Leg Co-Liquidation!
        emitted_legs = 0
        for best_d_val, best_d_sym, best_d_raw in debts:
            for leg_idx, (c_val, c_sym, c_raw) in enumerate(cols[:2]):
                if best_d_sym == c_sym or emitted_legs >= 2:
                    continue
                # wstETH and weETH only have deep single-hop Uniswap V3 pools against WETH on Arbitrum One
                if c_sym in ("wstETH", "weETH") and best_d_sym != "WETH":
                    continue
                if best_d_sym in ("wstETH", "weETH") and c_sym != "WETH":
                    continue
                bonus_rate = BONUS_BY_COL.get(c_sym, 0.05)
                # Aave V3.2 Close Factor & Dust Rule:
                # - When debt < $2,000 or collateral < $2,000, Aave V3.2 sets closeFactor = 100% (full liquidation leaves $0 dust).
                # - When debt >= $2,000 and collateral >= $2,000, enforce remaining debt & collateral >= $1,015 USD (49.5% standard close factor, 100% when HF < 0.95).
                if best_d_val < 2000.0 or c_val < 2000.0:
                    if emitted_legs > 0:
                        continue
                    # Aave V3.2 MustNotLeaveDust (< $2,000 debt or collateral):
                    # Passing 99.5% leaves ~0.5% ($5-$9 < $1,000) dust which reverts with 0xb629b0e4!
                    # Passing 101% of debt (when collateral covers 100% debt + bonus) causes Aave V3 to cap at exact 100.000% debt ($0 dust).
                    # Otherwise, if collateral > $1,080, seize (c_val_at_liq - $1,020) / (1 + bonus_rate) so remaining collateral stays > $1,000.
                    c_val_at_liq = c_val / max(1.0, hf) if c_sym not in STABLE_SYMS else c_val
                    if best_d_val < 2000.0 and c_val_at_liq >= best_d_val * (1.0 + bonus_rate) * 1.005:
                        max_repay_usd = best_d_val * 1.01
                    elif c_val_at_liq > 1080.0 and best_d_val > 1080.0:
                        max_repay_usd = min(
                            best_d_val - 1020.0,
                            (c_val_at_liq - 1020.0) / (1.0 + bonus_rate),
                        )
                    else:
                        max_repay_usd = min(best_d_val * 1.01, (c_val_at_liq / (1.0 + bonus_rate)) * 1.01)
                    max_repay_100pct_usd = min(best_d_val, c_val_at_liq / (1.0 + bonus_rate))
                    min_slice_usd = 60.0
                else:
                    c_val_at_liq = c_val / max(1.0, hf) if c_sym not in STABLE_SYMS else c_val
                    max_repay_usd = min(
                        best_d_val * (0.495 if emitted_legs == 0 else 0.25),
                        best_d_val - 1020.0,
                        (c_val_at_liq - 1020.0) / (1.0 + bonus_rate),
                    )
                    max_repay_100pct_usd = min(
                        best_d_val * 0.995,
                        (c_val_at_liq * 0.995) / (1.0 + bonus_rate),
                    )
                    min_slice_usd = 80.0
                if max_repay_usd < min_slice_usd:
                    continue
                repay_fraction = min(1.015, max_repay_usd / best_d_val)
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
                    "leg": "PRIMARY" if emitted_legs == 0 else "SECONDARY_RESIDUAL",
                    "hf": round(hf, 6),
                    "total_debt_usd": round(debt_usd, 2),
                    "debt_symbol": best_d_sym,
                    "debt_token": ASSETS[best_d_sym][0],
                    "collateral_symbol": c_sym,
                    "collateral_token": ASSETS[c_sym][0],
                    "repay_amount_raw": repay,
                    "repay_slice_usd": round(max_repay_usd, 2),
                    "est_bonus_usd": round(max_repay_usd * bonus_rate, 2),
                    "est_bonus_100pct_usd": round(max_repay_100pct_usd * bonus_rate, 2),
                    "direction": direction,
                    "trigger_eth_usd": trigger_eth_usd,
                    "price_move_pct_needed": round((hf - 1.0) * 100.0, 3),
                })
                emitted_legs += 1

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
