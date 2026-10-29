#!/usr/bin/env bash
# ==============================================================================
# ArbFlashEngine v6.1 — 2-Hour Zero-Cost Diagnostic & Live Scanner Launcher
# Runs:
#   1. Live On-Chain Arbitrum One Aave V3 Borrower Watchlist Indexer
#   2. Local / Codespaces Telemetry Dashboard Server (http://127.0.0.1:8080)
#   3. 2-Hour (7,200s) Keep-Alive Arbitrum One Mainnet Diagnostic Scanner (₹0 Invested)
# ==============================================================================
set -u

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$BASE_DIR" || exit 1

DURATION_SECONDS="${DURATION_SECONDS:-7200}"
INTERVAL_SECONDS="${INTERVAL_SECONDS:-2.0}"

echo "[LAUNCH] Step 1/3: Indexing real near-liquidation Aave V3 borrowers on Arbitrum One..."
./scripts/network_guard.sh python3 engine/aave_liquidation_indexer.py

echo "[LAUNCH] Step 2/3: Starting Telemetry & Proof Dashboard on http://127.0.0.1:8080..."
pkill -f "dashboard/server.py" 2>/dev/null || true
nohup python3 dashboard/server.py > reports/dashboard_server.log 2>&1 &

echo "[LAUNCH] Step 3/3: Starting ${DURATION_SECONDS}s (2-Hour) Keep-Alive Arbitrum One Diagnostic Scanner..."
if [ "${LIVE_BROADCAST:-0}" = "1" ]; then
  ./scripts/network_guard.sh python3 engine/live_rpc_scanner.py --live --duration-seconds "${DURATION_SECONDS}" --interval "${INTERVAL_SECONDS}"
else
  ./scripts/network_guard.sh python3 engine/live_rpc_scanner.py --dry-run --duration-seconds "${DURATION_SECONDS}" --interval "${INTERVAL_SECONDS}"
fi
