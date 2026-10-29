#!/usr/bin/env python3
"""
Arbitrum One Mainnet Contract Deployment & Verification Helper (v16.0)
- Supports two zero-friction deployment paths for wallet 0xFF3c34DAF159741C931F7c421350f8289A9d89BE:
  1. Browser MetaMask Signing (Recommended — Zero Private Key Exposure):
     Open http://127.0.0.1:8080 and click "🚀 2. Deploy FlashLoanArbitrage.sol v16.0 to Arbitrum One Mainnet"
  2. Foundry CLI Deployment (Optional if PRIVATE_KEY env var or --ledger / --interactive is used):
     forge create contracts/FlashLoanArbitrage.sol:FlashLoanArbitrage \
       --rpc-url https://arb1.arbitrum.io/rpc \
       --constructor-args 0x0000000000000000000000000000000000000000 0x0000000000000000000000000000000000000000 0x0000000000000000000000000000000000000000 0x0000000000000000000000000000000000000000
"""
import json
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
ARTIFACT_PATH = BASE_DIR / "out" / "FlashLoanArbitrage.sol" / "FlashLoanArbitrage.json"


def main() -> None:
    if not ARTIFACT_PATH.exists():
        print("Error: Compiled artifact not found. Run `forge build` first.")
        return
    art = json.loads(ARTIFACT_PATH.read_text(encoding="utf-8"))
    bytecode = art.get("bytecode", {}).get("object", "")
    deploy_data = bytecode + ("0" * 256)
    print("=" * 80)
    print("FlashLoanArbitrage.sol v16.0 — Arbitrum One Mainnet (Chain ID: 42161) Ready")
    print("=" * 80)
    print(f"Default Owner / Profit Wallet : 0xFF3c34DAF159741C931F7c421350f8289A9d89BE")
    print(f"Compiled Bytecode Size        : {len(bytecode) // 2:,} bytes")
    print(f"Full Deploy Calldata Length   : {len(deploy_data) // 2:,} bytes")
    print("Pre-Configured Arbitrum One Contracts:")
    print("  • Balancer V2 Vault (0% Fee): 0xBA12222222228d8Ba445958a75a0704d566BF2C8")
    print("  • Aave V3 Pool (0.05% Fee)  : 0x794a61358D6845594F94dc1DB02A252b5b4814aD")
    print("  • Uniswap V3 SwapRouter     : 0xE592427A0AEce92De3Edee1F18E0157C05861564")
    print("  • Camelot V3 AlgebraRouter  : 0x1F721E2E82F6676fce4eA07A5958cF098D339e18")
    print("  • PancakeSwap V3 Router     : 0x1b81D678ffb9C0263b24A97847620C99d213eB14")
    print("  • SushiSwap V2 Router       : 0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506")
    print("\nOption A (Browser MetaMask — Zero Private Key Needed):")
    print("  Open http://127.0.0.1:8080 and click '🚀 2. Deploy FlashLoanArbitrage.sol v16.0'")
    print("\nOption B (Foundry Interactive Prompt):")
    print("  ~/.foundry/bin/forge create contracts/FlashLoanArbitrage.sol:FlashLoanArbitrage \\")
    print("    --rpc-url https://arb1.arbitrum.io/rpc --interactive --broadcast \\")
    print("    --constructor-args 0x0000000000000000000000000000000000000000 0x0000000000000000000000000000000000000000 0x0000000000000000000000000000000000000000 0x0000000000000000000000000000000000000000")
    print("=" * 80)


if __name__ == "__main__":
    main()
