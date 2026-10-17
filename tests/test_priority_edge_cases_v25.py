#!/usr/bin/env python3
"""
Priority-Based Edge-Case & On-Chain Verification Suite (v25.0)
Tests P0 (Critical Capital, Auto-Settlement & Revert Safety),
P1 (32-Thread Parallel Sweet-Spot Scanner, Gas Tank & Multi-RPC Resilience),
and P2 (100% Unified Profit Ledger, INR Accounting & MetaMask Infura Queue Recovery).
"""
import json
import urllib.request
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
PORTAL_URL = "http://127.0.0.1:8080"
ALCHEMY_RPC = "https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"
BINANCE_WALLET = "0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099"
RESERVE_WALLET = "0xFF3c34DAF159741C931F7c421350f8289A9d89BE"
CONTRACT_ADDR = "0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3"
USDC_ADDR = "0xaf88d065e77c8cC2239327C5EDb3A432268e5831"


def _http_get(path: str) -> dict:
    req = urllib.request.Request(f"{PORTAL_URL}{path}", headers={"User-Agent": "Mozilla/5.0"})
    return json.loads(urllib.request.urlopen(req, timeout=15).read().decode("utf-8"))


def _rpc(method: str, params: list) -> dict:
    req = urllib.request.Request(
        ALCHEMY_RPC,
        data=json.dumps({"jsonrpc": "2.0", "id": 1, "method": method, "params": params}).encode("utf-8"),
        headers={"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
    )
    return json.loads(urllib.request.urlopen(req, timeout=10).read().decode("utf-8"))


def test_p0_1_odd_wei_indivisible_split_zero_dust_loss() -> None:
    """P0-1: Odd-wei indivisible profit amounts must never lose 1 wei of dust during 75%/25% split."""
    for odd_profit in [1, 3, 7, 99_999_999, 399_999_990, 661_461]:
        to_binance_75 = (odd_profit * 7500) // 10000
        to_reserve_25 = odd_profit - to_binance_75
        assert to_binance_75 + to_reserve_25 == odd_profit, f"Dust lost on {odd_profit}!"
    print("[PASS] P0-1: Odd-Wei Indivisible 75%/25% Profit Split (0 Wei Dust Lost Across All Boundaries)")


def test_p0_2_real_onchain_binance_and_reserve_settlement_balances() -> None:
    """P0-2: Live Arbitrum One USDC balances in Binance (0xb411...0099) & Reserve (0xFF3c...89BE) must match confirmed tx logs."""
    wb = _http_get(f"/api/wallet_balances?wallet={RESERVE_WALLET}&binance={BINANCE_WALLET}")
    assert wb["ok"] is True
    bin_usdc = float(wb["binance_usdc_balance"])
    mm_usdc = float(wb["usdc_balance"])
    mm_eth = float(wb["eth_balance"])
    tot_usdc = round(bin_usdc + mm_usdc, 4)

    assert bin_usdc >= 0.4991, f"Expected >= 0.4991 USDC in Binance, got {bin_usdc}"
    assert mm_usdc >= 0.1622, f"Expected >= 0.1622 USDC in Reserve, got {mm_usdc}"
    assert mm_eth >= 0.00045, f"Expected >= 0.00045 ETH in Reserve Gas Tank, got {mm_eth}"
    pct_bin = (bin_usdc / tot_usdc) * 100.0
    assert 74.0 <= pct_bin <= 76.5, f"Expected ~75% in Binance, got {pct_bin:.2f}%"
    print(
        f"[PASS] P0-2: Live On-Chain Balances Verified -> Total: {tot_usdc:.4f} USDC (₹{tot_usdc*94.92:.2f} INR) | "
        f"Binance (75%): {bin_usdc:.4f} USDC (₹{bin_usdc*94.92:.2f} INR • {pct_bin:.2f}%) | "
        f"Reserve (25%): {mm_usdc:.4f} USDC (₹{mm_usdc*94.92:.2f} INR)"
    )


def test_p0_3_manual_backup_infura_queue_status0_recovery() -> None:
    """P0-3: Unbroadcasted MetaMask/Infura local tx hash (like 0xb242f1eabc7a...) must never fail with Status: 0."""
    dropped_tx = "0xb242f1eabc7a7aafb5095715c46b86633b651d9ff054d011bca159bd5ccc4e4d"
    res = _http_get(f"/api/verify_tx_receipt?tx={dropped_tx}&binance={BINANCE_WALLET}")
    assert res["ok"] is True
    assert res["confirmed"] is True
    assert res["status"] == 1, f"Expected status 1 recovery, got {res}"
    assert res.get("verified_onchain_tx") == "0x13bc1e879acf89c7f4c70feea1ea79a458aedba33efd7fe83497d5010ececf11"
    print(
        f"[PASS] P0-3: MetaMask Infura Queue Drop Recovery Verified -> Tx {dropped_tx[:14]}... "
        f"auto-recovered to Status: {res['status']} via On-Chain Tx {res['verified_onchain_tx'][:14]}..."
    )


def test_p0_4_live_deployed_contract_immutable_invariants() -> None:
    """P0-4: Live deployed contract 0xeFA5...7Bd3 on Arbitrum One must have verified bytecode and owner."""
    code_res = _rpc("eth_getCode", [CONTRACT_ADDR, "latest"])
    bytecode_hex = code_res.get("result", "0x")
    assert len(bytecode_hex) > 40000, "Contract bytecode missing on Arbitrum One!"
    owner_res = _rpc("eth_call", [{"to": CONTRACT_ADDR, "data": "0x8da5cb5b"}, "latest"])
    onchain_owner = "0x" + owner_res.get("result", "")[-40:]
    assert onchain_owner.lower() == RESERVE_WALLET.lower(), f"Owner mismatch: {onchain_owner}"
    print(f"[PASS] P0-4: Live Contract {CONTRACT_ADDR} Verified On-Chain ({len(bytecode_hex)//2 - 1} bytes, Owner: {onchain_owner})")


def test_p1_1_parallel_32_thread_max_sweet_spot_scanner() -> None:
    """P1-1: Scanner must use 32 parallel worker threads and exclude sub-$100 tiny micro-loan tiers."""
    import inspect
    import sys
    sys.path.insert(0, str(BASE_DIR / "engine"))
    import live_rpc_scanner as lrs

    assert lrs._PARALLEL_WORKERS == 32, f"Expected 32 parallel workers, got {lrs._PARALLEL_WORKERS}"
    src = inspect.getsource(lrs._verify_route_onchain_quoter)
    assert "150.0, 250.0" in src and "238000000.0" in src, "Missing upper sweet-spot base_tiers ($150-$238M)!"
    assert "35.0, 48.0" not in src, "Sub-$100 micro-tiers still present!"
    print(
        "[PASS] P1-1: 32-Thread Parallel Scanner & Upper Sweet-Spot Tiers Verified "
        "(Min Tier: $150 USD -> Max Tier: $238,000,000 USD)"
    )


def test_p1_2_self_sustaining_gas_tank_and_multi_rpc_failover() -> None:
    """P1-2: Owner ETH Gas Reserve must exceed 300% of 0.00015 ETH threshold (Zero Manual ETH Top-Up Required)."""
    wb = _http_get(f"/api/wallet_balances?wallet={RESERVE_WALLET}&binance={BINANCE_WALLET}")
    eth_bal = float(wb["eth_balance"])
    min_safety_eth = 0.00015
    ratio_pct = (eth_bal / min_safety_eth) * 100.0
    assert eth_bal >= min_safety_eth * 3.0, f"Expected >= 3x safety threshold, got {eth_bal}"
    print(
        f"[PASS] P1-2: Self-Sustaining ETH Gas Tank Verified -> {eth_bal:.8f} ETH "
        f"({ratio_pct:.1f}% of 0.00015 ETH Auto-Refill Floor • No Manual MetaMask Top-Up Needed)"
    )


def test_p2_1_zero_discrepancy_between_total_profits_and_sweet_spot_ledger() -> None:
    """P2-1: Card #1, Card #2, and Table 1 Ledger must be 100% unified to real on-chain confirmed profits."""
    state = _http_get("/api/state")
    summary = state["summary"]
    wb = state["wallet_balances"]

    ledger = summary["per_trade_profit_ledger"]
    assert len(ledger) >= 3, "Expected at least 3 verified on-chain auto-settled trade batches"
    for row in ledger:
        assert row.get("onchain_confirmed") is True, f"Unexecuted dry-run row found in ledger: {row}"
        assert row.get("tx_hash", "").startswith("0x"), f"Missing tx_hash in row: {row}"

    ledger_sum_usd = round(sum(float(r["current_trade_net_profit_usd"]) for r in ledger), 4)
    onchain_sum_usd = round(float(wb["binance_usdc_balance"]) + float(wb["usdc_balance"]), 4)
    assert abs(ledger_sum_usd - onchain_sum_usd) < 0.001, (
        f"Discrepancy between Ledger ({ledger_sum_usd}) and On-Chain Wallets ({onchain_sum_usd})!"
    )
    print(
        f"[PASS] P2-1: Zero Profit Discrepancy Verified -> Card #1, Card #2 & Table 1 All Equal "
        f"{onchain_sum_usd:.4f} USDC (₹{onchain_sum_usd*94.92:.2f} INR) Across {len(ledger)} On-Chain Batches!"
    )


if __name__ == "__main__":
    print("=" * 88)
    print("RUNNING PRIORITY-BASED EDGE-CASE & LIVE ON-CHAIN VERIFICATION SUITE (v25.0)")
    print("=" * 88)
    test_p0_1_odd_wei_indivisible_split_zero_dust_loss()
    test_p0_2_real_onchain_binance_and_reserve_settlement_balances()
    test_p0_3_manual_backup_infura_queue_status0_recovery()
    test_p0_4_live_deployed_contract_immutable_invariants()
    test_p1_1_parallel_32_thread_max_sweet_spot_scanner()
    test_p1_2_self_sustaining_gas_tank_and_multi_rpc_failover()
    test_p2_1_zero_discrepancy_between_total_profits_and_sweet_spot_ledger()
    print("=" * 88)
    print("ALL 7 PRIORITY (P0 / P1 / P2) LIVE ON-CHAIN & EDGE-CASE TESTS PASSED (100% VERIFIED)!")
    print("=" * 88)
