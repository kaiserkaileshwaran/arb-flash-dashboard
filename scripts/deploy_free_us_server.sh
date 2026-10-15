#!/usr/bin/env bash
# ==============================================================================
# 1-Command Free US-East (Virginia / Ashburn) Server Setup & Launcher
# Target Data Center: AWS us-east-1 (N. Virginia) / Oracle us-ashburn-1 / GCP us-east4
# Expected RPC Ping in us-east-1: 0.8 ms - 2.5 ms (vs 80-115 ms from India)
# ==============================================================================
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$PROJECT_DIR"

echo "=============================================================================="
echo " ARBITRUM FLASH ENGINE — US-EAST LOW-LATENCY SERVER SETUP"
echo "=============================================================================="

# 1. Check C compiler and compile Native C/Assembly Sniper Kernel for host CPU
if command -v clang >/dev/null 2>&1; then
    CC_BIN="clang"
elif command -v gcc >/dev/null 2>&1; then
    CC_BIN="gcc"
else
    echo "[*] Installing C compiler..."
    if command -v apt-get >/dev/null 2>&1; then
        sudo apt-get update -y && sudo apt-get install -y build-essential clang python3
    elif command -v yum >/dev/null 2>&1; then
        sudo yum install -y gcc clang python3
    fi
    CC_BIN="gcc"
fi

echo "[1/3] Compiling engine/fast_sniper_native.c with $CC_BIN -O3 -march=native..."
$CC_BIN -O3 -march=native engine/fast_sniper_native.c -o engine/fast_sniper_native
$CC_BIN -O3 -S engine/fast_sniper_native.c -o engine/fast_sniper_native.s

echo "[2/3] Running CPU Assembly Benchmark..."
./engine/fast_sniper_native

echo "[3/3] Running 10-Cycle Keep-Alive Network Ping Benchmark against Arbitrum Mainnet..."
python3 scripts/run_10_live_production_cycles.py

echo "=============================================================================="
echo " To run the 24/7 Passive Keep-Alive Watcher in the background on this US VM:"
echo "   nohup python3 engine/live_rpc_scanner.py > reports/us_server_live.log 2>&1 &"
echo "   tail -f reports/us_server_live.log"
echo "=============================================================================="
