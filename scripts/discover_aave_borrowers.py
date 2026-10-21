#!/usr/bin/env python3
"""
Discover extra Aave V3 (Arbitrum) borrowers from on-chain Borrow events, rank by live Health Factor,
and write reports/aave_watch_extra.json for the broadcaster to merge into its liquidation watchlist.
Read-only. For each borrower it picks the largest debt asset and largest collateral asset from the
Aave ProtocolDataProvider and sizes the repay at 45% of that debt (under the 50% close factor).
"""
import json, sys, time, urllib.request
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent
RPCS = ["https://arb1.arbitrum.io/rpc", "https://arbitrum-one-rpc.publicnode.com", "https://1rpc.io/arb"]
POOL = "0x794a61358D6845594F94dc1DB02A252b5b4814aD"
DATA_PROVIDER = "0x69FA688f1Dc47d4B5d8029D5a35FB7a548310654"
BORROW_TOPIC = "0xb3d084820fb1a9decffb176436bd02558d15fac9b0ddfed8c465bc7359d7dce0"
ASSETS = {  # symbol: (address, decimals, usd price source: 'eth' | 1.0)
    "WETH": ("0x82aF49447D8a07e3bd95BD0d56f35241523fBab1", 18),
    "USDC": ("0xaf88d065e77c8cC2239327C5EDb3A432268e5831", 6),
    "USDT": ("0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9", 6),
    "WBTC": ("0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f", 8),
    "ARB": ("0x912CE59144191C1204E64559FE8253a0e49E6548", 18),
}
DEBT_OK = {"WETH", "USDC", "USDT"}  # repay assets the broadcaster's reimbursement logic supports
HF_MAX, MIN_DEBT_USD, WINDOW, WINDOWS = 1.15, 300.0, 9500, 30


def rpc(payload):
    for u in RPCS:
        try:
            r = urllib.request.Request(u, data=json.dumps(payload).encode(),
                                       headers={"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"})
            return json.loads(urllib.request.urlopen(r, timeout=12).read())
        except Exception:
            continue
    return None


def one(m, p):
    r = rpc({"jsonrpc": "2.0", "id": 1, "method": m, "params": p})
    return (r or {}).get("result")


def batch(calls):
    out = {}
    for i in range(0, len(calls), 40):
        chunk = calls[i:i + 40]
        r = rpc([{"jsonrpc": "2.0", "id": j, "method": "eth_call", "params": [{"to": t, "data": d}, "latest"]}
                 for j, (t, d) in enumerate(chunk)])
        for it in (r or []):
            out[i + it["id"]] = it.get("result")
    return out


def w(h, n):
    return int(h[2 + 64 * n: 2 + 64 * (n + 1)], 16)


def main():
    head = int(one("eth_blockNumber", []), 16)
    users = set()
    for k in range(WINDOWS):
        hi = head - k * WINDOW
        r = rpc({"jsonrpc": "2.0", "id": 1, "method": "eth_getLogs",
                 "params": [{"address": POOL, "fromBlock": hex(hi - WINDOW), "toBlock": hex(hi), "topics": [BORROW_TOPIC]}]})
        for lg in (r or {}).get("result", []) or []:
            users.add("0x" + lg["topics"][2][-40:])
    users = sorted(users)
    pad = lambda a: a.lower().replace("0x", "").rjust(64, "0")
    res = batch([(POOL, "0xbf92857c" + pad(u)) for u in users])
    eth_usd = 0.0
    cl = one("eth_call", [{"to": "0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612", "data": "0x50d25bcd"}, "latest"])
    eth_usd = int(cl, 16) / 1e8 if cl else 2400.0
    cands = []
    for i, u in enumerate(users):
        h = res.get(i)
        if not h or len(h) < 386:
            continue
        debt_usd, hf = w(h, 1) / 1e8, w(h, 5) / 1e18
        if debt_usd >= MIN_DEBT_USD and 0 < hf <= HF_MAX:
            cands.append((hf, debt_usd, u))
    cands.sort()
    out = []
    price = {"WETH": eth_usd, "USDC": 1.0, "USDT": 1.0, "WBTC": eth_usd * 0.0, "ARB": 0.0}
    for hf, debt_usd, u in cands[:25]:
        calls = [(DATA_PROVIDER, "0x28dd2d01" + pad(a) + pad(u)) for a, _ in ASSETS.values()]
        rd = batch(calls)
        best_debt, best_col = None, None
        for j, (sym, (addr, dec)) in enumerate(ASSETS.items()):
            h = rd.get(j)
            if not h or len(h) < 2 + 64 * 4:
                continue
            col_bal, debt = w(h, 0), w(h, 1) + w(h, 2)
            if sym in DEBT_OK and debt > 0 and (best_debt is None or debt / 10 ** dec * (price[sym] or 1) > best_debt[2]):
                best_debt = (sym, debt, debt / 10 ** dec * (price[sym] or 1))
            if col_bal > 0 and w(h, 8) == 1:  # usageAsCollateralEnabled
                val = col_bal / 10 ** dec * (price[sym] or 0)
                if val > 0 and (best_col is None or val > best_col[2]):
                    best_col = (sym, col_bal, val)
        if not best_debt or not best_col or best_debt[0] == best_col[0]:
            continue
        repay = int(best_debt[1] * 0.45)
        out.append({
            "borrower": u, "hf": round(hf, 6), "total_debt_usd": round(debt_usd, 2),
            "debt_symbol": best_debt[0], "debt_token": ASSETS[best_debt[0]][0],
            "collateral_symbol": best_col[0], "collateral_token": ASSETS[best_col[0]][0],
            "repay_amount_raw": repay,
            "est_bonus_usd": round(best_debt[2] * 0.45 * 0.05, 2),
        })
    doc = {"ts": time.time(), "borrowers_scanned": len(users), "blocks_covered": WINDOW * WINDOWS,
           "candidates_under_hf": len(cands), "watch": out}
    (BASE / "reports" / "aave_watch_extra.json").write_text(json.dumps(doc, indent=2))
    print(json.dumps({k: v for k, v in doc.items() if k != "watch"}))
    for x in out[:10]:
        print(f"HF {x['hf']:.4f} debt ${x['total_debt_usd']:>10,.0f} {x['debt_symbol']}/{x['collateral_symbol']} bonus~${x['est_bonus_usd']:,.0f} {x['borrower']}")


if __name__ == "__main__":
    sys.exit(main())
