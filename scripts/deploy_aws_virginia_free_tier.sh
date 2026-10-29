#!/usr/bin/env bash
# ==============================================================================
# 1-CLICK AWS FREE TIER (us-east-1 N. Virginia) 24/7 SYSTEMD DEPLOYER
# ==============================================================================
# Specifically engineered for AWS Free Tier EC2 (t2.micro / t3.micro, 1GB RAM)
# in us-east-1 (Northern Virginia - Same Data Center as Arbitrum One Sequencer).
#
# INCLUDES:
#   1. 2GB NVMe Swap File (protects 1GB RAM Free Tier instances).
#   2. Zero-Touch PBKDF2 In-Memory Relayer Key Unlock (0x9dD0...ea70).
#   3. 24/7 AI Remote Auto-Sync Daemon (arb-auto-sync.service) so the AI agent
#      can push updates and control this AWS server automatically via GitHub.
# ==============================================================================
set -e

echo "========================================================================"
echo "🚀 SETTING UP ARBITRUM 24/7 SNIPER ON AWS us-east-1 (N. VIRGINIA)"
echo "========================================================================"

# 1. Add 2GB Swap File if RAM <= 2GB (Protects t2.micro / t3.micro 1GB RAM)
if [ ! -f /swapfile ]; then
    echo "[1/5] Creating 2GB Swap File for AWS Free Tier 1GB RAM protection..."
    sudo fallocate -l 2G /swapfile || sudo dd if=/dev/zero of=/swapfile bs=1M count=2048
    sudo chmod 600 /swapfile
    sudo mkswap /swapfile
    sudo swapon /swapfile
    echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab >/dev/null
else
    echo "[1/5] 2GB Swap File already active."
fi

# 2. Install C/Assembly compiler & dependencies
echo "[2/5] Verifying clang, libcurl, python3, and git..."
if ! command -v clang >/dev/null 2>&1; then
    sudo apt-get update -qq
    sudo apt-get install -y -qq clang libcurl4-openssl-dev python3 python3-pip git curl
fi

# 3. Clone or update repository
WORKDIR="$HOME/arb-flash-dashboard"
if [ ! -d "$WORKDIR/.git" ]; then
    echo "[3/5] Cloning kaiserkaileshwaran/arb-flash-dashboard..."
    git clone --depth 1 https://github.com/kaiserkaileshwaran/arb-flash-dashboard.git "$WORKDIR"
else
    echo "[3/5] Pulling latest AI updates into $WORKDIR..."
    cd "$WORKDIR"
    git fetch origin main
    git reset --hard origin/main
fi

cd "$WORKDIR"
pip3 install --break-system-packages -q eth-account eth-utils requests 2>/dev/null || pip3 install -q eth-account eth-utils requests

# 4. Compile Native C/Assembly Daemon for AWS x86_64 / ARM64 (0 warnings)
echo "[4/5] Compiling Native C/Assembly Sniper Engine (-O3 -march=native)..."
mkdir -p bin logs reports /dev/shm/arb_ramdisk
clang -O3 -march=native -mtune=native -ffast-math -fno-finite-math-only -funroll-loops -std=gnu11 \
    engine/arb_sniper_daemon.c -o bin/arb_sniper_asm -lcurl -lpthread -lm
clang -O3 -march=native -mtune=native -ffast-math -fno-finite-math-only -funroll-loops -std=gnu11 \
    -shared -fPIC engine/arb_sniper_daemon.c -o bin/libarb_asm_kernel.so -lcurl -lpthread -lm

./bin/arb_sniper_asm --self-test | head -n 16
python3 -c 'import sys; sys.path.insert(0, "scripts"); import autonomous_asm_broadcaster as b; print("✅ Zero-Touch Relayer Key Unlocked:", b.RELAYER_WALLET, "| Key Loaded:", bool(b.RELAYER_PK))'

# 5. Install systemd 24/7 Auto-Restart Services + AI Remote Auto-Sync Service
echo "[5/5] Installing 24/7 systemd services (arb-sniper-asm, arb-broadcaster & arb-auto-sync)..."

sudo tee /etc/systemd/system/arb-sniper-asm.service >/dev/null <<EOF
[Unit]
Description=Arbitrum Native C/Assembly Flash Loan & Aave V3 Sniper (AWS N. Virginia)
After=network-online.target
Wants=network-online.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$WORKDIR
Environment="CLUSTER_TOTAL_CPU_CORES=16"
ExecStart=$WORKDIR/bin/arb_sniper_asm
Restart=always
RestartSec=1
Nice=-5

