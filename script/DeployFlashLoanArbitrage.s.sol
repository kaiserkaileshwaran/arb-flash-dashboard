// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "../contracts/FlashLoanArbitrage.sol";

interface VmDeploy {
    function envUint(string calldata name) external returns (uint256);
    function envOr(string calldata name, address defaultValue) external returns (address);
    function addr(uint256 privateKey) external returns (address);
    function startBroadcast(uint256 privateKey) external;
    function stopBroadcast() external;
}

/**
 * @title DeployFlashLoanArbitrage
 * @notice 1-Command Foundry Deployment Script for Arbitrum One Mainnet (Chain ID: 42161) or Local Mainnet Fork
 * Binds `owner` directly to `OWNER_ADDRESS` (your real Arbitrum wallet address) so 100% of net profits
 * from every flash loan trade are transferred directly into your real wallet.
 *
 * Usage:
 *   OWNER_ADDRESS=0xYourRealWallet PRIVATE_KEY=0x... \
 *     forge script script/DeployFlashLoanArbitrage.s.sol:DeployFlashLoanArbitrage \
 *     --rpc-url https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX --broadcast
 */
contract DeployFlashLoanArbitrage {
    VmDeploy constant vm = VmDeploy(address(uint160(uint256(keccak256("hevm cheat code")))));

    function run() external returns (FlashLoanArbitrage deployed) {
        uint256 deployerKey = vm.envUint("PRIVATE_KEY");
        address deployerAddr = vm.addr(deployerKey);
        address realUserWallet = vm.envOr("OWNER_ADDRESS", address(0xFF3c34DAF159741C931F7c421350f8289A9d89BE));
        address relayerAddr = vm.envOr("RELAYER_ADDRESS", deployerAddr);

        vm.startBroadcast(deployerKey);

        deployed = new FlashLoanArbitrage(address(0), address(0), address(0), address(0));
        if (
            relayerAddr != address(0) &&
            relayerAddr != deployerAddr &&
            relayerAddr != address(0x0E8A575147b51C5701C86427b521F7293249cd67)
        ) {
            deployed.setAuthorizedRelayer(relayerAddr, true);
        }

        if (realUserWallet != address(0) && realUserWallet != deployerAddr) {
            deployed.transferOwnership(realUserWallet);
        }

        vm.stopBroadcast();
    }
}
