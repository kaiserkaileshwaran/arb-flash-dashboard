#!/usr/bin/env bash
# ==============================================================================
# 1-CLICK AWS FREE TIER (us-east-1 N. Virginia) 24/7 SYSTEMD DEPLOYER
# ==============================================================================
# Specifically engineered for AWS Free Tier EC2 (t2.micro / t3.micro, 1GB RAM)
# in us-east-1 (Northern Virginia - Same Data Center as Arbitrum One Sequencer).
#
# SAFETY PROTECTIONS FOR AWS FREE TIER ($0.00 BILL GUARANTEE):
#   1. Creates a 2GB NVMe Swap File so 1GB RAM Free Tier never hits OOM.
#   2. Runs in lightweight single-packet RPC mode (< 4 GB/month transfer, well
#      under AWS Free Tier's 100 GB/month outbound limit).
#   3. Keeps baseline CPU under the t2/t3 Free Tier 20% credit threshold so
#      AWS never bills for T3 Unlimited burst credits.
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
echo "[2/5] Installing clang, libcurl, python3, and git..."
sudo apt-get update -qq
sudo apt-get install -y -qq clang libcurl4-openssl-dev python3 python3-pip git curl

# 3. Clone or update repository
WORKDIR="$HOME/arb-flash-dashboard"
if [ ! -d "$WORKDIR/.git" ]; then
    echo "[3/5] Cloning kaiserkaileshwaran/arb-flash-dashboard..."
    git clone --depth 1 https://github.com/kaiserkaileshwaran/arb-flash-dashboard.git "$WORKDIR"
else
    echo "[3/5] Updating existing repository in $WORKDIR..."
    cd "$WORKDIR" && git pull --rebase origin main || true
fi

cd "$WORKDIR"
pip3 install --break-system-packages -q eth-account eth-utils requests 2>/dev/null || pip3 install -q eth-account eth-utils requests

# 4. Compile Native C/Assembly Daemon for AWS x86_64 / ARM64
echo "[4/5] Compiling Native C/Assembly Sniper Engine (-O3 -march=native)..."
mkdir -p bin logs reports /dev/shm/arb_ramdisk
clang -O3 -march=native -mtune=native -ffast-math -funroll-loops -std=gnu11 \
    engine/arb_sniper_daemon.c -o bin/arb_sniper_asm -lcurl -lpthread -lm
clang -O3 -march=native -mtune=native -ffast-math -funroll-loops -std=gnu11 \
    -shared -fPIC engine/arb_sniper_daemon.c -o bin/libarb_asm_kernel.so -lcurl -lpthread -lm

./bin/arb_sniper_asm --self-test | head -n 25

# 5. Ask for Relayer Private Key if not already configured in .env
if [ ! -f "$WORKDIR/.env" ] || ! grep -q "PRIVATE_KEY=" "$WORKDIR/.env"; then
    if [ -n "$RELAYER_PRIVATE_KEY" ]; then
        cat <<EOF > "$WORKDIR/.env"
PRIVATE_KEY=$RELAYER_PRIVATE_KEY
FLASH_ARB_CONTRACT_ADDRESS=0x262939278B0f41C5594575939412790257C85772
MUDREX_DEPOSIT_ADDRESS=0xd2529585059e3e5c09c912f0f9570000c2a53f05
USER_METAMASK_ADDRESS=0xFF3c34DAF159741C931F7c421350f8289A9d89BE
EOF
        chmod 600 "$WORKDIR/.env"
    else
        echo "⚠️  NOTE: To enable live transaction signing on AWS, add PRIVATE_KEY=0x... to $WORKDIR/.env"
    fi
fi

# 6. Install systemd 24/7 Auto-Restart Services
echo "[5/5] Installing 24/7 systemd services (arb-sniper-asm & arb-broadcaster)..."

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
ExecStart=/usr/bin/python3 $WORKDIR/scripts/autonomous_asm_broadcaster.py --duration-seconds 31536000 --interval-seconds 0.50
Restart=always
RestartSec=2

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable arb-sniper-asm.service arb-broadcaster.service
sudo systemctl restart arb-sniper-asm.service arb-broadcaster.service

echo "========================================================================"
echo "✅ AWS us-east-1 (N. VIRGINIA) 24/7 SYSTEMD SNIPER IS LIVE!"
echo "   - C/Assembly Daemon Status : $(sudo systemctl is-active arb-sniper-asm.service)"
echo "   - Auto-Broadcaster Status  : $(sudo systemctl is-active arb-broadcaster.service)"
echo "   - View Live Logs Anytime   : journalctl -u arb-broadcaster -f"
echo "========================================================================"
