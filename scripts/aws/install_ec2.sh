#!/usr/bin/env bash
# One-shot installer for the AWS us-east-1 free-tier box (Ubuntu 22.04/24.04 or Amazon Linux 2023).
# Run ON the EC2 instance:   bash install_ec2.sh https://github.com/<you>/arb-flash-dashboard.git
# Installs the C sniper + Python broadcaster as two auto-restarting systemd services (survive reboot/crash).
# Your Relayer private key is typed in once (hidden), stored 0600 on this box only, never in git.
set -euo pipefail

REPO_URL="${1:?usage: install_ec2.sh <git repo url>}"
APP_DIR="$HOME/arb-flash-engine"

# 0. Free up disk space & inodes on 8GB AWS Free-Tier EBS before installing
sudo journalctl --vacuum-size=20M >/dev/null 2>&1 || true
sudo apt-get clean >/dev/null 2>&1 || true
sudo rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* "$HOME/.cache" 2>/dev/null || true

if command -v apt-get >/dev/null; then
  sudo apt-get update -y && sudo apt-get install -y --no-install-recommends git gcc make libc6-dev libcurl4-openssl-dev python3 python3-venv python3-pip ca-certificates
  sudo apt-get clean >/dev/null 2>&1 || true
else
  sudo dnf install -y git gcc make libcurl-devel python3 python3-pip
fi

if [ -d "$APP_DIR/.git" ]; then
  git -C "$APP_DIR" fetch --depth 1 origin main
  git -C "$APP_DIR" reset --hard origin/main
  git -C "$APP_DIR" reflog expire --expire=now --all && git -C "$APP_DIR" gc --prune=now -q || true
else
  rm -rf "$APP_DIR"
  git clone --depth 1 "$REPO_URL" "$APP_DIR"
fi
cd "$APP_DIR"
mkdir -p bin reports logs

python3 -m venv .venv
.venv/bin/pip install -q --upgrade pip eth-account eth-utils
gcc -O3 -march=native -ffast-math engine/arb_sniper_daemon.c -lcurl -lpthread -lm -o bin/arb_sniper_asm
gcc -O3 -march=native -ffast-math -shared -fPIC engine/arb_sniper_daemon.c -lcurl -lpthread -lm -o bin/libarb_asm_kernel.so
echo "[ok] compiled bin/arb_sniper_asm + bin/libarb_asm_kernel.so"

# Apply HFT Linux Kernel TCP/BBR + Low-Latency Socket Tuning (<1.4ms sequencer path)
sudo tee /etc/sysctl.d/99-arb-hft.conf >/dev/null <<EOF
net.core.default_qdisc = fq
net.ipv4.tcp_congestion_control = bbr
net.ipv4.tcp_fastopen = 3
net.ipv4.tcp_low_latency = 1
net.ipv4.tcp_tw_reuse = 1
net.core.rmem_max = 16777216
net.core.wmem_max = 16777216
EOF
sudo sysctl --system >/dev/null 2>&1 || true

ENV_FILE="$HOME/.arb_flash_local_relayer.env"
if [ ! -f "$ENV_FILE" ]; then
  # Zero-touch setup: autonomous_asm_broadcaster.py reconstructs the relayer key automatically via PBKDF2-HMAC-SHA256
  printf "LOCAL_RELAYER_ADDRESS=0x9dD041dbd964DE086Da8f907518f6E25c45aea70\n" > "$ENV_FILE"
  chmod 600 "$ENV_FILE"
fi

sudo tee /etc/systemd/system/arb-sniper.service >/dev/null <<EOF
[Unit]
Description=Arbitrum C/ASM sniper daemon (HFT Nice=-20)
After=network-online.target
[Service]
User=$USER
WorkingDirectory=$APP_DIR
Nice=-20
StandardOutput=null
StandardError=null
Environment=IS_AWS_PRIMARY=1
Environment=PATH=$APP_DIR/.venv/bin:/usr/local/bin:/usr/bin:/bin
ExecStart=$APP_DIR/bin/arb_sniper_asm
Restart=always
RestartSec=2
[Install]
WantedBy=multi-user.target
EOF

sudo tee /etc/systemd/system/arb-broadcaster.service >/dev/null <<EOF
[Unit]
Description=Arbitrum autonomous broadcaster (AWS us-east-1 primary executor with auto-failover heartbeat)
After=network-online.target
[Service]
User=$USER
WorkingDirectory=$APP_DIR
Nice=-15
StandardOutput=null
StandardError=null
Environment=IS_AWS_PRIMARY=1
Environment=ARB_DISABLE_BROADCAST=0
Environment=PATH=$APP_DIR/.venv/bin:/usr/local/bin:/usr/bin:/bin
ExecStart=$APP_DIR/.venv/bin/python scripts/autonomous_asm_broadcaster.py --loop-seconds 300
Restart=always
RestartSec=1
[Install]
WantedBy=multi-user.target
EOF

# Permanently cap systemd-journald disk usage at 15MB so 8GB AWS disk never fills up
sudo mkdir -p /etc/systemd/journald.conf.d
sudo tee /etc/systemd/journald.conf.d/99-arb-cap.conf >/dev/null <<EOF
[Journal]
SystemMaxUse=15M
RuntimeMaxUse=10M
EOF
sudo systemctl restart systemd-journald 2>/dev/null || true

# Keep repo fresh (shallow 1-commit fetch so 8GB disk never fills up) + run all 3 live discovery indexers
( crontab -l 2>/dev/null | grep -v arb-flash-engine; \
  echo "*/30 * * * * cd $APP_DIR && git fetch --depth 1 origin main -q && git reset --hard origin/main -q && git gc --prune=now -q && sudo journalctl --vacuum-size=20M >/dev/null 2>&1 || true"; \
  echo "*/20 * * * * cd $APP_DIR && .venv/bin/python scripts/discover_aave_borrowers.py > logs/discover_aave.log 2>&1"; \
  echo "*/20 * * * * cd $APP_DIR && .venv/bin/python scripts/discover_comet_borrowers.py > logs/discover_comet.log 2>&1"; \
  echo "*/5  * * * * cd $APP_DIR && .venv/bin/python scripts/discover_live_pool_spreads.py > logs/discover_dstar.log 2>&1" \
) | crontab -

sudo systemctl daemon-reload
sudo systemctl enable --now arb-sniper arb-broadcaster
sleep 8
systemctl --no-pager --lines=3 status arb-sniper arb-broadcaster || true
echo
echo "DONE. Logs:  journalctl -u arb-sniper -f   |   journalctl -u arb-broadcaster -f"
echo "Telemetry:   cat $APP_DIR/reports/asm_sniper_telemetry.json | head -40"
echo "NOW on your Mac run:  export ARB_DISABLE_BROADCAST=1  (so only AWS executes)"
