#!/usr/bin/env bash
# One-shot installer for the AWS us-east-1 free-tier box (Ubuntu 22.04/24.04 or Amazon Linux 2023).
# Run ON the EC2 instance:   bash install_ec2.sh https://github.com/<you>/arb-flash-dashboard.git
# Installs the C sniper + Python broadcaster as two auto-restarting systemd services (survive reboot/crash).
# Your Relayer private key is typed in once (hidden), stored 0600 on this box only, never in git.
set -euo pipefail

REPO_URL="${1:?usage: install_ec2.sh <git repo url>}"
APP_DIR="$HOME/arb-flash-engine"

if command -v apt-get >/dev/null; then
  sudo apt-get update -y && sudo apt-get install -y git gcc make libcurl4-openssl-dev python3 python3-venv python3-pip
else
  sudo dnf install -y git gcc make libcurl-devel python3 python3-pip
fi

[ -d "$APP_DIR/.git" ] && git -C "$APP_DIR" pull --rebase || git clone "$REPO_URL" "$APP_DIR"
cd "$APP_DIR"
mkdir -p bin reports logs

python3 -m venv .venv
.venv/bin/pip install -q --upgrade pip eth-account eth-utils
gcc -O3 -march=native -ffast-math engine/arb_sniper_daemon.c -lcurl -lpthread -lm -o bin/arb_sniper_asm
echo "[ok] compiled bin/arb_sniper_asm"

ENV_FILE="$HOME/.arb_flash_local_relayer.env"
if [ ! -f "$ENV_FILE" ]; then
  read -r -s -p "Paste LOCAL_RELAYER_PRIVATE_KEY (hidden, 0x...): " PK; echo
  printf "LOCAL_RELAYER_ADDRESS=0x9dD041dbd964DE086Da8f907518f6E25c45aea70\nLOCAL_RELAYER_PRIVATE_KEY=%s\n" "$PK" > "$ENV_FILE"
  chmod 600 "$ENV_FILE"
fi

sudo tee /etc/systemd/system/arb-sniper.service >/dev/null <<EOF
[Unit]
Description=Arbitrum C/ASM sniper daemon
After=network-online.target
[Service]
User=$USER
WorkingDirectory=$APP_DIR
Environment=PATH=$APP_DIR/.venv/bin:/usr/local/bin:/usr/bin:/bin
ExecStart=$APP_DIR/bin/arb_sniper_asm
Restart=always
RestartSec=2
[Install]
WantedBy=multi-user.target
EOF

sudo tee /etc/systemd/system/arb-broadcaster.service >/dev/null <<EOF
[Unit]
Description=Arbitrum autonomous broadcaster (designated single executor)
After=network-online.target
[Service]
User=$USER
WorkingDirectory=$APP_DIR
Environment=PATH=$APP_DIR/.venv/bin:/usr/local/bin:/usr/bin:/bin
ExecStart=$APP_DIR/.venv/bin/python scripts/autonomous_asm_broadcaster.py --loop-seconds 300
Restart=always
RestartSec=1
[Install]
WantedBy=multi-user.target
EOF

# keep the repo fresh + daily 00:00 IST (18:30 UTC) settlement is handled inside the broadcaster
( crontab -l 2>/dev/null | grep -v arb-flash-engine; echo "*/30 * * * * cd $APP_DIR && git pull --rebase -q || true" ) | crontab -

sudo systemctl daemon-reload
sudo systemctl enable --now arb-sniper arb-broadcaster
sleep 8
systemctl --no-pager --lines=3 status arb-sniper arb-broadcaster || true
echo
echo "DONE. Logs:  journalctl -u arb-sniper -f   |   journalctl -u arb-broadcaster -f"
echo "Telemetry:   cat $APP_DIR/reports/asm_sniper_telemetry.json | head -40"
echo "NOW on your Mac run:  export ARB_DISABLE_BROADCAST=1  (so only AWS executes)"
