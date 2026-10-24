#!/usr/bin/env python3
"""
Idea 8 (Cycle 3): Expanded Low-Competition Lending Indexer
Scans across:
  1. Compound V3 USDC Comet  (0x9c4ec768c28520B50860ea7a15bd7213a9fF58bf) - Zero-Capital absorb() (8% Bonus)
  2. Compound V3 USDC.e Comet(0xA5EDBDD9646f8dFF606d7448e414884C7d905dCA) - Zero-Capital absorb() (8% Bonus)
  3. Compound V3 WETH Comet  (0x6f7D514bbD4aFf3BcD1140B7344b32f063dEe486) - Zero-Capital absorb() (8% Bonus)
  4. Compound V3 USDT Comet  (0xd98Be00b5D27fc98112BdE293e487f8D4cA57d07) - Zero-Capital absorb() (8% Bonus)
  5. Radiant V2 Lending Pool (0xF4B1486DD74D07706052A33d31d7c0AAFD0659E1) - 10% to 15% Liquidation Bonus (95% Lower Bot Competition)
Writes reports/comet_watch_extra.json with active borrowers sorted by liquidation proximity and debt size.
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

COMET_USDC   = "0x9c4ec768c28520B50860ea7a15bd7213a9fF58bf"
COMET_USDCE  = "0xA5EDBDD9646f8dFF606d7448e414884C7d905dCA"
COMET_WETH   = "0x6f7D514bbD4aFf3BcD1140B7344b32f063dEe486"
COMET_USDT   = "0xd98Be00b5D27fc98112BdE293e487f8D4cA57d07"
RADIANT_POOL = "0xF4B1486DD74D07706052A33d31d7c0AAFD0659E1"

WITHDRAW_TOPIC = "0x9b1bfa7fa9ee420a16e124f794c35ac9f90472acc99140eb2f6447c714cad8eb"
RADIANT_BORROW_TOPIC = "0xc6a898309e823ee50bac64e45ca8adba6690e99e7841c45d754e2a38e9019d9b"

COMET_META = {
    COMET_USDC.lower():  (COMET_USDC,  "USDC",   6),
    COMET_USDCE.lower(): (COMET_USDCE, "USDC.e", 6),
    COMET_WETH.lower():  (COMET_WETH,  "WETH",   18),
    COMET_USDT.lower():  (COMET_USDT,  "USDT",   6),
}

SEED_BORROWERS = [
    (COMET_USDC,  "0x677313262fc22aaaccadab9a0f69240ef0969990"),
    (COMET_USDC,  "0xca760aeef32c7f21ee398ab4aae595e041df2e74"),
    (COMET_USDC,  "0x70fc1ad83afc32d20670fa96d39527e0792512b1"),
    (COMET_USDC,  "0xd92aeb2c9dc7d959db4bc38676b38ec7c7136a1f"),
    (COMET_USDC,  "0xe0a611b8fc2d873f6b271cb1de07c0c9eaae509b"),
    (COMET_USDC,  "0x56df226cf336d687acc2c8e2e01ccdba5620d627"),
    (COMET_USDC,  "0xbb8fb21289125c39b94bde7215bac35494fbfa57"),
    (COMET_WETH,  "0xb7af31f78c5c0a2eaff7d7fc317c80fd1988265a"),
    (COMET_USDCE, "0x489ee077994b6658eafa855c308275ead8097c4a"),
    (COMET_USDT,  "0x270d1c8c0f13ff925f710dff38bf806bdbb4e6b2"),
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
    eth_usd = int(cl_r["result"], 16) / 1e8 if (cl_r and "result" in cl_r) else 2330.0

    pairs = set((m.lower(), u.lower()) for m, u in SEED_BORROWERS)
    radiant_users = set()
    if OUT_FILE.exists():
        try:
            prev = json.loads(OUT_FILE.read_text())
            for x in prev.get("targets", []):
                m_low = x["market"].lower()
                if m_low in COMET_META:
                    pairs.add((m_low, x["borrower"].lower()))
            for rx in prev.get("radiant_targets", []):
                radiant_users.add(rx["borrower"].lower())
        except Exception:
            pass

    # Also seed Radiant V2 & Comet borrowers from Aave V3 borrower cache (cross-protocol leveraged borrowers)
    aave_cache = REPORTS / "aave_all_borrowers_cache.json"
    if aave_cache.exists():
        try:
            ac = json.loads(aave_cache.read_text())
            for u_a in (ac.get("all_users") or ac.get("borrowers") or [])[:150]:
                radiant_users.add(u_a.lower())
                pairs.add((COMET_USDC.lower(), u_a.lower()))
                pairs.add((COMET_USDCE.lower(), u_a.lower()))
                pairs.add((COMET_USDT.lower(), u_a.lower()))
                pairs.add((COMET_WETH.lower(), u_a.lower()))
        except Exception:
            pass

    for mkt in (COMET_USDC, COMET_USDCE, COMET_WETH, COMET_USDT):
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

    for k in range(6):
        hi = head - k * 9500
        r = rpc({
            "jsonrpc": "2.0",
            "id": 1,
            "method": "eth_getLogs",
            "params": [{"address": RADIANT_POOL, "fromBlock": hex(hi - 9500), "toBlock": hex(hi), "topics": [RADIANT_BORROW_TOPIC]}],
        })
        for lg in (r or {}).get("result", []) or []:
            if isinstance(lg, dict) and len(lg.get("topics", [])) >= 3:
                u = "0x" + lg["topics"][2][-40:].lower()
                radiant_users.add(u)

    pairs_list = sorted(pairs)
    pad = lambda a: a.lower().replace("0x", "").rjust(64, "0")
    calls = []
    for mkt, u in pairs_list:
        calls.append((mkt, "0x374c49b4" + pad(u)))  # borrowBalanceOf(address)
        calls.append((mkt, "0x8e19899e" + pad(u)))  # isLiquidatable(address)

    out_map = {}
    for i in range(0, len(calls), 40):
        chunk = calls[i : i + 40]
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
        mkt_cs, sym, dec = COMET_META.get(mkt.lower(), (COMET_USDC, "USDC", 6))
        debt_usd = (b_raw / (10 ** dec)) * (eth_usd if dec == 18 else 1.0)
        if debt_usd >= 100.0:
            targets.append({
                "protocol": "COMPOUND_V3_COMET",
                "market": mkt_cs,
                "borrower": u,
                "symbol": sym,
                "debt_usd": round(debt_usd, 2),
                "is_liquidatable": is_liq,
                "est_bonus_usd": round(debt_usd * 0.08, 2),
                "label": f"Compound V3 {sym} Comet (${debt_usd:,.0f} {sym} Debt • 8% Zero-Capital Absorb Bonus)",
            })

    # Scan Radiant V2 borrowers via getUserAccountData(address) (0xbf92857c, base currency USD 1e8)
    rad_list = sorted(radiant_users)
    rad_calls = [(RADIANT_POOL, "0xbf92857c" + pad(u)) for u in rad_list]
    rad_map = {}
    for i in range(0, len(rad_calls), 40):
        chunk = rad_calls[i : i + 40]
        res = rpc([
            {"jsonrpc": "2.0", "id": j, "method": "eth_call", "params": [{"to": t, "data": d}, "latest"]}
            for j, (t, d) in enumerate(chunk)
        ])
        if isinstance(res, list):
            for it in res:
                if isinstance(it, dict) and "id" in it:
                    rad_map[i + it["id"]] = it.get("result", "0x0")

    radiant_targets = []
    for idx, u in enumerate(rad_list):
        h = rad_map.get(idx, "0x0") or "0x0"
        if not isinstance(h, str) or len(h) < 386:
            continue
        try:
            col_usd = int(h[2:66], 16) / 1e8
            debt_usd = int(h[66:130], 16) / 1e8
            hf = int(h[322:386], 16) / 1e18
        except Exception:
            continue
        if debt_usd >= 100.0 and 0.1 < hf < 2.5:
            radiant_targets.append({
                "protocol": "RADIANT_V2",
                "market": RADIANT_POOL,
                "borrower": u,
                "symbol": "USD",
                "collateral_usd": round(col_usd, 2),
                "debt_usd": round(debt_usd, 2),
                "hf": round(hf, 6),
                "is_liquidatable": hf < 1.0,
                "est_bonus_usd": round(debt_usd * 0.5 * 0.12, 2),
                "label": f"Radiant V2 Low-Comp ({u[:10]}... • HF={hf:.4f} • ${debt_usd:,.0f} Debt • 12% Bonus)",
            })

    targets.sort(key=lambda x: (not x["is_liquidatable"], -x["debt_usd"]))
    radiant_targets.sort(key=lambda x: (x["hf"], -x["debt_usd"]))
    doc = {
        "ts": time.time(),
        "pairs_scanned": len(pairs_list) + len(rad_list),
        "active_borrowers": len(targets),
        "radiant_active_borrowers": len(radiant_targets),
        "targets": targets[:40],
        "radiant_targets": radiant_targets[:25],
    }
    OUT_FILE.write_text(json.dumps(doc, indent=2))
    print(json.dumps({k: v for k, v in doc.items() if k not in ("targets", "radiant_targets")}))
    return 0


if __name__ == "__main__":
    sys.exit(main())
