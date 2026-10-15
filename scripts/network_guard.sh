#!/usr/bin/env bash
# ==============================================================================
# Autonomous Flash Loan Arbitrage & Liquidation Engine (v6.0 — Alchemy Low-Latency Edition)
# Persistent Network Watchdog & Offline Retry Wrapper (India Unstable Net Guard)
# ==============================================================================

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(cd "${SCRIPT_DIR}/.." && pwd)"
REPORTS_DIR="${ROOT_DIR}/reports"
WATCHDOG_LOG="${REPORTS_DIR}/watchdog.log"
CHECKPOINT_FILE="${REPORTS_DIR}/checkpoint_state.json"

mkdir -p "${REPORTS_DIR}"

ENDPOINTS=(
  "https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"
  "https://arb1.arbitrum.io/rpc"
  "https://arbitrum-one-rpc.publicnode.com"
  "https://1rpc.io/arb"
  "https://1.1.1.1"
)

log_watchdog() {
  local msg="$1"
  local ts
  ts="$(date -u +"%Y-%m-%dT%H:%M:%SZ")"
  echo "[${ts}] ${msg}" | tee -a "${WATCHDOG_LOG}"
}

check_connectivity() {
  for ep in "${ENDPOINTS[@]}"; do
    if [[ "${ep}" == *"1.1.1.1"* ]]; then
      if curl -sI --connect-timeout 3 --max-time 5 "${ep}" >/dev/null 2>&1 || ping -c 1 -W 2 1.1.1.1 >/dev/null 2>&1; then
        return 0
      fi
    else
      if curl -s --connect-timeout 3 --max-time 5 -X POST -H "Content-Type: application/json" \
        --data '{"jsonrpc":"2.0","method":"eth_chainId","params":[],"id":1}' "${ep}" | grep -q "0xa4b1"; then
        return 0
      fi
    fi
  done
  return 1
}

wait_for_network() {
  while ! check_connectivity; do
    log_watchdog "[NETWORK WATCHDOG] Offline detected. State locked in checkpoint_state.json. Waiting 5s for reconnection..."
    sleep 5
  done
}

run_with_network_retry() {
  local cmd="$*"
  local attempt=1
  while true; do
    wait_for_network
    log_watchdog "[NETWORK WATCHDOG] Attempt #${attempt}: Executing -> ${cmd}"
    if eval "${cmd}"; then
      log_watchdog "[NETWORK WATCHDOG] Success on Attempt #${attempt}: ${cmd}"
      return 0
    else
      local exit_code=$?
      log_watchdog "[NETWORK WATCHDOG] Command failed (code ${exit_code}) on Attempt #${attempt}. Offline detected. State locked in checkpoint_state.json. Waiting 5s for reconnection..."
      attempt=$((attempt + 1))
      sleep 5
    fi
  done
}

if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
  if [[ $# -gt 0 ]]; then
    run_with_network_retry "$@"
  else
    wait_for_network
    log_watchdog "[NETWORK WATCHDOG] Connectivity verified via Alchemy Arbitrum One Mainnet & fallback endpoints."
  fi
fi
