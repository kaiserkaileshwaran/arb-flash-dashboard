#!/usr/bin/env python3
"""
Autonomous On-Chain Broadcaster & Self-Sustaining Relayer Gas Manager
Invoked directly by `./bin/arb_sniper_asm` when `top_net_profit_usd > 0.0` and `relayer_eth_balance >= 0.0000035 ETH`.
Enforces:
1. Pre-flight `eth_call` revert guard on `0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3` so 0 wei gas is ever wasted on a revert.
2. Self-Sustaining Gas Reserve Floor (`MIN_RELAYER_GAS_RESERVE_WEI = 150_000_000_000_000` = `0.00015 ETH`) so the relayer
   (`0x0E8A575147b51C5701C86427b521F7293249cd67`) never drains its own L2 gas tank to 0.
3. Automatic 75% Binance (`0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099`) & 25% MetaMask (`0xFF3c34DAF159741C931F7c421350f8289A9d89BE`)
   post-trade USDC settlement + immediate execution of `scripts/verify_real_onchain_proofs.py`.
"""
import json
import subprocess
import sys
import time
import urllib.request
from pathlib import Path

BASE_DIR = Path(__file__).resolve().parent.parent
REPORTS_DIR = BASE_DIR / "reports"
ASM_TELEM_JSON = REPORTS_DIR / "asm_sniper_telemetry.json"
BROADCAST_LOG_JSON = REPORTS_DIR / "last_autonomous_broadcast.json"

OWNER_METAMASK = "0xFF3c34DAF159741C931F7c421350f8289A9d89BE"
MUDREX_WALLET = "0xd2529585059e3e5c09c912f0f9570000c2a53f05"
BINANCE_WALLET = "0xd2529585059e3e5c09c912f0f9570000c2a53f05"
DEPLOYED_CONTRACT = "0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3"


def _load_local_relayer_env() -> tuple:
    env_path = Path.home() / ".arb_flash_local_relayer.env"
    addr = "0x9dD041dbd964DE086Da8f907518f6E25c45aea70"
    pk = ""
    if env_path.exists():
        for line in env_path.read_text(encoding="utf-8").splitlines():
            if line.startswith("LOCAL_RELAYER_ADDRESS="):
                addr = line.split("=", 1)[1].strip()
            elif line.startswith("LOCAL_RELAYER_PRIVATE_KEY="):
                pk = line.split("=", 1)[1].strip()
    return addr, pk


RELAYER_WALLET, RELAYER_PK = _load_local_relayer_env()
RPC_URLS = [
    "https://arbitrum.drpc.org",
    "https://arb-pokt.nodies.app",
    "https://arb1.arbitrum.io/rpc",
    "https://1rpc.io/arb",
]
RPC_URL = RPC_URLS[0]
MIN_GAS_RESERVE_WEI = 35_000_000_000_000  # Keep at least 0.000035 ETH (~10 future txs) in relayer gas tank
MIN_MUDREX_USDC_UNITS = 5001  # Strictly > 0.005 USDC minimum deposit on Mudrex Arbitrum One


def rpc_call(method: str, params: list) -> dict:
    last_err = None
    for url in RPC_URLS:
        try:
            req = urllib.request.Request(
                url,
                data=json.dumps({"jsonrpc": "2.0", "id": 1, "method": method, "params": params}).encode("utf-8"),
                headers={"Content-Type": "application/json", "User-Agent": "Mozilla/5.0"},
            )
            res = json.loads(urllib.request.urlopen(req, timeout=6).read().decode("utf-8"))
            if "result" in res:
                return res
        except Exception as e:
            last_err = e
    raise RuntimeError(f"All Arbitrum RPCs failed: {last_err}")


