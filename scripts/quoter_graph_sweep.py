#!/usr/bin/env python3
"""
Full Arbitrum One Real QuoterV2 + AlgebraQuoter Graph Sweep (2-Hop Spatial & 3-Hop Triangular)
Queries exact on-chain swap output (including fees + concentrated-liquidity tick crossings)
across all liquid pools on Uniswap V3, PancakeSwap V3, and Camelot V3 Algebra.
"""

import sys
from pathlib import Path

sys.path.insert(0, str(Path(__file__).resolve().parent.parent / "engine"))
from live_rpc_scanner import (
    GLOBAL_RPC_POOL,
    UNIV3_QUOTER_V2,
    PCSV3_QUOTER_V2,
    CAMV3_QUOTER,
    _encode_quoter_call,
)

UNIV3_FACTORY = "0x1F98431c8aD98523631AE4a59f267346ea31F984"
PCSV3_FACTORY = "0x0BFbCF9fa4f9C56B0F40a671Ad40E0805A091865"
CAMV3_FACTORY = "0x1a3c9B1d2F0529D97f2afC5136Cc23e58f1FD35B"

TOKENS = {
    "WETH":   ("0x82aF49447D8a07e3bd95BD0d56f35241523fBab1", 18, 2372.0),
    "USDC":   ("0xaf88d065e77c8cC2239327C5EDb3A432268e5831", 6,  1.0),
    "USDT":   ("0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9", 6,  1.0),
    "USDC.e": ("0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8", 6,  1.0),
    "WBTC":   ("0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f", 8,  78500.0),
    "ARB":    ("0x912CE59144191C1204E64559FE8253a0e49E6548", 18, 0.174),
    "wstETH": ("0x5979D7b546E38E414F7E9822514be443A4800529", 18, 2910.0),
    "weETH":  ("0x35751007a407ca6FEFfE80b3cB397736D2cf4dbe", 18, 2595.0),
    "LINK":   ("0xf97f4df75117a78c1A5a0DBb814Af92458539FB4", 18, 14.0),
    "GMX":    ("0xfc5A1A6EB076a2C7aD06eD22C90d7E710E35ad0a", 18, 16.0),
    "PENDLE": ("0x0c880f6761F1af8d9Aa9C466984b80DAb9a8c9e8", 18, 3.2),
    "UNI":    ("0xFa7F8980b0f1E64A2062791cc3b0871572f1F7f0", 18, 6.5),
    "AAVE":   ("0xba5DdD1f9d7F570dc94a51479a000E3BCE967196", 18, 155.0),
}

PAIRS = [
    ("WETH", "USDC"), ("WETH", "USDT"), ("WETH", "USDC.e"),
    ("USDC", "USDT"), ("USDC", "USDC.e"), ("USDT", "USDC.e"),
    ("WBTC", "WETH"), ("WBTC", "USDC"), ("WBTC", "USDT"),
    ("ARB",  "WETH"), ("ARB",  "USDC"), ("ARB",  "USDT"),
    ("wstETH", "WETH"), ("wstETH", "USDC"),
    ("weETH",  "WETH"),
    ("LINK",   "WETH"), ("LINK", "USDC"),
    ("GMX",    "WETH"), ("GMX",  "USDC"),
    ("PENDLE", "WETH"), ("PENDLE", "USDC"),
    ("UNI",    "WETH"),
    ("AAVE",   "WETH"),
]


def pad_addr(a: str) -> str:
    return a[2:].lower().rjust(64, "0")


def pad_u24(v: int) -> str:
    return hex(v)[2:].rjust(64, "0")


def chunked_batch(calls, chunk_size=25):
    out = []
    for i in range(0, len(calls), chunk_size):
        chunk = calls[i : i + chunk_size]
        b = GLOBAL_RPC_POOL.batch_call(chunk, timeout=4.0)
        if b["ok"]:
            out.extend(b["results"])
        else:
            for c in chunk:
                r = GLOBAL_RPC_POOL.call(c["method"], c["params"], timeout=2.5)
                out.append(r.get("result") if r["ok"] else None)
    return out


