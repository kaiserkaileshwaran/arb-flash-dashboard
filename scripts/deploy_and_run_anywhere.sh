#!/usr/bin/env bash
# ==============================================================================
# Arbitrum One v19.0 Theoretical-Floor Flash-Loan & Liquidation Engine
# Universal 1-Command Instant Cloud / VPS / Codespace Deployment Script
# Zero AWS Verification Wait — Works on:
#   1. GitHub Codespaces US-East (Virginia) [Already Active]
#   2. Hetzner Cloud (us-east Ashburn, VA) / Vultr (IAD) / DigitalOcean (NYC/IAD)
#   3. Railway.app / Fly.io (iad Virginia region) / Render
#   4. Local macOS (ARM64 NEON) or Linux (x86_64 AVX2)
# ==============================================================================
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$ROOT_DIR"

export OWNER_PROFIT_WALLET="${OWNER_PROFIT_WALLET:-0xFF3c34DAF159741C931F7c421350f8289A9d89BE}"
export DEPLOYED_CONTRACT_ADDRESS="${DEPLOYED_CONTRACT_ADDRESS:-0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3}"
export ARB_RPC_URL="${ARB_RPC_URL:-https://arb-mainnet.g.alchemy.com/v2/3626k239ef62i3289d81j1}"
export EXECUTION_MODE="${EXECUTION_MODE:-dry-run}"

echo "======================================================================"
echo " [1/4] Cleaning Old Assembly & Compiling Fresh v19.0 Hardware Kernel"
echo "======================================================================"
rm -f engine/fast_sniper_native.s engine/fast_sniper_aws_x86_64.s engine/libfast_sniper.so engine/libfast_sniper.dylib engine/fast_sniper_native

ARCH="$(uname -m)"
OS="$(uname -s)"

if [[ "$OS" == "Darwin" ]]; then
    clang -O3 -ffast-math -S engine/fast_sniper_native.c -o engine/fast_sniper_native.s
    clang -O3 -ffast-math -shared -fPIC engine/fast_sniper_native.s -o engine/libfast_sniper.dylib
    clang -O3 -ffast-math engine/fast_sniper_native.s -o engine/fast_sniper_native
elif [[ "$ARCH" == "x86_64" ]]; then
    gcc -O3 -mavx2 -mfma -ffast-math -S engine/fast_sniper_native.c -o engine/fast_sniper_aws_x86_64.s
    gcc -O3 -mavx2 -mfma -ffast-math -shared -fPIC engine/fast_sniper_aws_x86_64.s -o engine/libfast_sniper.so -lm
    gcc -O3 -mavx2 -mfma -ffast-math engine/fast_sniper_aws_x86_64.s -o engine/fast_sniper_native -lm
else
    gcc -O3 -ffast-math -S engine/fast_sniper_native.c -o engine/fast_sniper_native.s
    gcc -O3 -ffast-math -shared -fPIC engine/fast_sniper_native.s -o engine/libfast_sniper.so -lm
    gcc -O3 -ffast-math engine/fast_sniper_native.s -o engine/fast_sniper_native -lm
fi

./engine/fast_sniper_native

echo "======================================================================"
echo " [2/4] Launching 24x7 Live Arbitrum One Scanner Daemon (${EXECUTION_MODE})"
echo "       Owner Profit Wallet : ${OWNER_PROFIT_WALLET}"
echo "       Contract Address    : ${DEPLOYED_CONTRACT_ADDRESS}"
echo "======================================================================"
mkdir -p reports
pkill -f "engine.cli run-two-hour-test" || true
nohup python3 -m engine.cli run-two-hour-test --mode "${EXECUTION_MODE}" --duration-seconds 31536000 > reports/live_daemon.log 2>&1 &
echo "Scanner Daemon PID: $!"

echo "======================================================================"
echo " [3/4] Launching Real-Time Portal & Bank Transfer Center (:8080)"
echo "======================================================================"
pkill -f "scripts/serve_metamask_portal.py" || true
nohup python3 scripts/serve_metamask_portal.py > reports/portal_server.log 2>&1 &
echo "Portal Server PID: $! (Listening on http://127.0.0.1:8080)"

echo "======================================================================"
echo " [4/4] Verifying Live Arbitrum One Telemetry Stream"
echo "======================================================================"
sleep 3
tail -n 5 reports/live_daemon.log || true