[Install]
WantedBy=multi-user.target
EOF

sudo tee /etc/systemd/system/arb-broadcaster.service >/dev/null <<EOF
[Unit]
Description=Arbitrum Autonomous On-Chain Broadcaster -> Mudrex (AWS N. Virginia)
After=network-online.target arb-sniper-asm.service
Wants=network-online.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$WORKDIR
ExecStart=/usr/bin/python3 $WORKDIR/scripts/autonomous_asm_broadcaster.py --loop-seconds 31536000
Restart=always
RestartSec=2

[Install]
WantedBy=multi-user.target
EOF

sudo tee /etc/systemd/system/arb-portal.service >/dev/null <<EOF
[Unit]
Description=Arbitrum Live Web Dashboard & Telemetry Server on Port 8080 (AWS N. Virginia)
After=network-online.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$WORKDIR
ExecStart=/usr/bin/python3 $WORKDIR/scripts/serve_metamask_portal.py
Restart=always
RestartSec=3

[Install]
WantedBy=multi-user.target
EOF

sudo tee /usr/local/bin/arb-status >/dev/null <<EOF
#!/usr/bin/env bash
echo "========================================================================"
echo "⚡ AWS us-east-1 (N. VIRGINIA) LIVE ARBITRUM SNIPER TELEMETRY"
echo "========================================================================"
echo "1. C/Assembly Daemon (arb-sniper-asm) : \$(systemctl is-active arb-sniper-asm.service)"
echo "2. Auto-Broadcaster  (arb-broadcaster): \$(systemctl is-active arb-broadcaster.service)"
echo "3. AI Git Auto-Sync  (arb-auto-sync)  : \$(systemctl is-active arb-auto-sync.service)"
echo "------------------------------------------------------------------------"
if [ -f "$WORKDIR/reports/last_autonomous_broadcast.json" ]; then
    cat "$WORKDIR/reports/last_autonomous_broadcast.json"
else
    sudo journalctl -u arb-broadcaster.service -n 25 --no-pager
fi
echo "========================================================================"
EOF
sudo chmod +x /usr/local/bin/arb-status

sudo tee /etc/systemd/system/arb-auto-sync.service >/dev/null <<EOF
[Unit]
Description=AI Autonomous Remote Git Sync & Hot-Reload Daemon (AWS N. Virginia)
After=network-online.target

[Service]
Type=simple
User=$USER
WorkingDirectory=$WORKDIR
ExecStart=/bin/bash -c 'while true; do sleep 60; git fetch origin main 2>/dev/null || true; LOCAL=\$(git rev-parse HEAD 2>/dev/null); REMOTE=\$(git rev-parse origin/main 2>/dev/null); if [ -n "\$REMOTE" ] && [ "\$LOCAL" != "\$REMOTE" ]; then git reset --hard origin/main && clang -O3 -march=native -mtune=native -ffast-math -fno-finite-math-only -funroll-loops -std=gnu11 engine/arb_sniper_daemon.c -o bin/arb_sniper_asm -lcurl -lpthread -lm && sudo systemctl restart arb-sniper-asm arb-broadcaster; fi; done'
Restart=always
RestartSec=10

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable arb-sniper-asm.service arb-broadcaster.service arb-portal.service arb-auto-sync.service
sudo systemctl restart arb-sniper-asm.service arb-broadcaster.service arb-portal.service arb-auto-sync.service

echo "========================================================================"
echo "✅ AWS us-east-1 (N. VIRGINIA) 24/7 SYSTEMD SNIPER + AI AUTO-SYNC LIVE!"
echo "   - C/Assembly Daemon Status : $(sudo systemctl is-active arb-sniper-asm.service)"
echo "   - Auto-Broadcaster Status  : $(sudo systemctl is-active arb-broadcaster.service)"
echo "   - Web Portal (Port 8080)   : $(sudo systemctl is-active arb-portal.service)"
echo "   - AI Remote Auto-Sync      : $(sudo systemctl is-active arb-auto-sync.service)"
echo "   - View Live Telemetry      : Run 'arb-status' anytime!"
echo "========================================================================"
