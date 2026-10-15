#!/usr/bin/env bash
# ==============================================================================
# Automatic Mac -> AWS EC2 (us-east-1) Uploader, Assembly Compiler & Launcher
# Usage: ./scripts/connect_and_push_to_aws.sh <AWS_PUBLIC_IP> [PATH_TO_PEM_KEY]
# ==============================================================================
set -euo pipefail

if [ $# -lt 1 ]; then
    echo "Usage: $0 <AWS_PUBLIC_IP> [PATH_TO_PEM_KEY]"
    exit 1
fi

AWS_IP="$1"
PEM_KEY="${2:-}"

# Auto-detect newest .pem key in ~/Downloads if not specified
if [ -z "$PEM_KEY" ]; then
    PEM_KEY="$(ls -t "$HOME"/Downloads/*.pem 2>/dev/null | head -n 1 || true)"
fi

if [ -z "$PEM_KEY" ] || [ ! -f "$PEM_KEY" ]; then
    echo "[!] Could not find .pem key file. Please pass path to .pem file or leave it in ~/Downloads/"
    exit 1
fi

chmod 400 "$PEM_KEY"

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"

echo "=============================================================================="
echo " [1/3] Uploading arb-flash-engine to AWS us-east-1 ($AWS_IP)..."
echo "=============================================================================="
rsync -avz --exclude '.git' --exclude 'cache' --exclude 'out' \
    -e "ssh -i \"$PEM_KEY\" -o StrictHostKeyChecking=no" \
    "$PROJECT_DIR/" "ubuntu@${AWS_IP}:~/arb-flash-engine/"

echo "=============================================================================="
echo " [2/3] Compiling Native x86_64 Assembly & Running 10-Cycle Benchmark on AWS..."
echo "=============================================================================="
ssh -i "$PEM_KEY" -o StrictHostKeyChecking=no "ubuntu@${AWS_IP}" \
    "cd ~/arb-flash-engine && chmod +x scripts/deploy_free_us_server.sh && ./scripts/deploy_free_us_server.sh"

echo "=============================================================================="
echo " [3/3] Starting 24/7 Passive Keep-Alive Sniper Daemon on AWS us-east-1..."
echo "=============================================================================="
ssh -i "$PEM_KEY" -o StrictHostKeyChecking=no "ubuntu@${AWS_IP}" \
    "cd ~/arb-flash-engine && mkdir -p reports && pkill -f live_rpc_scanner.py || true && nohup python3 engine/live_rpc_scanner.py > reports/us_server_live.log 2>&1 & sleep 2 && ps aux | grep live_rpc_scanner.py | grep -v grep"