def main():
    f_calls = []
    f_meta = []
    for sA, sB in PAIRS:
        aA = TOKENS[sA][0]
        aB = TOKENS[sB][0]
        for fee in (100, 500, 3000):
            f_calls.append({"method": "eth_call", "params": [{"to": UNIV3_FACTORY, "data": "0x1698ee82" + pad_addr(aA) + pad_addr(aB) + pad_u24(fee)}, "latest"]})
            f_meta.append((sA, sB, "UNIV3", fee, f"UniV3_{fee/100:.2f}bps"))
        for fee in (100, 500, 2500):
            f_calls.append({"method": "eth_call", "params": [{"to": PCSV3_FACTORY, "data": "0x1698ee82" + pad_addr(aA) + pad_addr(aB) + pad_u24(fee)}, "latest"]})
            f_meta.append((sA, sB, "PCSV3", fee, f"PcsV3_{fee/100:.2f}bps"))
        f_calls.append({"method": "eth_call", "params": [{"to": CAMV3_FACTORY, "data": "0xd9a641e1" + pad_addr(aA) + pad_addr(aB)}, "latest"]})
        f_meta.append((sA, sB, "CAMV3", 0, "CamV3"))

    f_res = chunked_batch(f_calls)
    pools = []
    for meta, r in zip(f_meta, f_res):
        if isinstance(r, str) and len(r) >= 66 and int(r[-40:], 16) != 0:
            pools.append(("0x" + r[-40:], *meta))

    # Filter by real ERC-20 balanceOf >= $1,000 on both sides
    bal_calls = []
    for p_addr, sA, sB, _, _, _ in pools:
        bal_calls.append({"method": "eth_call", "params": [{"to": TOKENS[sA][0], "data": "0x70a08231" + pad_addr(p_addr)}, "latest"]})
        bal_calls.append({"method": "eth_call", "params": [{"to": TOKENS[sB][0], "data": "0x70a08231" + pad_addr(p_addr)}, "latest"]})
    bal_res = chunked_batch(bal_calls)

    liquid_pools = []
    for idx, p in enumerate(pools):
        p_addr, sA, sB, d_type, fee_raw, label = p
        bA_hex = bal_res[idx * 2]
        bB_hex = bal_res[idx * 2 + 1]
        if not isinstance(bA_hex, str) or len(bA_hex) < 66 or not isinstance(bB_hex, str) or len(bB_hex) < 66:
            continue
        bA_usd = (int(bA_hex, 16) / (10 ** TOKENS[sA][1])) * TOKENS[sA][2]
        bB_usd = (int(bB_hex, 16) / (10 ** TOKENS[sB][1])) * TOKENS[sB][2]
        if bA_usd >= 1000.0 and bB_usd >= 1000.0:
            liquid_pools.append((p_addr, sA, sB, d_type, fee_raw, label, min(bA_usd, bB_usd)))

    print(f"Discovered {len(liquid_pools)} liquid pools (>= $1,000 real reserves on both sides).")

    # Now quote a real $50 USD swap in BOTH directions on every liquid pool via QuoterV2 / AlgebraQuoter!
    TEST_USD = 50.0
    q_calls = []
    q_meta = []
    for p_addr, sA, sB, d_type, fee_raw, label, min_tvl in liquid_pools:
        aA, decA, pxA = TOKENS[sA]
        aB, decB, pxB = TOKENS[sB]
        inA_wei = int((TEST_USD / pxA) * (10 ** decA))
        inB_wei = int((TEST_USD / pxB) * (10 ** decB))
        to1, data1 = _encode_quoter_call(d_type, aA, aB, inA_wei, fee_raw)
        to2, data2 = _encode_quoter_call(d_type, aB, aA, inB_wei, fee_raw)
        q_calls.append({"method": "eth_call", "params": [{"to": to1, "data": data1}, "latest"]})
        q_meta.append((sA, sB, d_type, fee_raw, label, inA_wei, decA, decB, min_tvl, p_addr))
        q_calls.append({"method": "eth_call", "params": [{"to": to2, "data": data2}, "latest"]})
        q_meta.append((sB, sA, d_type, fee_raw, label, inB_wei, decB, decA, min_tvl, p_addr))

    q_res = chunked_batch(q_calls, chunk_size=20)
    edges = []
    for meta, r in zip(q_meta, q_res):
        if isinstance(r, str) and len(r) >= 66:
            s_in, s_out, d_type, fee_raw, label, in_wei, dec_in, dec_out, min_tvl, p_addr = meta
            out_wei = int(r[2:66], 16)
            if out_wei > 0:
                if d_type == "CAMV3" and len(r) >= 130:
                    cam_fee_bps = int(r[66:130], 16) / 100.0
                    label = f"CamV3_{cam_fee_bps:.2f}bps"
                in_human = in_wei / (10 ** dec_in)
                out_human = out_wei / (10 ** dec_out)
                eff_rate = out_human / in_human  # Exact post-fee, post-slippage human rate for $50!
                edges.append((s_in, s_out, eff_rate, d_type, fee_raw, label, min_tvl, p_addr))

    # Find best 2-hop and 3-hop cycles starting from Flash-Loanable assets (WETH, USDC, USDT, USDC.e, WBTC)
    cycles = []
    for e1 in edges:
        if e1[0] not in ("WETH", "USDC", "USDT", "USDC.e", "WBTC"):
            continue
        for e2 in edges:
            if e2[0] != e1[1]:
                continue
            if e2[1] == e1[0] and e2[7] != e1[7]:
                mult = e1[2] * e2[2]
                gross_usd = (mult - 1.0) * TEST_USD
                net_bps = (mult - 1.0) * 10000.0
                cycles.append((gross_usd, net_bps, "2-HOP", f"{e1[0]}->{e1[1]}->{e2[1]}", f"{e1[5]} -> {e2[5]}", min(e1[6], e2[6])))
            for e3 in edges:
                if e3[0] == e2[1] and e3[1] == e1[0]:
                    mult = e1[2] * e2[2] * e3[2]
                    gross_usd = (mult - 1.0) * TEST_USD
                    net_bps = (mult - 1.0) * 10000.0
                    cycles.append((gross_usd, net_bps, "3-HOP", f"{e1[0]}->{e1[1]}->{e2[1]}->{e3[1]}", f"{e1[5]} -> {e2[5]} -> {e3[5]}", min(e1[6], e2[6], e3[6])))

    cycles.sort(key=lambda x: -x[0])
    print("=====================================================================================================================")
    print("TOP 20 REAL QUOTERV2 / ALGEBRAQUOTER VERIFIED 2-HOP & 3-HOP ROUTES ($50 FLASH LOAN, POST-FEE & POST-TICK-SLIPPAGE)")
    print("=====================================================================================================================")
    for gross_usd, net_bps, kind, path_s, dex_s, min_tvl in cycles[:20]:
        print(f"{kind:5s} | {path_s:26s} | {dex_s:46s} | MinTVL=${min_tvl:9,.0f} | NetBps={net_bps:+6.2f}bps | Gross=${gross_usd:+.4f}")


if __name__ == "__main__":
    main()
