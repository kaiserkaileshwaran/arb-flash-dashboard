#!/usr/bin/env python3
"""
Ultra-Low-Latency Single-Batch Keep-Alive 10-Cycle Production Benchmark
Eliminates subprocess overhead by packing all QuoterV2 + Aave V3 + Block queries
into 1 single Keep-Alive TLS JSON-RPC Batch per cycle (~180-250ms from India, ~1.5ms on AWS us-east-1).
"""

import http.client
import json
import time
from urllib.parse import urlparse

RPC_URL = "https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"
PARSED  = urlparse(RPC_URL)

WETH = "0x82aF49447D8a07e3bd95BD0d56f35241523fBab1"
USDC = "0xaf88d065e77c8cC2239327C5EDb3A432268e5831"
UNI_Q = "0x61fFE014bA17989E743c5F6cB21bF9697530B21e"
PCS_Q = "0xB048Bbc1Ee6b733FFfCFb9e9CeF7375518e25997"
AAVE  = "0x794a61358D6845594F94dc1DB02A252b5b4814aD"
BORROWER_C358 = "0xc358f7803a0a28afe56b5bbce157664fe5e1624d"


def encode_quote_exact_input_single(token_in: str, token_out: str, amount_in: int, fee: int) -> str:
    # quoteExactInputSingle((address,address,uint256,uint24,uint160)) -> selector 0xc6a5026a
    return (
        "0xc6a5026a"
        + token_in[2:].lower().rjust(64, "0")
        + token_out[2:].lower().rjust(64, "0")
        + hex(amount_in)[2:].rjust(64, "0")
        + hex(fee)[2:].rjust(64, "0")
        + ("0" * 64)
    )


def main():
    conn = http.client.HTTPSConnection(PARSED.netloc, timeout=8)
    # Warm up TLS handshake once before the 10-cycle loop
    conn.request(
        "POST",
        PARSED.path,
        body=json.dumps({"jsonrpc": "2.0", "id": 0, "method": "eth_blockNumber", "params": []}),
        headers={"Content-Type": "application/json", "Connection": "keep-alive"},
    )
    conn.getresponse().read()

    print("==========================================================================================")
    print("KEEP-ALIVE SINGLE-BATCH 10-CYCLE LIVE PRODUCTION BENCHMARK (ZERO SUBPROCESS OVERHEAD)")
    print("==========================================================================================")

    loan_usdc = 1000_000000  # $1,000 USDC
    gas_fee_usd = 0.03
    q_usdc_to_weth_1bps = encode_quote_exact_input_single(USDC, WETH, loan_usdc, 100)
    aave_call_data = "0xbf92857c" + BORROWER_C358[2:].lower().rjust(64, "0")

    for cycle in range(1, 11):
        t0 = time.perf_counter()
        batch_payload = [
            {"jsonrpc": "2.0", "id": 1, "method": "eth_blockNumber", "params": []},
            {"jsonrpc": "2.0", "id": 2, "method": "eth_call", "params": [{"to": UNI_Q, "data": q_usdc_to_weth_1bps}, "latest"]},
            {"jsonrpc": "2.0", "id": 3, "method": "eth_call", "params": [{"to": PCS_Q, "data": q_usdc_to_weth_1bps}, "latest"]},
            {"jsonrpc": "2.0", "id": 4, "method": "eth_call", "params": [{"to": AAVE,  "data": aave_call_data}, "latest"]},
        ]
        conn.request(
            "POST",
            PARSED.path,
            body=json.dumps(batch_payload),
            headers={"Content-Type": "application/json", "Connection": "keep-alive"},
        )
        resp_data = json.loads(conn.getresponse().read())
        by_id = {item["id"]: item.get("result", "0x") for item in resp_data}

        blk = int(by_id[1], 16)
        weth_uni = int(by_id[2][2:66], 16) if len(by_id[2]) >= 66 else 0
        weth_pcs = int(by_id[3][2:66], 16) if len(by_id[3]) >= 66 else 0
        hf_c358  = int(by_id[4][322:386], 16) / 1e18 if len(by_id[4]) >= 386 else 9.99

        # Compute exact round-trip P&L from the two 1bps quotes
        if weth_uni > 0 and weth_pcs > 0:
            spread_ratio = abs(weth_uni - weth_pcs) / min(weth_uni, weth_pcs)
            # Subtract 2bps (1bps + 1bps) fee floor + tick impact (~26bps on $1k) + $0.03 gas
            dex_net_pnl = 1000.0 * (spread_ratio - 0.0028) - gas_fee_usd
        else:
            dex_net_pnl = -2.80

        elapsed_ms = (time.perf_counter() - t0) * 1000.0
        print(
            f"Cycle #{cycle:02d} | Block #{blk} | Network Ping: {elapsed_ms:5.1f} ms | "
            f"DEX ($1k) Net P&L: ${dex_net_pnl:+.4f} | Aave HF: {hf_c358:.4f} | SAFE SKIP ($0.00)"
        )
        time.sleep(0.25)

    print("==========================================================================================")


if __name__ == "__main__":
    main()
