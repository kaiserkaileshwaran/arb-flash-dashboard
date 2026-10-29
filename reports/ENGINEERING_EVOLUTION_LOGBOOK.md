# Arbitrum One Flash-Loan Arbitrage Engine — Engineering & Security Audit Logbook

## 1. Verified On-Chain State (Arbitrum One — Chain ID `42161`)

| Resource | Address / Value | Verification Method |
| :--- | :--- | :--- |
| **Owner Wallet (MetaMask)** | `0xFF3c34DAF159741C931F7c421350f8289A9d89BE` | `owner()` on `0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3` |
| **Mudrex USDC Deposit Wallet** | `0xd2529585059e3e5c09c912f0f9570000c2a53f05` (`0.381532 USDC`) | `USDC.balanceOf(...)` |
| **Binance USDC Deposit Wallet** | `0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099` (`0.499198 USDC`) | `USDC.balanceOf(...)` |
| **Deployed Contract (`FlashLoanArbitrage`)** | `0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3` | Deployed at Block `#515637742` (`21,078` runtime bytes) |
| **On-Chain Trades & Profit** | `totalTradesExecuted() = 16`, `1,143,888,056,528 wei` WETH (`$0.002659 USD` gross), `$0.163386 USD` gas spent across 12 receipts (`-$0.160727 USD` net after gas) | `scripts/verify_real_onchain_proofs.py` |

---

## 2. Second-Pass Security & Correctness Audit Fixes

1. **`N1` & `N8` — Strict Pool Verification & Non-Zero Profit Enforcement (`contracts/FlashLoanArbitrage.sol`)**:
   - Enabled `enforceStrictPoolAllowlist = true` by default with verified Arbitrum One core concentrated-liquidity pools in `_isCorePool`.
   - Verified `zeroForOneBorrow` and `zeroForOneSell` directions against pool `token0()` and `token1()` in `_requireVerifiedPool`.
   - Required `minNetProfit > 0` in both `_validateParams` and `_executeSingleDirectPoolFlashSwap`.
   - Reverted unconditionally whenever `postBalance <= preBalance` (removed loss clamping to `0`).
2. **`N2` — WETH Profit & Relayer Gas Refill Accounting (`contracts/FlashLoanArbitrage.sol`)**:
   - Added `receive() external payable {}`.
   - Restricted `_autoRefillRelayerGasIfLow()` strictly to native `ETH` held by the contract (`address(this).balance`), never touching ERC-20 `WETH` trade profit or Aave flash-loan principal, and moved the check to the end of `_distributeNetProfit`.
3. **`N3` & `N11` — Pure-Yul Access Control, Callback Lock & Build Hygiene (`yul/FlashLoanYulAssembly.yul`)**:
   - Moved `FlashLoanYulAssembly.yul` from `contracts/` to `yul/` so `forge build` completes with zero lint errors.
   - Added strict caller authorization (`caller() == owner || caller() == sload(1)`), `setActiveRelayer(address)` (`0x7c08b964`), canonical `authorizedExecutors(address)` (`0x679d86a7`), and active-pool callback lock (`sstore(0, expectedPool)` cleared via `sstore(0, 0)` immediately upon callback entry).
   - Defaulted `DEPLOYED_YUL_CONTRACT` in `scripts/autonomous_asm_broadcaster.py` and `engine/arb_sniper_daemon.c` to the authenticated `0xeFA5Ff871fD48e23CcC3A9DCD2444f3727007Bd3` contract until the hardened Yul runtime is deployed.
4. **`N4` & `N5` — 25% Safety Reserve Accounting & Mutable Active Relayer (`contracts/FlashLoanArbitrage.sol`)**:
   - Kept the 25% `reserveShare` inside `address(this)` during `_distributeNetProfit` when `autoPayoutBps` is active, and restricted `dispatchCustomFromSafetyReserve` to `onlyOwner` and contract-held balances only (never pulling from the owner wallet via `transferFrom`).
   - Added mutable `activeRelayer` (`setActiveRelayer`) and removed hardcoded authorization for `DEFAULT_AUTHORIZED_RELAYER`.
5. **`N9` & `N10` — On-Chain Verifier Accuracy & Keystore Process-Tree Hygiene (`scripts/`)**:
   - Fixed `executeDirectPoolFlashSwap` selector (`0x3260f1cc`) and `executeMultiMaxDirectPoolFlashSwaps` (`0xd34ac4bb`) decoding, live Chainlink `ETH/USD` (`0x639Fe6ab55C921f74e7fac1ee960C0B6293ba612`) pricing, and transaction categorization (`DIRECT_ERC20_USDC_TRANSFER` vs `FLASH_CONTRACT_EXECUTION`) in `scripts/verify_real_onchain_proofs.py` and `engine/live_rpc_scanner.py`.
   - Replaced all CLI raw-key arguments with `ETH_KEYSTORE` / `ETH_PASSWORD` environment variables and portable `shutil.which` binary resolution.
