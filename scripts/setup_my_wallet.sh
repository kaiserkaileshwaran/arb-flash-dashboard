#!/usr/bin/env bash
# ==============================================================================
# Zero-Cost Arbitrum One Wallet Generator & Vault Keeper
# Creates a real cryptographic Arbitrum/Ethereum wallet locally on your Mac,
# stores the Private Key safely inside `.my_arbitrum_wallet.env` (chmod 600)
# WITHOUT ever printing the Private Key to chat logs, and outputs ONLY your
# public `0x...` wallet address.
# ==============================================================================
set -euo pipefail

BASE_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
WALLET_FILE="$BASE_DIR/.my_arbitrum_wallet.env"

if [[ ! -f "$WALLET_FILE" ]]; then
    python3 -c '
import json, subprocess, shutil, pathlib, os
cast_bin = shutil.which("cast") or str(pathlib.Path.home() / ".foundry/bin/cast")
wallet_json = json.loads(subprocess.check_output([cast_bin, "wallet", "new", "--json"], text=True))
entry = wallet_json["data"][0] if isinstance(wallet_json, dict) and "data" in wallet_json else wallet_json[0]
pub = entry["address"]
priv = entry["private_key"]
env_path = pathlib.Path("'"$WALLET_FILE"'")
env_path.write_text(
    "# ==============================================================================\n"
    "# YOUR REAL ARBITRUM ONE WALLET (KEEP THIS FILE PRIVATE - NEVER SHARE PRIVATE_KEY)\n"
    "# To import into MetaMask or Rabby Wallet:\n"
    "#   1. Open MetaMask / Rabby -> Click \"Import Wallet\" or \"Add Account -> Import Private Key\"\n"
    "#   2. Paste the PRIVATE_KEY value below.\n"
    "#   3. Switch network to \"Arbitrum One\" (Chain ID: 42161).\n"
    "# ==============================================================================\n"
    f"OWNER_ADDRESS={pub}\n"
    f"PRIVATE_KEY={priv}\n",
    encoding="utf-8"
)
os.chmod(env_path, 0o600)
'
    echo "CREATED_NEW_WALLET=true"
else
    echo "CREATED_NEW_WALLET=false (Loaded existing wallet)"
fi

source "$WALLET_FILE"
echo "YOUR_PUBLIC_ARBITRUM_ADDRESS=$OWNER_ADDRESS"
echo "SECRET_FILE_LOCATION=$WALLET_FILE (Locked with chmod 600 - Private Key hidden from chat)"