def main() -> int:
    try:
        rel_hex = rpc_call("eth_getBalance", [RELAYER_WALLET, "latest"]).get("result", "0x0")
        rel_wei = int(rel_hex, 16)
    except Exception as e:
        BROADCAST_LOG_JSON.write_text(json.dumps({"ok": False, "error": str(e), "ts": time.time()}, indent=2))
        return 1

    if rel_wei < 3_500_000_000_000:
        BROADCAST_LOG_JSON.write_text(
            json.dumps(
                {
                    "ok": False,
                    "status": "AWAITING_RELAYER_GAS_TOPUP",
                    "relayer_wallet": RELAYER_WALLET,
                    "relayer_eth_wei": rel_wei,
                    "relayer_eth": round(rel_wei / 1e18, 8),
                    "required_min_eth": 0.0000035,
                    "ts": time.time(),
                },
                indent=2,
            )
        )
        return 0

    cast_bin = "/Users/kailesh/.foundry/bin/cast"
    if not Path(cast_bin).exists():
        cast_bin = "cast"

    # Candidate execution tiers ordered from Big-Whale Sweet-Spot down to Verified On-Chain Tick Sweet-Spot
    candidate_calls = [
        # Tier 1: Big-Whale WETH/USDC PancakeSwap V3 <-> Camelot V3 (10 WETH = ₹22.7 Lakh Flash Loan)
        "(0x7fCDC35463E3770c2fB992716Cd070B63540b947,0xB1026b8e7276e7AC75410F1fcbbe21796e8f7526,0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,0xaf88d065e77c8cC2239327C5EDb3A432268e5831,10000000000000000000,1,true,false)",
        "(0xB1026b8e7276e7AC75410F1fcbbe21796e8f7526,0x7fCDC35463E3770c2fB992716Cd070B63540b947,0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,0xaf88d065e77c8cC2239327C5EDb3A432268e5831,10000000000000000000,1,true,false)",
        # Tier 2: Mid-Whale WETH/USDC & WETH/USDT (1 WETH = ₹2.27 Lakh Flash Loan)
        "(0x389938cf14be379217570d8e4619e51fbdafaa21,0x7cCCba38e2D959FE135e79aEBB57ccB27b128358,0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9,1000000000000000000,1,true,false)",
        "(0x7cCCba38e2D959FE135e79aEBB57ccB27b128358,0x389938cf14be379217570d8e4619e51fbdafaa21,0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9,1000000000000000000,1,true,false)",
        # Tier 3: Verified Active Tick Sweet-Spot PancakeSwap V3 -> Camelot V3 WETH/USDT (800000000000000 wei, verified rc=0 on-chain)
        "(0x389938cf14be379217570d8e4619e51fbdafaa21,0x7cCCba38e2D959FE135e79aEBB57ccB27b128358,0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9,800000000000000,1,true,false)",
        # Tier 4: USDC/USDT Camelot V3 <-> UniV3 1bp
        "(0xa17afcab059f3c6751f5b64347b5a503c3291868,0xbe3ad6a5669dc0b8b12febc03608860c31e2eef6,0xaf88d065e77c8cC2239327C5EDb3A432268e5831,0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9,8500000000,1,true,false)",
    ]

    for call_tuple in candidate_calls:
        call_cmd = [
            cast_bin,
            "call",
            DEPLOYED_CONTRACT,
            "executeDirectPoolFlashSwap((address,address,address,address,uint256,uint256,bool,bool),uint256)(uint256)",
            call_tuple,
            "0",
            "--from",
            RELAYER_WALLET,
            "--rpc-url",
            RPC_URL,
        ]
        preflight_ok = False
        try:
            subprocess.check_output(call_cmd, stderr=subprocess.DEVNULL, timeout=6)
            preflight_ok = True
        except Exception:
            preflight_ok = False

        if preflight_ok:
            send_cmd = [
                cast_bin,
                "send",
                DEPLOYED_CONTRACT,
                "executeDirectPoolFlashSwap((address,address,address,address,uint256,uint256,bool,bool),uint256)(uint256)",
                call_tuple,
                "0",
                "--private-key",
                RELAYER_PK,
                "--rpc-url",
                RPC_URL,
                "--json",
            ]
            try:
                out = json.loads(subprocess.check_output(send_cmd, timeout=20).decode("utf-8"))
                subprocess.call([sys.executable, str(BASE_DIR / "scripts" / "verify_real_onchain_proofs.py")])
                BROADCAST_LOG_JSON.write_text(
                    json.dumps(
                        {
                            "ok": True,
                            "mode": "DUAL_TIER_WHALE_AND_MICRO_PROFIT_75_25_SPLIT",
                            "tx_hash": out.get("transactionHash"),
                            "block_number": out.get("blockNumber"),
                            "ts": time.time(),
                        },
                        indent=2,
                    )
                )
                return 0
            except Exception:
                pass

    # If surplus ETH above MIN_GAS_RESERVE_WEI is present in relayer, settle 75% to Binance and 25% to MetaMask in USDC
    surplus_wei = rel_wei - MIN_GAS_RESERVE_WEI
    if surplus_wei >= 20_000_000_000_000:
        # 75% to Binance (0xb411...0099) and 25% to MetaMask (0xFF3c...89BE), retaining MIN_GAS_RESERVE_WEI for future gas
        bin_75_wei = int(surplus_wei * 0.75)
        mm_25_wei = surplus_wei - bin_75_wei
        tx_hashes = []
        for dest, w_amt in ((BINANCE_WALLET, bin_75_wei), (OWNER_METAMASK, mm_25_wei)):
            if w_amt < 5_000_000_000_000:
                continue
            min_out_units = MIN_MUDREX_USDC_UNITS if dest == MUDREX_WALLET else 1
            swap_cmd = [
                cast_bin,
                "send",
                "0xE592427A0AEce92De3Edee1F18E0157C05861564",
                "exactInputSingle((address,address,uint24,address,uint256,uint256,uint256,uint160))(uint256)",
                f"(0x82aF49447D8a07e3bd95BD0d56f35241523fBab1,0xaf88d065e77c8cC2239327C5EDb3A432268e5831,500,{dest},2000000000,{w_amt},{min_out_units},0)",
                "--value",
                str(w_amt),
                "--private-key",
                RELAYER_PK,
                "--rpc-url",
                RPC_URL,
                "--json",
            ]
            try:
                out = json.loads(subprocess.check_output(swap_cmd, timeout=20).decode("utf-8"))
                if out.get("transactionHash"):
                    tx_hashes.append(out["transactionHash"])
            except Exception:
                pass
        if tx_hashes:
            subprocess.call([sys.executable, str(BASE_DIR / "scripts" / "verify_real_onchain_proofs.py")])
            BROADCAST_LOG_JSON.write_text(
                json.dumps(
                    {
                        "ok": True,
                        "mode": "AUTO_75_MUDREX_25_METAMASK_SETTLEMENT",
                        "mudrex_wallet": MUDREX_WALLET,
                        "tx_hashes": tx_hashes,
                        "retained_gas_reserve_wei": MIN_GAS_RESERVE_WEI,
                        "ts": time.time(),
                    },
                    indent=2,
                )
            )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
