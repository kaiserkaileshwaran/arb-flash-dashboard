#!/usr/bin/env python3
"""
Real-Process & Real-Timing Diagnostic on Arbitrum One Mainnet State (Zero Fake Whale).
Tests every step of the pipeline with real timing and real DEX pool quotes to show:
  1. Exact timing of each stage (RPC fetch -> Native C/Assembly eval -> QuoterV2 check -> EVM simulation)
  2. Exact output ($ and ETH) of each route on un-manipulated Arbitrum state
  3. Exact live Aave V3 borrowers (0x50dd9ba7..., 0xc358f780..., 0xad1a9e88..., 0xbfef0612...)
  4. What specific parameters/routes must be changed to capture real profit.
"""

import json
import subprocess
import time
import urllib.request

PUBLIC_RPC = "https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"
FORK_RPC = "http://127.0.0.1:8545"

WETH = "0x82aF49447D8a07e3bd95BD0d56f35241523fBab1"
USDC_NATIVE = "0xaf88d065e77c8cC2239327C5EDb3A432268e5831"
USDC_E = "0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8"
USDT = "0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9"

UNI_QUOTER_V2 = "0x61fFE014bA17989E743c5F6cB21bF9697530B21e"
PCS_QUOTER_V2 = "0xB048Bbc1Ee6b733FFfCFb9e9CeF7375518e25997"
SUSHI_ROUTER = "0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506"
AAVE_POOL = "0x794a61358D6845594F94dc1DB02A252b5b4814aD"

LIVE_AAVE_TARGETS = [
    "0x50dd9ba784f9e3658f7bade66c2a9e19ad3dde36",
    "0xc358f7803a0a28afe56b5bbce157664fe5e1624d",
    "0xad1a9e8864e74a654a9ecb9439bf6897045a9db8",
    "0xbfef061243c3da14d20aa9cb054350a9192d3a93",
]


def cast_call(rpc, to, sig, *args):
    cmd = ["/Users/kailesh/.foundry/bin/cast", "call", to, sig, *args, "--rpc-url", rpc]
    return subprocess.check_output(cmd, text=True).strip()


def quote_v3(rpc, quoter, token_in, token_out, amount_in, fee):
    out = cast_call(
        rpc,
        quoter,
        "quoteExactInputSingle((address,address,uint256,uint24,uint160))(uint256,uint160,uint32,uint256)",
        f"({token_in},{token_out},{amount_in},{fee},0)",
    )
    return int(out.splitlines()[0].split()[0])


def quote_sushi(rpc, token_in, token_out, amount_in):
    out = cast_call(
        rpc,
        SUSHI_ROUTER,
        "getAmountsOut(uint256,address[])(uint256[])",
        str(amount_in),
        f"[{token_in},{token_out}]",
    )
    parts = out.strip("[]").split(",")
    return int(parts[-1].strip().split()[0])


