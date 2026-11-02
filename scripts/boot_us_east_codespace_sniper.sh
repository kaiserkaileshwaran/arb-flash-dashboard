#!/usr/bin/env bash
# ==============================================================================
# Arbitrum One v25.0 — US-East (Virginia) GitHub Codespace Auto-Boot Launcher
# Automatically runs inside `EastUs` (Virginia) GitHub Codespace on boot:
#   1. Compiles Native Linux x86_64 AVX2 C/Assembly Kernel (`bin/arb_sniper_asm`)
#   2. Enforces `ARB_FREEZE_NON_HF_SWAPS=1` (0 wei gas burned on small DEX swaps)
#   3. Starts Live Dashboard & Telemetry Portal on Port 8080 (`serve_metamask_portal.py`)
#   4. Starts 24/7 HF Liquidation Sniper (`bin/arb_sniper_asm --daemon` + `autonomous_asm_broadcaster.py`)
#   5. Starts Automatic US-East Server Quota Monitor & Backup Failover Orchestrator (`us_east_server_failover_orchestrator.py --daemon`)
# ==============================================================================
set -u

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$BASE_DIR" || exit 1

export ARB_FREEZE_NON_HF_SWAPS=1
export DEPLOYED_HARDENED_YUL_CONTRACT="0x690f82909Df1853f2f227895A3A28636A42aa5a7"
export OWNER_PROFIT_WALLET="0xFF3c34DAF159741C931F7c421350f8289A9d89BE"
export MUDREX_DEPOSIT_WALLET="0xd2529585059e3e5c09c912f0f9570000c2a53f05"
export LOCAL_RELAYER_ADDRESS="0x9dD041dbd964DE086Da8f907518f6E25c45aea70"

if [ -n "${LOCAL_RELAYER_PRIVATE_KEY:-}" ]; then
  printf "LOCAL_RELAYER_ADDRESS=0x9dD041dbd964DE086Da8f907518f6E25c45aea70\nLOCAL_RELAYER_PRIVATE_KEY=%s\n" "$LOCAL_RELAYER_PRIVATE_KEY" > ~/.arb_flash_local_relayer.env
  chmod 600 ~/.arb_flash_local_relayer.env
  export ARB_DISABLE_BROADCAST="${ARB_DISABLE_BROADCAST:-0}"
else
  export ARB_DISABLE_BROADCAST="${ARB_DISABLE_BROADCAST:-1}"
fi

mkdir -p /dev/shm/arb_ramdisk bin reports docs/reports 2>/dev/null || true

# Compile fresh Linux x86_64 AVX2 native binary if running on Linux
if [ "$(uname -s)" = "Linux" ]; then
  gcc -O3 -march=native -flto -ffast-math -funroll-loops -fPIC -shared engine/arb_sniper_daemon.c -lcurl -lpthread -lm -o bin/libarb_asm_kernel.so 2>/dev/null || true
  gcc -O3 -march=native -flto -ffast-math -funroll-loops engine/arb_sniper_daemon.c -lcurl -lpthread -lm -o bin/arb_sniper_asm 2>/dev/null || true
fi

pkill -f "python3 scripts/serve_metamask_portal.py" 2>/dev/null || true
pkill -f "./bin/arb_sniper_asm --daemon" 2>/dev/null || true
pkill -f "python3 scripts/autonomous_asm_broadcaster.py" 2>/dev/null || true
pkill -f "python3 scripts/us_east_server_failover_orchestrator.py" 2>/dev/null || true

nohup python3 scripts/serve_metamask_portal.py > /tmp/portal_us_east.log 2>&1 < /dev/null &
if [ -x "./bin/arb_sniper_asm" ]; then
  nohup ./bin/arb_sniper_asm --daemon > /tmp/arb_sniper_asm_us_east.log 2>&1 < /dev/null &
fi
nohup python3 scripts/autonomous_asm_broadcaster.py --loop-seconds 15 > /tmp/broadcaster_us_east.log 2>&1 < /dev/null &
nohup python3 scripts/us_east_server_failover_orchestrator.py --daemon > /tmp/failover_orchestrator_us_east.log 2>&1 < /dev/null &

echo "[US-EAST VIRGINIA CODESPACE] All 4 daemons active (HF Sniper + Portal + Auto-Server-Rotation Watchdog)."
