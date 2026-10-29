#!/usr/bin/env bash
# ==============================================================================
# 1-COMMAND ORACLE CLOUD ALWAYS-FREE (ARM64 Ampere A1 / x86_64) 24/7 DEPLOYER
# Compiles engine/arb_sniper_daemon.c to Native Hardware Assembly & Installs
# Permanent systemd Daemons (arb-sniper-asm.service + arb-portal.service)
# ==============================================================================
set -euo pipefail

echo "=============================================================================="
echo "🚀 STARTING ORACLE CLOUD FOREVER-FREE NATIVE ASSEMBLY SNIPER DEPLOYMENT"
echo "=============================================================================="

# 1. Install compiler, libcurl, python3, and git
sudo apt-get update -y
sudo apt-get install -y build-essential clang gcc libcurl4-openssl-dev python3 python3-pip git curl jq

# 2. Install Foundry (cast) if not already installed
if ! command -v cast >/dev/null 2>&1 && [ ! -f "$HOME/.foundry/bin/cast" ]; then
    curl -L https://foundry.paradigm.xyz | bash
    "$HOME/.foundry/bin/foundryup" || true
fi
export PATH="$HOME/.foundry/bin:$PATH"

# 3. Clone or update repository
APP_DIR="$HOME/arb-flash-dashboard"
if [ -d "$APP_DIR/.git" ]; then
    cd "$APP_DIR"
    git pull --rebase origin main
else
    git clone https://github.com/kaiserkaileshwaran/arb-flash-dashboard.git "$APP_DIR"
    cd "$APP_DIR"
fi

mkdir -p "$APP_DIR/bin" "$APP_DIR/logs" "$APP_DIR/reports"

# 4. Detect CPU architecture (ARM64 Ampere A1 vs x86_64) & compile to Native Assembly
ARCH="$(uname -m)"
echo "[*] Detected Hardware Architecture: $ARCH"
if [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then
    CPU_FLAG="-mcpu=native"
else
    CPU_FLAG="-march=native"
fi

clang -O3 $CPU_FLAG -ffast-math -funroll-loops -S engine/arb_sniper_daemon.c -o engine/arb_sniper_daemon.s
clang -O3 $CPU_FLAG -flto -ffast-math -funroll-loops -shared -fPIC engine/arb_sniper_daemon.c -o bin/libarb_asm_kernel.so -lcurl -lpthread -lm
clang -O3 $CPU_FLAG -flto -ffast-math -funroll-loops engine/arb_sniper_daemon.c -o bin/arb_sniper_asm -lcurl -lpthread -lm

echo "[*] Running Hardware Assembly Self-Test..."
./bin/arb_sniper_asm --self-test | head -n 38

# 5. Configure ~/.arb_flash_local_relayer.env if LOCAL_RELAYER_PRIVATE_KEY is passed
ENV_FILE="$HOME/.arb_flash_local_relayer.env"
if [ ! -f "$ENV_FILE" ]; then
    cat > "$ENV_FILE" <<EOF
LOCAL_RELAYER_ADDRESS=0x9dD041dbd964DE086Da8f907518f6E25c45aea70
LOCAL_RELAYER_PRIVATE_KEY=${LOCAL_RELAYER_PRIVATE_KEY:-}
MUDREX_WALLET=0xd2529585059e3e5c09c912f0f9570000c2a53f05
OWNER_METAMASK=0xFF3c34DAF159741C931F7c421350f8289A9d89BE
EOF
    chmod 600 "$ENV_FILE"
fi

# 6. Create & Enable 24/7 systemd service for Native Assembly Sniper Daemon
sudo tee /etc/systemd/system/arb-sniper-asm.service >/dev/null <<EOF
[Unit]
Description=Arbitrum One Native Hardware Assembly Flash-Loan & HF<1.0000 Sniper Daemon
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$APP_DIR
EnvironmentFile=-$ENV_FILE
Environment="PATH=$HOME/.foundry/bin:/usr/local/bin:/usr/bin:/bin"
ExecStart=$APP_DIR/bin/arb_sniper_asm
Restart=always
RestartSec=1
LimitNOFILE=65535

[Install]
WantedBy=multi-user.target
EOF

# 7. Create & Enable 24/7 systemd service for Live Portal Server (:8080)
sudo tee /etc/systemd/system/arb-portal.service >/dev/null <<EOF
[Unit]
Description=Arbitrum One Live Telemetry Portal Server (Port 8080)
After=network-online.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$APP_DIR
EnvironmentFile=-$ENV_FILE
Environment="PATH=$HOME/.foundry/bin:/usr/local/bin:/usr/bin:/bin"
ExecStart=/usr/bin/python3 $APP_DIR/scripts/serve_metamask_portal.py
Restart=always
RestartSec=2

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable arb-sniper-asm.service arb-portal.service
sudo systemctl restart arb-sniper-asm.service arb-portal.service

echo "=============================================================================="
echo "✅ ORACLE CLOUD 24/7 NATIVE ASSEMBLY SNIPER & PORTAL SERVICES ACTIVE!"
echo "   - Check Sniper Logs : journalctl -u arb-sniper-asm -f"
echo "   - Portal URL        : http://$(curl -s ifconfig.me || echo '<YOUR_ORACLE_IP>'):8080"
echo "=============================================================================="