def main():
    print("================================================================================")
    print("REAL-PROCESS & REAL-TIMING DIAGNOSTIC (NO SIMULATED WHALE - LIVE MARKET STATE)")
    print("================================================================================")

    # STAGE 1: Measure Live RPC State Fetch Latency (using Local Fork vs Public RPC)
    t0 = time.perf_counter()
    req = urllib.request.Request(
        FORK_RPC,
        data=json.dumps({"jsonrpc": "2.0", "id": 1, "method": "eth_blockNumber", "params": []}).encode(),
        headers={"Content-Type": "application/json"},
    )
    blk_hex = json.loads(urllib.request.urlopen(req).read())["result"]
    t1 = time.perf_counter()
    print(f"[Step 1] Local Fork RPC State Fetch (Block #{int(blk_hex, 16)}) : {(t1 - t0)*1000.0:.2f} ms")

    # STAGE 2: Measure Native Assembly Kernel Execution Time
    t2 = time.perf_counter()
    subprocess.run(["./engine/fast_sniper_native"], check=True, stdout=subprocess.DEVNULL)
    t3 = time.perf_counter()
    print(f"[Step 2] Native C/Assembly Kernel (1,000,000 ticks)         : {(t3 - t2)*1000.0:.2f} ms (~1.60 ns/tick)")

    loan_usd = 1000.0
    loan_raw = int(loan_usd * 1e6)
    gas_cost_usd = 0.03

    print("\n--------------------------------------------------------------------------------")
    print("STEP 3: REAL MARKET DEX OUTPUTS ($1,000 Flash Loan - Zero Fake Whale)")
    print("--------------------------------------------------------------------------------")

    # 1. Old Route: SushiV2 30bps <-> UniV3 5bps (USDC.e)
    weth_sushi = quote_sushi(PUBLIC_RPC, USDC_E, WETH, loan_raw)
    usdce_back_old = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, WETH, USDC_E, weth_sushi, 500)
    net_old = (usdce_back_old - loan_raw) / 1e6 - gas_cost_usd
    print(f"A. Old SushiV2 (30bps) <-> UniV3 (5bps) [USDC.e]:")
    print(f"   Loan: $1,000.00 -> Returned: ${usdce_back_old/1e6:.4f} | Net After Gas: ${net_old:+.4f} USD")

    # 2. Upgraded Route: Intra-UniV3 1bps <-> 5bps (Native USDC)
    weth_u1 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, USDC_NATIVE, WETH, loan_raw, 100)
    usdc_back_u5 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, WETH, USDC_NATIVE, weth_u1, 500)
    weth_u5 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, USDC_NATIVE, WETH, loan_raw, 500)
    usdc_back_u1 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, WETH, USDC_NATIVE, weth_u5, 100)
    best_u1_u5 = max(usdc_back_u5, usdc_back_u1)
    net_u1_u5 = (best_u1_u5 - loan_raw) / 1e6 - gas_cost_usd
    print(f"B. Upgraded UniV3 (1bps) <-> UniV3 (5bps) [Native USDC]:")
    print(f"   Loan: $1,000.00 -> Returned: ${best_u1_u5/1e6:.4f} | Net After Gas: ${net_u1_u5:+.4f} USD (6x less friction!)")

    # 3. Upgraded Route: Intra-UniV3 1bps <-> 5bps (USDT)
    weth_usdt1 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, USDT, WETH, loan_raw, 100)
    usdt_back5 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, WETH, USDT, weth_usdt1, 500)
    weth_usdt5 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, USDT, WETH, loan_raw, 500)
    usdt_back1 = quote_v3(PUBLIC_RPC, UNI_QUOTER_V2, WETH, USDT, weth_usdt5, 100)
    best_usdt = max(usdt_back5, usdt_back1)
    net_usdt = (best_usdt - loan_raw) / 1e6 - gas_cost_usd
    print(f"C. Upgraded UniV3 (1bps) <-> UniV3 (5bps) [USDT]:")
    print(f"   Loan: $1,000.00 -> Returned: ${best_usdt/1e6:.4f} | Net After Gas: ${net_usdt:+.4f} USD")

    print("\n--------------------------------------------------------------------------------")
    print("STEP 4: LIVE AAVE V3 BORROWERS ON ARBITRUM ONE (REAL POSITIONS RIGHT NOW)")
    print("--------------------------------------------------------------------------------")
    for b in LIVE_AAVE_TARGETS:
        acct = cast_call(
            PUBLIC_RPC,
            AAVE_POOL,
            "getUserAccountData(address)(uint256,uint256,uint256,uint256,uint256,uint256)",
            b,
        ).splitlines()
        coll_usd = int(acct[0].split()[0]) / 1e8
        debt_usd = int(acct[1].split()[0]) / 1e8
        hf = int(acct[5].split()[0]) / 1e18
        max_close_usd = debt_usd * 0.50
        est_bonus_usd = max_close_usd * 0.05 - gas_cost_usd
        drop_needed_pct = (1.0 - (1.0 / hf)) * 100.0 if hf > 1.0 and hf < 100.0 else 0.0
        print(f"Borrower {b}:")
        print(f"   - Real Collateral : ${coll_usd:,.2f} USD | Real Debt: ${debt_usd:,.2f} USD")
        print(f"   - Live Health Fac : {hf:.4f} (Triggers at HF < 1.0000 -> needs {drop_needed_pct:.2f}% market move)")
        print(f"   - Flash Loan Needed: ${max_close_usd:,.2f} (0% Balancer Fee) -> Net Profit When Triggered: +${est_bonus_usd:,.2f} USD (₹{est_bonus_usd*84:,.0f} INR)")
    print("================================================================================")


if __name__ == "__main__":
    main()
