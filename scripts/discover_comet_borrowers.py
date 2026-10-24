#!/usr/bin/env python3
"""
Cycle 7 Upgrade: Dynamic Compound V3 (Comet) Zero-Capital absorb() Borrower Scanner.
Scans Withdraw events on Arbitrum Compound V3 USDC Comet (0x9c4ec768c28520B50860ea7a15bd7213a9fF58bf)
and WETH Comet (0x6f7D514bbD4aFf3BcD1140B7344b32f063dEe486), checks borrowBalanceOf(address) (0x374c49b4)
and isLiquidatable(address) (0x8e19899e), and writes reports/comet_watch_extra.json.
"""
import json, sys, time, urllib.request
from pathlib import Path

BASE = Path(__file__).resolve().parent.parent
REPORTS = BASE / "reports"
OUT_FILE = REPORTS / "comet_watch_extra.json"

RPCS = [
    "https://arb1.arbitrum.io/rpc",
    "https://arbitrum-one-rpc.publicnode.com",
    "https://arbitrum-one.public.blastapi.io",
    "https://1rpc.io/arb",
]
COMET_USDC = "0x9c4ec768c28520B50860ea7a15bd7213a9fF58bf"
COMET_WETH = "0x6f7D514bbD4aFf3BcD1140B7344b32f063dEe486"
WITHDRAW_TOPIC = "0x9b1bfa7fa9ee420a16e124f794c35ac9f90472acc99140eb2f6447c714cad8eb"

SEED_BORROWERS = [
    (COMET_USDC, "0x677313262fc22aaaccadab9a0f69240ef0969990"),
    (COMET_USDC, "0xca760aeef32c7f21ee398ab4aae595e041df2e74"),
    (COMET_USDC, "0x70fc1ad83afc32d20670fa96d39527e041df2e74"),
    (COMET_USDC, "0xd92aeb2c9dc7d959db4bc38676b38ec7c7136a1f"),
    (COMET_USDC, "0xe0a611b8fc2d873f6b271cb1de07c0c9eaae509b"),
    (COMET_USDC, "0x56df226cf336d687acc2c8e2e01ccdba5620d627"),
    (COMET_USDC, "0xbb8fb21289125c39b94bde7215bac35494fbfa57"),
    (COMET_WETH, "0xb7af31f78c5c0a2eaff7d7fc317c80fd1988265a"),
]


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


def main():
    REPORTS.mkdir(parents=True, exist_ok=True)
    head_r = rpc({"jsonrpc": "2.0", "id": 1, "method": "eth_blockNumber", "params": []})
    if not head_r or "result" not in head_r:
        return 0
    head = int(head_r["result"], 16)
    cl_r = rpc({"jsonrpc": "2.0", "id": 1, "method": "eth_call", "params": [{"to": "0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612", "data": "0x50d25bcd"}, "latest"]})
    eth_usd = int(cl_r["result"], 16) / 1e8 if (cl_r and "result" in cl_r) else 2310.0

    pairs = set((m.lower(), u.lower()) for m, u in SEED_BORROWERS)
    if OUT_FILE.exists():
        try:
            prev = json.loads(OUT_FILE.read_text())
            for x in prev.get("targets", []):
                pairs.add((x["market"].lower(), x["borrower"].lower()))
        except Exception:
            pass

    for mkt in (COMET_USDC, COMET_WETH):
        for k in range(6):
            hi = head - k * 9500
            r = rpc({
                "jsonrpc": "2.0",
                "id": 1,
                "method": "eth_getLogs",
                "params": [{"address": mkt, "fromBlock": hex(hi - 9500), "toBlock": hex(hi), "topics": [WITHDRAW_TOPIC]}],
            })
            for lg in (r or {}).get("result", []) or []:
                if isinstance(lg, dict) and len(lg.get("topics", [])) >= 2:
                    u = "0x" + lg["topics"][1][-40:].lower()
                    pairs.add((mkt.lower(), u))

    pairs_list = sorted(pairs)
    pad = lambda a: a.lower().replace("0x", "").rjust(64, "0")
    calls = []
    for mkt, u in pairs_list:
        calls.append((mkt, "0x374c49b4" + pad(u)))  # borrowBalanceOf(address)
        calls.append((mkt, "0x8e19899e" + pad(u)))  # isLiquidatable(address)

    out_map = {}
    for i in range(0, len(calls), 32):
        chunk = calls[i : i + 32]
        res = rpc([
            {"jsonrpc": "2.0", "id": j, "method": "eth_call", "params": [{"to": t, "data": d}, "latest"]}
            for j, (t, d) in enumerate(chunk)
        ])
        if isinstance(res, list):
            for it in res:
                if isinstance(it, dict) and "id" in it:
                    out_map[i + it["id"]] = it.get("result", "0x0")

    targets = []
    for idx, (mkt, u) in enumerate(pairs_list):
        b_hex = out_map.get(2 * idx, "0x0") or "0x0"
        l_hex = out_map.get(2 * idx + 1, "0x0") or "0x0"
        try:
            b_raw = int(b_hex, 16)
            is_liq = int(l_hex, 16) == 1
        except Exception:
            continue
        is_weth_mkt = mkt.lower() == COMET_WETH.lower()
        debt_usd = (b_raw / 1e18) * eth_usd if is_weth_mkt else (b_raw / 1e6)
        if debt_usd >= 250.0:
            mkt_cs = COMET_WETH if is_weth_mkt else COMET_USDC
            sym = "WETH" if is_weth_mkt else "USDC"
            targets.append({
                "market": mkt_cs,
                "borrower": u,
                "symbol": sym,
                "debt_usd": round(debt_usd, 2),
                "is_liquidatable": is_liq,
                "est_bonus_usd": round(debt_usd * 0.08, 2),
                "label": f"Compound V3 {sym} Comet (${debt_usd:,.0f} {sym} Debt • 8% Zero-Capital Absorb Bonus)",
            })

    targets.sort(key=lambda x: (not x["is_liquidatable"], -x["debt_usd"]))
    doc = {
        "ts": time.time(),
        "pairs_scanned": len(pairs_list),
        "active_borrowers": len(targets),
        "targets": targets[:35],
    }
    OUT_FILE.write_text(json.dumps(doc, indent=2))
    print(json.dumps({k: v for k, v in doc.items() if k != "targets"}))
    return 0


if __name__ == "__main__":
    sys.exit(main())
