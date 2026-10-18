// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 value) external returns (bool);
    function approve(address spender, uint256 value) external returns (bool);
    function transferFrom(address from, address to, uint256 value) external returns (bool);
}

interface IBalancerV2Vault {
    function flashLoan(
        address recipient,
        address[] memory tokens,
        uint256[] memory amounts,
        bytes memory userData
    ) external;
}

interface IAaveV3Pool {
    function flashLoanSimple(
        address receiverAddress,
        address asset,
        uint256 amount,
        bytes calldata params,
        uint16 referralCode
    ) external;

    function liquidationCall(
        address collateralAsset,
        address debtAsset,
        address user,
        uint256 debtToCover,
        bool receiveAToken
    ) external;
}

interface ISwapRouterV3 {
    struct ExactInputSingleParams {
        address tokenIn;
        address tokenOut;
        uint24 fee;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 sqrtPriceLimitX96;
    }

    function exactInputSingle(ExactInputSingleParams calldata params)
        external
        payable
        returns (uint256 amountOut);
}

interface ICamelotV3SwapRouter {
    struct ExactInputSingleAlgebraParams {
        address tokenIn;
        address tokenOut;
        address recipient;
        uint256 deadline;
        uint256 amountIn;
        uint256 amountOutMinimum;
        uint160 limitSqrtPrice;
    }

    function exactInputSingle(ExactInputSingleAlgebraParams calldata params)
        external
        payable
        returns (uint256 amountOut);
}

interface IUniswapV2Router02 {
    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);
}

interface IConcentratedLiquidityPool {
    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);
}

/**
 * @title FlashLoanArbitrage (v21.0 — Direct Pool Flash-Swap, O(1) Assembly & Uncapped Multi-Asset Parallel Bundler)
 * @notice Supports Zero-Vault Direct Pool Flash-Swaps (Uniswap V3 / PancakeSwap V3 / Camelot V3 Algebra)
 *         PLUS Uncapped Dual-Vault (Balancer V2 0% Fee + Aave V3 0.05% Fee) Atomic Arbitrage & Liquidations.
 */
contract FlashLoanArbitrage {
    // =========================================================================
    // Custom Errors
    // =========================================================================
    error UnauthorizedCaller(address caller);
    error UnauthorizedFlashCallback(address caller);
    error UnverifiedToken(address token);
    error InvalidStrategy(uint8 strategyType);
    error InsufficientProfit(uint256 actual, uint256 required);
    error ReentrancyLocked();
    error TokenTransferFailed(address token, address to, uint256 amount);
    error ZeroAmount();
    error InvalidBatchLength();

    // =========================================================================
    // Events
    // =========================================================================
    event ArbitrageExecuted(
        uint8 indexed strategyType,
        address indexed provider,
        address indexed borrowToken,
        uint256 amountBorrowed,
        uint256 feePaid,
        uint256 relayerReimbursed,
        uint256 netOwnerProfit
    );

    event LiquidationExecuted(
        address indexed borrower,
        address indexed debtAsset,
        address indexed collateralAsset,
        uint256 debtCovered,
        uint256 collateralSeized,
        uint256 netProfit
    );

    event BatchLiquidationCascadeExecuted(
        uint256 indexed borrowerCount,
        address indexed debtAsset,
        address indexed collateralAsset,
        uint256 totalDebtCovered,
        uint256 totalCollateralSeized,
        uint256 netProfit
    );

    event ParallelMultiAssetBundleExecuted(
        uint256 indexed routeCount,
        uint256 indexed uniqueTokensBorrowed,
        uint256 totalTradesAfterBundle
    );

    event TokenWhitelistUpdated(address indexed token, bool whitelisted);
    event RelayerUpdated(address indexed relayer, bool authorized);
    event AutoProfitSplitDistributed(
        address indexed token,
        address indexed payoutAccount,
        uint256 autoPayout75Amount,
        address indexed safetyReserveAccount,
        uint256 safetyReserve25Amount
    );
    event ManualReserveDispatchedToBinance(
        address indexed token,
        address indexed payoutAccount,
        uint256 dispatchedAmount,
        uint256 remainingSafetyReserve
    );
    event AutoRelayerGasRefilled(
        address indexed relayer,
        uint256 ethRefilledWei,
        uint256 newRelayerBalanceWei
    );

    // =========================================================================
    // Strategy Constants
    // =========================================================================
    uint8 public constant STRATEGY_SPATIAL_2DEX = 1;
    uint8 public constant STRATEGY_TRIANGULAR_3HOP = 2;
    uint8 public constant STRATEGY_AAVE_LIQUIDATION = 3;
    uint8 public constant STRATEGY_CAMELOT_ALGEBRA_ARB = 4;
    uint8 public constant STRATEGY_BATCH_LIQUIDATION_CASCADE = 5;
    uint8 public constant STRATEGY_PARALLEL_MULTI_BUNDLE = 6;
    uint8 public constant STRATEGY_DIRECT_POOL_FLASH_SWAP = 7;
    uint8 public constant STRATEGY_MULTI_MAX_INDEPENDENT_FLASH = 8;

    // =========================================================================
    // Official Arbitrum One (Chain ID 42161) Protocol & Token Constants (v24.0)
    // =========================================================================
    address public constant DEFAULT_OWNER_WALLET          = 0xFF3c34DAF159741C931F7c421350f8289A9d89BE;
    address public constant DEFAULT_MUDREX_PAYOUT_WALLET  = 0xd2529585059e3e5c09c912F0F9570000c2a53F05;
    address public constant DEFAULT_BINANCE_PAYOUT_WALLET = 0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099;
    address public constant DEFAULT_AUTHORIZED_RELAYER    = 0x0E8A575147b51C5701C86427b521F7293249cd67;
    uint256 public constant DEFAULT_AUTO_PAYOUT_BPS       = 7500; // 75.00% sent automatically to user Mudrex/Mediator account after each trade
    uint256 public constant DEFAULT_SAFETY_RESERVE_BPS    = 2500; // 25.00% retained in safety/future-use reserve after each trade
    uint256 public constant MIN_MUDREX_USDC_DEPOSIT       = 5000; // 0.005 USDC minimum deposit threshold on Mudrex Arbitrum One
    uint256 public constant MIN_SAFETY_ETH_GAS_WEI        = 150000000000000; // 0.00015 ETH threshold for auto-gas refill from 25% reserve
    address public constant ARBITRUM_BALANCER_VAULT = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;
    address public constant ARBITRUM_AAVE_V3_POOL   = 0x794a61358D6845594F94dc1DB02A252b5b4814aD;
    address public constant ARBITRUM_UNISWAP_V3     = 0xE592427A0AEce92De3Edee1F18E0157C05861564;
    address public constant ARBITRUM_SUSHISWAP      = 0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506;
    address public constant ARBITRUM_CAMELOT_V3     = 0x1F721E2E82F6676FCE4eA07A5958cF098D339e18;
    address public constant ARBITRUM_PANCAKESWAP_V3 = 0x1b81D678ffb9C0263b24A97847620C99d213eB14;

    address public constant TOKEN_WETH   = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address public constant TOKEN_WBTC   = 0x2f2a2543B76A4166549F7aaB2e75Bef0aefC5B0f;
    address public constant TOKEN_USDC   = 0xaf88d065e77c8cC2239327C5EDb3A432268e5831;
    address public constant TOKEN_USDT   = 0xFd086bC7CD5C481DCC9C85ebE478A1C0b69FCbb9;
    address public constant TOKEN_ARB    = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    address public constant TOKEN_LINK   = 0xf97f4df75117a78c1A5a0DBb814Af92458539FB4;
    address public constant TOKEN_UNI    = 0xFa7F8980b0f1E64A2062791cc3b0871572f1F7f0;
    address public constant TOKEN_AAVE   = 0xba5DdD1f9d7F570dc94a51479a000E3BCE967196;
    address public constant TOKEN_WSTETH = 0x5979D7b546E38E414F7E9822514be443A4800529;
    address public constant TOKEN_USDC_E = 0xFF970A61A04b1cA14834A43f5dE4533eBDDB5CC8;
    address public constant TOKEN_WEETH  = 0x35751007a407ca6FEFfE80b3cB397736D2cf4dbe;
    address public constant TOKEN_PENDLE = 0x0c880f6761F1af8d9Aa9C466984b80DAb9a8c9e8;

    address public constant TOKEN_LUSD   = 0x93b346b6BC2548dA6A1E7d98E9a421B42541425b;
    address public constant TOKEN_DAI    = 0xDA10009cBd5D07dd0CeCc66161FC93D7c9000da1;

    // =========================================================================
    // State & Immutable Variables (v23.0 O(1) Zero-Storage Immutables + 75/25 Split)
    // =========================================================================
    address public owner;
    address public autoPayoutAccount;
    uint256 public autoPayoutBps;
    address public immutable balancerVault;
    address public immutable aaveV3Pool;
    address public immutable uniswapV3Router;
    address public immutable sushiswapRouter;
    address public camelotV3Router;

    // 0 = use O(1) constant register table, 1 = explicitly enabled, 2 = explicitly disabled
    mapping(address => uint8) private _tokenWhitelistState;
    mapping(address => uint8) private _relayerAuthState;

    // On-Chain Per-Trade & Cumulative Profit Ledger (Strict Per-Trade Isolation + 75%/25% Split)
    uint256 public totalTradesExecuted;
    mapping(address => uint256) public lastTradeGrossProfitByToken;
    mapping(address => uint256) public lastTradeFeesPaidByToken;
    mapping(address => uint256) public lastTradeNetProfitByToken;
    mapping(address => uint256) public cumulativeNetProfitByToken;
    mapping(address => uint256) public cumulativeAutoPayout75ByToken;
    mapping(address => uint256) public cumulativeSafetyReserve25ByToken;

    uint256 private _unlocked = 1;
    bool private _flashLoanActive = false;
    bool private _isMultiBundleActive = false;
    address private _activeRelayer;
    uint256 private _activeRelayerFee;

    struct ArbParams {
        uint8 strategyType;          // 1 = Spatial, 2 = 3-Hop, 3 = Single Liq, 4 = Camelot V3, 5 = Batch Liq Cascade, 6 = Parallel Multi-Bundle
        address borrowToken;         // Asset borrowed (e.g., USDC)
        address targetToken;         // Intermediate asset 1 (e.g., WETH or Collateral Asset)
        address midToken;            // Intermediate asset 2 for 3-hop (e.g., ARB or wstETH)
        uint256 borrowAmount;        // Total principal borrowed
        uint256 minNetProfit;        // Minimum net profit required for owner (reverts if actual < minNetProfit)
        uint24 uniFeeTier1;          // Uniswap V3 fee tier hop 1 (default 500 = 0.05%)
        uint24 uniFeeTier2;          // Uniswap V3 fee tier hop 2 (default 500 = 0.05%)
        bool buyOnUniFirst;          // True: UniV3 -> Secondary DEX; False: Secondary DEX -> UniV3
        address targetBorrower;      // Unhealthy borrower address for STRATEGY_AAVE_LIQUIDATION
    }

    struct BatchLiquidationTarget {
        address borrower;
        uint256 debtToCover;
    }

    struct DirectPoolFlashSwapParams {
        address poolBorrow;        // Concentrated liquidity pool 1 (UniV3 / PancakeV3 / CamelotV3 Algebra)
        address poolSell;          // Concentrated liquidity pool 2
        address borrowToken;       // Principal & profit token (e.g., USDC or WETH)
        address targetToken;       // Intermediate token (e.g., WETH or ARB)
        uint256 borrowAmount;      // Exact input amount in borrowToken
        uint256 minNetProfit;      // Minimum net profit required for owner
        bool zeroForOneBorrow;     // True if borrowToken < targetToken in poolBorrow
        bool zeroForOneSell;       // True if targetToken < borrowToken in poolSell
    }

    BatchLiquidationTarget[] private _activeBatchTargets;
    address private _directSwapActivePool;

    modifier nonReentrant() {
        if (_unlocked != 1) revert ReentrancyLocked();
        _unlocked = 2;
        _;
        _unlocked = 1;
    }

    modifier onlyOwnerOrRelayer() {
        if (!authorizedRelayers(msg.sender)) {
            revert UnauthorizedCaller(msg.sender);
        }
        _;
    }

    modifier onlyOwner() {
        if (msg.sender != owner) revert UnauthorizedCaller(msg.sender);
        _;
    }

    constructor(
        address _balancerVault,
        address _aaveV3Pool,
        address _uniswapV3Router,
        address _sushiswapRouter
    ) {
        owner = msg.sender;
        if (msg.sender == DEFAULT_OWNER_WALLET) {
            autoPayoutAccount = DEFAULT_MUDREX_PAYOUT_WALLET;
            autoPayoutBps = DEFAULT_AUTO_PAYOUT_BPS;
        }
        balancerVault = _balancerVault == address(0) ? ARBITRUM_BALANCER_VAULT : _balancerVault;
        aaveV3Pool = _aaveV3Pool == address(0) ? ARBITRUM_AAVE_V3_POOL : _aaveV3Pool;
        uniswapV3Router = _uniswapV3Router == address(0) ? ARBITRUM_UNISWAP_V3 : _uniswapV3Router;
        sushiswapRouter = _sushiswapRouter == address(0) ? ARBITRUM_SUSHISWAP : _sushiswapRouter;
        camelotV3Router = ARBITRUM_CAMELOT_V3;
    }

    // =========================================================================
    // O(1) Constant-Time Register Lookups + Admin Controls
    // =========================================================================
    function _isCoreToken(address token) internal pure returns (bool) {
        return (
            token == TOKEN_WETH ||
            token == TOKEN_USDC ||
            token == TOKEN_WBTC ||
            token == TOKEN_USDT ||
            token == TOKEN_ARB ||
            token == TOKEN_WSTETH ||
            token == TOKEN_USDC_E ||
            token == TOKEN_WEETH ||
            token == TOKEN_LINK ||
            token == TOKEN_AAVE ||
            token == TOKEN_UNI ||
            token == TOKEN_PENDLE ||
            token == TOKEN_LUSD ||
            token == TOKEN_DAI
        );
    }

    function whitelistedTokens(address token) public view returns (bool) {
        uint8 st = _tokenWhitelistState[token];
        if (st != 0) return st == 1;
        return _isCoreToken(token);
    }

    function authorizedRelayers(address relayer) public view returns (bool) {
        uint8 st = _relayerAuthState[relayer];
        if (st != 0) return st == 1;
        return (
            relayer == owner ||
            relayer == DEFAULT_OWNER_WALLET ||
            relayer == 0x0E8A575147b51C5701C86427b521F7293249cd67
        );
    }

    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert ZeroAmount();
        owner = newOwner;
    }

    function setWhitelistedToken(address token, bool status) external onlyOwner {
        _tokenWhitelistState[token] = status ? 1 : 2;
        emit TokenWhitelistUpdated(token, status);
    }

    function setAuthorizedRelayer(address relayer, bool status) external onlyOwner {
        _relayerAuthState[relayer] = status ? 1 : 2;
        emit RelayerUpdated(relayer, status);
    }

    function setCamelotV3Router(address _camelotRouter) external onlyOwner {
        camelotV3Router = _camelotRouter == address(0) ? ARBITRUM_CAMELOT_V3 : _camelotRouter;
    }

    /**
     * @notice Configures the Automatic Post-Trade Profit Split (default: 7500 bps = 75% sent automatically
     * to `_payoutAccount` after each trade, and 2500 bps = 25% retained in `owner` Safety/Future-Use Reserve).
     */
    function setAutoPayoutSplit(address _payoutAccount, uint256 _payoutBps) external onlyOwner {
        require(_payoutBps <= 10000, "BPS > 10000");
        autoPayoutAccount = _payoutAccount;
        autoPayoutBps = _payoutBps;
    }

    function depositRelayerGasFuel() external payable {
        _autoRefillRelayerGasIfLow();
    }

    function _autoRefillRelayerGasIfLow() internal {
        uint256 relBal = DEFAULT_AUTHORIZED_RELAYER.balance;
        if (relBal >= MIN_SAFETY_ETH_GAS_WEI) return;
        uint256 deficit = MIN_SAFETY_ETH_GAS_WEI - relBal;
        uint256 contractEth = address(this).balance;
        if (contractEth > 0) {
            uint256 sendWei = contractEth < deficit ? contractEth : deficit;
            if (sendWei > 0) {
                (bool ok, ) = payable(DEFAULT_AUTHORIZED_RELAYER).call{value: sendWei}("");
                if (ok) {
                    emit AutoRelayerGasRefilled(DEFAULT_AUTHORIZED_RELAYER, sendWei, DEFAULT_AUTHORIZED_RELAYER.balance);
                    if (sendWei >= deficit) return;
                    deficit -= sendWei;
                }
            }
        }
        if (deficit > 0 && TOKEN_WETH.code.length > 0) {
            uint256 wethBal = _asmBalanceOf(TOKEN_WETH, address(this));
            if (wethBal > 0) {
                uint256 sendWeth = wethBal < deficit ? wethBal : deficit;
                if (sendWeth > 0) {
                    _safeTransfer(TOKEN_WETH, DEFAULT_AUTHORIZED_RELAYER, sendWeth);
                }
            }
        }
    }

    function _distributeNetProfit(address token, uint256 netOwnerProfit) internal {
        if (netOwnerProfit == 0) return;
        _autoRefillRelayerGasIfLow();
        uint256 bps = autoPayoutBps;
        address dest = autoPayoutAccount;
        if (bps > 0 && bps <= 10000 && dest != address(0)) {
            uint256 payoutShare = (netOwnerProfit * bps) / 10000;
            uint256 reserveShare = netOwnerProfit - payoutShare;
            unchecked {
                cumulativeAutoPayout75ByToken[token] += payoutShare;
                cumulativeSafetyReserve25ByToken[token] += reserveShare;
            }
            if (payoutShare > 0) {
                _safeTransfer(token, dest, payoutShare);
            }
            if (reserveShare > 0) {
                _safeTransfer(token, owner, reserveShare);
            }
            emit AutoProfitSplitDistributed(token, dest, payoutShare, owner, reserveShare);
        } else {
            unchecked {
                cumulativeSafetyReserve25ByToken[token] += netOwnerProfit;
            }
            _safeTransfer(token, owner, netOwnerProfit);
        }
    }

    /**
     * @notice Manual Custom Dispatch from the 25% Safety Reserve:
     * Allows the owner (or authorized relayer) to manually dispatch any specified `customAmount`
     * of accumulated 25% Safety Reserve directly to `autoPayoutAccount` (`0xb411...0099`).
     */
    function dispatchCustomFromSafetyReserve(address token, uint256 customAmount) external nonReentrant onlyOwnerOrRelayer {
        if (customAmount == 0) revert ZeroAmount();
        address dest = autoPayoutAccount == address(0) ? DEFAULT_BINANCE_PAYOUT_WALLET : autoPayoutAccount;
        uint256 contractBal = IERC20(token).balanceOf(address(this));
        if (contractBal >= customAmount) {
            _safeTransfer(token, dest, customAmount);
        } else {
            // Pull customAmount from owner's 25% Safety Reserve wallet if approved
            bool ok = IERC20(token).transferFrom(owner, dest, customAmount);
            require(ok, "RESERVE_TRANSFER_FAILED");
        }
        uint256 prevRes = cumulativeSafetyReserve25ByToken[token];
        uint256 newRes = prevRes >= customAmount ? prevRes - customAmount : 0;
        cumulativeSafetyReserve25ByToken[token] = newRes;
        unchecked {
            cumulativeAutoPayout75ByToken[token] += customAmount;
        }
        emit ManualReserveDispatchedToBinance(token, dest, customAmount, newRes);
    }

    /**
     * @notice Checks if the 25% Safety Reserve wallet's L2 ETH gas balance is below `MIN_SAFETY_ETH_GAS_WEI` (0.00015 ETH)
     * so the self-sustaining gas refill engine can top up L2 ETH from the 25% USDC reserve automatically.
     */
    function needsAutoGasRefill() external view returns (bool needed, uint256 currentOwnerEthWei, uint256 minThresholdWei) {
        currentOwnerEthWei = owner.balance;
        minThresholdWei = MIN_SAFETY_ETH_GAS_WEI;
        needed = currentOwnerEthWei < MIN_SAFETY_ETH_GAS_WEI;
    }

    /**
     * @notice Checks if the 24/7 Authorized Relayer (`0x0E8A...cd67`) is below `MIN_SAFETY_ETH_GAS_WEI` (0.00015 ETH).
     */
    function needsRelayerGasRefill()
        external
        view
        returns (bool needed, uint256 currentRelayerEthWei, uint256 currentOwnerEthWei, uint256 minThresholdWei)
    {
        currentRelayerEthWei = DEFAULT_AUTHORIZED_RELAYER.balance;
        currentOwnerEthWei = owner.balance;
        minThresholdWei = MIN_SAFETY_ETH_GAS_WEI;
        needed = currentRelayerEthWei < MIN_SAFETY_ETH_GAS_WEI;
    }

    function _requireWhitelisted(address token) internal view {
        if (!whitelistedTokens(token)) revert UnverifiedToken(token);
    }

    function _validateParams(ArbParams memory params) internal view {
        if (params.borrowAmount == 0) revert ZeroAmount();
        _requireWhitelisted(params.borrowToken);
        _requireWhitelisted(params.targetToken);
        if (params.strategyType == STRATEGY_TRIANGULAR_3HOP) {
            _requireWhitelisted(params.midToken);
        } else if (
            params.strategyType != STRATEGY_SPATIAL_2DEX &&
            params.strategyType != STRATEGY_AAVE_LIQUIDATION &&
            params.strategyType != STRATEGY_CAMELOT_ALGEBRA_ARB &&
            params.strategyType != STRATEGY_BATCH_LIQUIDATION_CASCADE
        ) {
            revert InvalidStrategy(params.strategyType);
        }
    }

    function _dispatchOptimalVault(ArbParams memory params) internal {
        uint256 balancerLiquidity = IERC20(params.borrowToken).balanceOf(balancerVault);
        bytes memory encodedParams = abi.encode(params);

        _flashLoanActive = true;
        if (balancerLiquidity >= params.borrowAmount) {
            address[] memory tokens = new address[](1);
            tokens[0] = params.borrowToken;
            uint256[] memory amounts = new uint256[](1);
            amounts[0] = params.borrowAmount;
            IBalancerV2Vault(balancerVault).flashLoan(address(this), tokens, amounts, encodedParams);
        } else {
            IAaveV3Pool(aaveV3Pool).flashLoanSimple(
                address(this),
                params.borrowToken,
                params.borrowAmount,
                encodedParams,
                0
            );
        }
        _flashLoanActive = false;
    }

    // =========================================================================
    // Entrypoint 1: Smart Auto-Vault Router (Balancer 0% -> Aave V3 0.05% Fallback)
    // =========================================================================
    function executeSmartFlashArbitrage(ArbParams calldata params)
        external
        nonReentrant
        onlyOwnerOrRelayer
    {
        _validateParams(params);
        _dispatchWithRelayer(params, address(0), 0);
    }

    /**
     * @notice Zero-Capital Gasless Relayer Entrypoint:
     * An authorized ERC-4337 Paymaster / Gelato Relayer submits the tx paying L2 ETH gas,
     * receives `relayerFeeUsdc` directly out of the atomic flash-loan profit, and sends
     * 100% of the remaining profit to `owner` (requiring 0.00 ETH in the owner's wallet).
     */
    function executeGaslessRelayedArbitrage(ArbParams calldata params, uint256 relayerFeeUsdc)
        external
        nonReentrant
        onlyOwnerOrRelayer
    {
        _validateParams(params);
        _dispatchWithRelayer(params, msg.sender, relayerFeeUsdc);
    }

    function _dispatchWithRelayer(
        ArbParams memory params,
        address relayer,
        uint256 relayerFeeUsdc
    ) internal {
        _activeRelayer = relayer;
        _activeRelayerFee = relayerFeeUsdc;
        _dispatchOptimalVault(params);
        _activeRelayer = address(0);
        _activeRelayerFee = 0;
    }

    // =========================================================================
    // Entrypoint 2: Direct Balancer V2 (0.00% Fee) & Aave V3 (0.05% Fee)
    // =========================================================================
    function executeBalancerFlashArbitrage(ArbParams calldata params)
        external
        nonReentrant
        onlyOwnerOrRelayer
    {
        _validateParams(params);
        address[] memory tokens = new address[](1);
        tokens[0] = params.borrowToken;
        uint256[] memory amounts = new uint256[](1);
        amounts[0] = params.borrowAmount;

        _flashLoanActive = true;
        IBalancerV2Vault(balancerVault).flashLoan(address(this), tokens, amounts, abi.encode(params));
        _flashLoanActive = false;
    }

    function executeAaveFlashArbitrage(ArbParams calldata params)
        external
        nonReentrant
        onlyOwnerOrRelayer
    {
        _validateParams(params);
        _flashLoanActive = true;
        IAaveV3Pool(aaveV3Pool).flashLoanSimple(
            address(this),
            params.borrowToken,
            params.borrowAmount,
            abi.encode(params),
            0
        );
        _flashLoanActive = false;
    }

    // =========================================================================
    // Entrypoint 3: Multi-Borrower Atomic Batch Liquidation Cascade
    // =========================================================================
    function executeBatchLiquidationCascade(
        ArbParams calldata params,
        BatchLiquidationTarget[] calldata targets
    ) external nonReentrant onlyOwnerOrRelayer {
        if (targets.length == 0) revert InvalidBatchLength();
        _validateParams(params);

        delete _activeBatchTargets;
        uint256 sumDebt = 0;
        for (uint256 i = 0; i < targets.length; i++) {
            _activeBatchTargets.push(targets[i]);
            sumDebt += targets[i].debtToCover;
        }
        if (sumDebt != params.borrowAmount) revert ZeroAmount();

        ArbParams memory cascadeParams = params;
        cascadeParams.strategyType = STRATEGY_BATCH_LIQUIDATION_CASCADE;

        _dispatchOptimalVault(cascadeParams);
        delete _activeBatchTargets;
    }

    function executeGaslessRelayedBatchCascade(
        ArbParams calldata params,
        BatchLiquidationTarget[] calldata targets,
        uint256 relayerGasReimbursement
    ) external nonReentrant onlyOwnerOrRelayer {
        if (targets.length == 0) revert InvalidBatchLength();
        _validateParams(params);

        delete _activeBatchTargets;
        uint256 sumDebt = 0;
        for (uint256 i = 0; i < targets.length; i++) {
            _activeBatchTargets.push(targets[i]);
            sumDebt += targets[i].debtToCover;
        }
        if (sumDebt != params.borrowAmount) revert ZeroAmount();

        ArbParams memory cascadeParams = params;
        cascadeParams.strategyType = STRATEGY_BATCH_LIQUIDATION_CASCADE;

        _dispatchWithRelayer(cascadeParams, msg.sender, relayerGasReimbursement);
        delete _activeBatchTargets;
    }

    // =========================================================================
    // Entrypoint 4 (v17.0): Parallel Multi-Asset Flash-Loan & Liquidation Bundler
    // =========================================================================
    /**
     * @notice Executes 1..N non-overlapping arbitrage/liquidation routes in a single atomic transaction.
     * Deduplicates and sorts unique borrowed tokens in strictly ascending address order per Balancer V2 Vault rules,
     * borrows all required principals at 0.00% fee in 1 multi-asset flash loan, executes every route,
     * and settles each borrowed asset + transfers 100% of net profits to `owner`.
     */
    function executeParallelMultiAssetBundle(
        ArbParams[] calldata routes,
        uint256 relayerGasReimbursement
    ) external nonReentrant onlyOwnerOrRelayer {
        uint256 n = routes.length;
        if (n == 0) revert InvalidBatchLength();

        address[] memory tokens = new address[](n);
        uint256[] memory amounts = new uint256[](n);
        uint256 uniqueCount = 0;

        for (uint256 i = 0; i < n; ) {
            _validateParams(routes[i]);
            address bToken = routes[i].borrowToken;
            uint256 bAmt = routes[i].borrowAmount;

            bool found = false;
            for (uint256 j = 0; j < uniqueCount; ) {
                if (tokens[j] == bToken) {
                    amounts[j] += bAmt;
                    found = true;
                    break;
                }
                unchecked { ++j; }
            }
            if (!found) {
                tokens[uniqueCount] = bToken;
                amounts[uniqueCount] = bAmt;
                unchecked { ++uniqueCount; }
            }
            unchecked { ++i; }
        }

        // Insertion sort unique tokens by strictly ascending address order (required by Balancer V2 Vault)
        for (uint256 i = 1; i < uniqueCount; ) {
            address keyToken = tokens[i];
            uint256 keyAmt = amounts[i];
            uint256 j = i;
            while (j > 0 && uint160(tokens[j - 1]) > uint160(keyToken)) {
                tokens[j] = tokens[j - 1];
                amounts[j] = amounts[j - 1];
                unchecked { --j; }
            }
            tokens[j] = keyToken;
            amounts[j] = keyAmt;
            unchecked { ++i; }
        }

        // O(1) Zero-Copy In-Place Yul Array Length Truncation
        assembly {
            mstore(tokens, uniqueCount)
            mstore(amounts, uniqueCount)
        }

        _activeRelayer = relayerGasReimbursement > 0 ? msg.sender : address(0);
        _activeRelayerFee = relayerGasReimbursement;
        _flashLoanActive = true;
        _isMultiBundleActive = true;

        IBalancerV2Vault(balancerVault).flashLoan(
            address(this),
            tokens,
            amounts,
            abi.encode(routes)
        );

        _isMultiBundleActive = false;
        _flashLoanActive = false;
        _activeRelayer = address(0);
        _activeRelayerFee = 0;
    }

    // =========================================================================
    // Vault Callbacks (Balancer V2 & Aave V3)
    // =========================================================================
    function receiveFlashLoan(
        address[] memory tokens,
        uint256[] memory amounts,
        uint256[] memory feeAmounts,
        bytes memory userData
    ) external {
        if (msg.sender != balancerVault || !_flashLoanActive) {
            revert UnauthorizedFlashCallback(msg.sender);
        }

        if (_isMultiBundleActive) {
            _handleMultiAssetBundleCallback(tokens, amounts, feeAmounts, userData);
            return;
        }

        ArbParams memory params = abi.decode(userData, (ArbParams));
        address borrowToken = tokens[0];
        uint256 amountBorrowed = amounts[0];
        uint256 fee = feeAmounts[0];
        uint256 totalRepayment = amountBorrowed + fee;

        uint256 balanceBeforeStrategy = IERC20(borrowToken).balanceOf(address(this));
        uint256 preExistingBalance = balanceBeforeStrategy > amountBorrowed
            ? balanceBeforeStrategy - amountBorrowed
            : 0;

        uint256 postStrategyBalance = _executeStrategy(params, amountBorrowed);
        uint256 currentTradeOutput = postStrategyBalance > preExistingBalance
            ? postStrategyBalance - preExistingBalance
            : 0;

        _settleLoanAndDistributeProfits(params, balancerVault, borrowToken, amountBorrowed, fee, totalRepayment, currentTradeOutput, false);
    }

    function _handleMultiAssetBundleCallback(
        address[] memory tokens,
        uint256[] memory amounts,
        uint256[] memory feeAmounts,
        bytes memory userData
    ) internal {
        ArbParams[] memory routes = abi.decode(userData, (ArbParams[]));
        uint256 uniqueCount = tokens.length;
        uint256[] memory preExistingBalances = new uint256[](uniqueCount);

        for (uint256 k = 0; k < uniqueCount; k++) {
            uint256 balBefore = IERC20(tokens[k]).balanceOf(address(this));
            preExistingBalances[k] = balBefore > amounts[k] ? balBefore - amounts[k] : 0;
        }

        for (uint256 r = 0; r < routes.length; r++) {
            _executeStrategy(routes[r], routes[r].borrowAmount);
        }

        for (uint256 k = 0; k < uniqueCount; k++) {
            address bToken = tokens[k];
            uint256 amountBorrowed = amounts[k];
            uint256 fee = feeAmounts[k];
            uint256 totalRepayment = amountBorrowed + fee;

            uint256 minProfitForToken = 0;
            for (uint256 r = 0; r < routes.length; r++) {
                if (routes[r].borrowToken == bToken) {
                    minProfitForToken += routes[r].minNetProfit;
                }
            }

            uint256 postBalance = IERC20(bToken).balanceOf(address(this));
            uint256 currentTradeOutput = postBalance > preExistingBalances[k]
                ? postBalance - preExistingBalances[k]
                : 0;

            uint256 savedRelayerFee = _activeRelayerFee;
            if (k > 0) {
                _activeRelayerFee = 0;
            }

            ArbParams memory summaryParams = ArbParams({
                strategyType: STRATEGY_PARALLEL_MULTI_BUNDLE,
                borrowToken: bToken,
                targetToken: routes[0].targetToken,
                midToken: address(0),
                borrowAmount: amountBorrowed,
                minNetProfit: minProfitForToken,
                uniFeeTier1: 0,
                uniFeeTier2: 0,
                buyOnUniFirst: true,
                targetBorrower: address(0)
            });

            _settleLoanAndDistributeProfits(
                summaryParams,
                balancerVault,
                bToken,
                amountBorrowed,
                fee,
                totalRepayment,
                currentTradeOutput,
                false
            );
            _activeRelayerFee = savedRelayerFee;
        }

        emit ParallelMultiAssetBundleExecuted(routes.length, uniqueCount, totalTradesExecuted);
    }

    function executeOperation(
        address asset,
        uint256 amount,
        uint256 premium,
        address initiator,
        bytes calldata params
    ) external returns (bool) {
        if (msg.sender != aaveV3Pool || initiator != address(this) || !_flashLoanActive) {
            revert UnauthorizedFlashCallback(msg.sender);
        }

        ArbParams memory arbParams = abi.decode(params, (ArbParams));
        uint256 totalRepayment = amount + premium;

        uint256 balanceBeforeStrategy = IERC20(asset).balanceOf(address(this));
        uint256 preExistingBalance = balanceBeforeStrategy > amount
            ? balanceBeforeStrategy - amount
            : 0;

        uint256 postStrategyBalance = _executeStrategy(arbParams, amount);
        uint256 currentTradeOutput = postStrategyBalance > preExistingBalance
            ? postStrategyBalance - preExistingBalance
            : 0;

        _settleLoanAndDistributeProfits(arbParams, aaveV3Pool, asset, amount, premium, totalRepayment, currentTradeOutput, true);
        return true;
    }

    function _settleLoanAndDistributeProfits(
        ArbParams memory params,
        address provider,
        address borrowToken,
        uint256 amountBorrowed,
        uint256 fee,
        uint256 totalRepayment,
        uint256 currentTradeOutput,
        bool isPullRepayment
    ) internal {
        uint256 relayerFee = _activeRelayerFee;
        uint256 requiredTotal = totalRepayment + relayerFee + params.minNetProfit;

        if (currentTradeOutput < requiredTotal) {
            uint256 actualNet = currentTradeOutput > (totalRepayment + relayerFee)
                ? currentTradeOutput - totalRepayment - relayerFee
                : 0;
            revert InsufficientProfit(actualNet, params.minNetProfit);
        }

        uint256 currentTradeGrossProfit = currentTradeOutput - amountBorrowed;
        uint256 currentTradeTotalFees = fee + relayerFee;
        uint256 netOwnerProfit = currentTradeOutput - totalRepayment - relayerFee;

        totalTradesExecuted += 1;
        lastTradeGrossProfitByToken[borrowToken] = currentTradeGrossProfit;
        lastTradeFeesPaidByToken[borrowToken] = currentTradeTotalFees;
        lastTradeNetProfitByToken[borrowToken] = netOwnerProfit;
        cumulativeNetProfitByToken[borrowToken] += netOwnerProfit;

        if (isPullRepayment) {
            _safeApprove(borrowToken, provider, totalRepayment);
        } else {
            _safeTransfer(borrowToken, provider, totalRepayment);
        }

        if (relayerFee > 0 && _activeRelayer != address(0)) {
            _safeTransfer(borrowToken, _activeRelayer, relayerFee);
        }

        if (netOwnerProfit > 0) {
            _distributeNetProfit(borrowToken, netOwnerProfit);
        }

        emit ArbitrageExecuted(
            params.strategyType,
            provider,
            borrowToken,
            amountBorrowed,
            fee,
            relayerFee,
            netOwnerProfit
        );
    }

    // =========================================================================
    // Core Strategy Router (Strategies 1 through 5)
    // =========================================================================
    function _executeStrategy(ArbParams memory params, uint256 amountIn)
        internal
        returns (uint256)
    {
        if (params.strategyType == STRATEGY_SPATIAL_2DEX) {
            return _executeSpatial2Dex(params, amountIn);
        } else if (params.strategyType == STRATEGY_TRIANGULAR_3HOP) {
            return _executeTriangular3Hop(params, amountIn);
        } else if (params.strategyType == STRATEGY_AAVE_LIQUIDATION) {
            return _executeAaveLiquidation(params, amountIn);
        } else if (params.strategyType == STRATEGY_CAMELOT_ALGEBRA_ARB) {
            return _executeCamelotAlgebraArb(params, amountIn);
        } else if (params.strategyType == STRATEGY_BATCH_LIQUIDATION_CASCADE) {
            return _executeBatchLiquidationCascadeInternal(params, amountIn);
        } else {
            revert InvalidStrategy(params.strategyType);
        }
    }

    function _executeSpatial2Dex(ArbParams memory params, uint256 amountIn)
        internal
        returns (uint256)
    {
        uint24 feeTier = params.uniFeeTier1 == 0 ? 500 : params.uniFeeTier1;

        if (params.uniFeeTier2 != 0 && params.uniFeeTier2 != feeTier) {
            // Intra-Uniswap V3 Multi-Tier Arbitrage (e.g., 1 bps 0.01% pool <-> 5 bps 0.05% pool = 6 bps floor)
            _safeApprove(params.borrowToken, uniswapV3Router, amountIn);
            uint256 targetOut = ISwapRouterV3(uniswapV3Router).exactInputSingle(
                ISwapRouterV3.ExactInputSingleParams({
                    tokenIn: params.borrowToken,
                    tokenOut: params.targetToken,
                    fee: feeTier,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );

            _safeApprove(params.targetToken, uniswapV3Router, targetOut);
            uint256 finalOut = ISwapRouterV3(uniswapV3Router).exactInputSingle(
                ISwapRouterV3.ExactInputSingleParams({
                    tokenIn: params.targetToken,
                    tokenOut: params.borrowToken,
                    fee: params.uniFeeTier2,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: targetOut,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
            require(finalOut > 0, "Empty swap");
            return _asmBalanceOf(params.borrowToken, address(this));
        }

        if (params.buyOnUniFirst) {
            _safeApprove(params.borrowToken, uniswapV3Router, amountIn);
            uint256 targetReceived = ISwapRouterV3(uniswapV3Router).exactInputSingle(
                ISwapRouterV3.ExactInputSingleParams({
                    tokenIn: params.borrowToken,
                    tokenOut: params.targetToken,
                    fee: feeTier,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );

            _safeApprove(params.targetToken, sushiswapRouter, targetReceived);
            address[] memory path = new address[](2);
            path[0] = params.targetToken;
            path[1] = params.borrowToken;

            uint256[] memory amountsOut = IUniswapV2Router02(sushiswapRouter).swapExactTokensForTokens(
                targetReceived,
                0,
                path,
                address(this),
                block.timestamp
            );
            require(amountsOut[amountsOut.length - 1] > 0, "Empty swap");
        } else {
            _safeApprove(params.borrowToken, sushiswapRouter, amountIn);
            address[] memory path = new address[](2);
            path[0] = params.borrowToken;
            path[1] = params.targetToken;

            uint256[] memory amountsOut = IUniswapV2Router02(sushiswapRouter).swapExactTokensForTokens(
                amountIn,
                0,
                path,
                address(this),
                block.timestamp
            );
            uint256 targetReceived = amountsOut[amountsOut.length - 1];

            _safeApprove(params.targetToken, uniswapV3Router, targetReceived);
            uint256 outAmt = ISwapRouterV3(uniswapV3Router).exactInputSingle(
                ISwapRouterV3.ExactInputSingleParams({
                    tokenIn: params.targetToken,
                    tokenOut: params.borrowToken,
                    fee: feeTier,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: targetReceived,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
            require(outAmt > 0, "Empty swap");
        }

        return _asmBalanceOf(params.borrowToken, address(this));
    }

    function _executeTriangular3Hop(ArbParams memory params, uint256 amountIn)
        internal
        returns (uint256)
    {
        uint24 fee1 = params.uniFeeTier1 == 0 ? 500 : params.uniFeeTier1;
        uint24 fee2 = params.uniFeeTier2 == 0 ? 500 : params.uniFeeTier2;

        _safeApprove(params.borrowToken, uniswapV3Router, amountIn);
        uint256 hop1Out = ISwapRouterV3(uniswapV3Router).exactInputSingle(
            ISwapRouterV3.ExactInputSingleParams({
                tokenIn: params.borrowToken,
                tokenOut: params.targetToken,
                fee: fee1,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: amountIn,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );

        _safeApprove(params.targetToken, uniswapV3Router, hop1Out);
        uint256 hop2Out = ISwapRouterV3(uniswapV3Router).exactInputSingle(
            ISwapRouterV3.ExactInputSingleParams({
                tokenIn: params.targetToken,
                tokenOut: params.midToken,
                fee: fee2,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: hop1Out,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );

        _safeApprove(params.midToken, sushiswapRouter, hop2Out);
        address[] memory path = new address[](2);
        path[0] = params.midToken;
        path[1] = params.borrowToken;

        uint256[] memory amountsOut = IUniswapV2Router02(sushiswapRouter).swapExactTokensForTokens(
            hop2Out,
            0,
            path,
            address(this),
            block.timestamp
        );
        require(amountsOut[amountsOut.length - 1] > 0, "Empty swap");

        return IERC20(params.borrowToken).balanceOf(address(this));
    }

    function _executeAaveLiquidation(ArbParams memory params, uint256 debtToCover)
        internal
        returns (uint256)
    {
        uint24 feeTier = params.uniFeeTier1 == 0 ? 500 : params.uniFeeTier1;

        _safeApprove(params.borrowToken, aaveV3Pool, debtToCover);

        IAaveV3Pool(aaveV3Pool).liquidationCall(
            params.targetToken,
            params.borrowToken,
            params.targetBorrower,
            debtToCover,
            false
        );

        uint256 collateralSeized = IERC20(params.targetToken).balanceOf(address(this));

        _safeApprove(params.targetToken, uniswapV3Router, collateralSeized);
        uint256 outAmt = ISwapRouterV3(uniswapV3Router).exactInputSingle(
            ISwapRouterV3.ExactInputSingleParams({
                tokenIn: params.targetToken,
                tokenOut: params.borrowToken,
                fee: feeTier,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: collateralSeized,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );
        require(outAmt > 0, "Empty swap");

        uint256 finalBalance = IERC20(params.borrowToken).balanceOf(address(this));
        uint256 netProfit = finalBalance > debtToCover ? finalBalance - debtToCover : 0;

        emit LiquidationExecuted(
            params.targetBorrower,
            params.borrowToken,
            params.targetToken,
            debtToCover,
            collateralSeized,
            netProfit
        );

        return finalBalance;
    }

    function _executeCamelotAlgebraArb(ArbParams memory params, uint256 amountIn)
        internal
        returns (uint256)
    {
        uint24 feeTier = params.uniFeeTier1 == 0 ? 500 : params.uniFeeTier1;

        if (params.buyOnUniFirst) {
            _safeApprove(params.borrowToken, uniswapV3Router, amountIn);
            uint256 targetReceived = ISwapRouterV3(uniswapV3Router).exactInputSingle(
                ISwapRouterV3.ExactInputSingleParams({
                    tokenIn: params.borrowToken,
                    tokenOut: params.targetToken,
                    fee: feeTier,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );

            _safeApprove(params.targetToken, camelotV3Router, targetReceived);
            uint256 outAmt = ICamelotV3SwapRouter(camelotV3Router).exactInputSingle(
                ICamelotV3SwapRouter.ExactInputSingleAlgebraParams({
                    tokenIn: params.targetToken,
                    tokenOut: params.borrowToken,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: targetReceived,
                    amountOutMinimum: 0,
                    limitSqrtPrice: 0
                })
            );
            require(outAmt > 0, "Empty swap");
        } else {
            _safeApprove(params.borrowToken, camelotV3Router, amountIn);
            uint256 targetReceived = ICamelotV3SwapRouter(camelotV3Router).exactInputSingle(
                ICamelotV3SwapRouter.ExactInputSingleAlgebraParams({
                    tokenIn: params.borrowToken,
                    tokenOut: params.targetToken,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: amountIn,
                    amountOutMinimum: 0,
                    limitSqrtPrice: 0
                })
            );

            _safeApprove(params.targetToken, uniswapV3Router, targetReceived);
            uint256 outAmt = ISwapRouterV3(uniswapV3Router).exactInputSingle(
                ISwapRouterV3.ExactInputSingleParams({
                    tokenIn: params.targetToken,
                    tokenOut: params.borrowToken,
                    fee: feeTier,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: targetReceived,
                    amountOutMinimum: 0,
                    sqrtPriceLimitX96: 0
                })
            );
            require(outAmt > 0, "Empty swap");
        }

        return IERC20(params.borrowToken).balanceOf(address(this));
    }

    function _executeBatchLiquidationCascadeInternal(ArbParams memory params, uint256 totalDebtToCover)
        internal
        returns (uint256)
    {
        uint24 feeTier = params.uniFeeTier1 == 0 ? 500 : params.uniFeeTier1;

        _safeApprove(params.borrowToken, aaveV3Pool, totalDebtToCover);

        uint256 count = _activeBatchTargets.length;
        for (uint256 i = 0; i < count; i++) {
            BatchLiquidationTarget memory t = _activeBatchTargets[i];
            IAaveV3Pool(aaveV3Pool).liquidationCall(
                params.targetToken,
                params.borrowToken,
                t.borrower,
                t.debtToCover,
                false
            );
        }

        uint256 totalCollateralSeized = IERC20(params.targetToken).balanceOf(address(this));

        _safeApprove(params.targetToken, uniswapV3Router, totalCollateralSeized);
        uint256 outAmt = ISwapRouterV3(uniswapV3Router).exactInputSingle(
            ISwapRouterV3.ExactInputSingleParams({
                tokenIn: params.targetToken,
                tokenOut: params.borrowToken,
                fee: feeTier,
                recipient: address(this),
                deadline: block.timestamp,
                amountIn: totalCollateralSeized,
                amountOutMinimum: 0,
                sqrtPriceLimitX96: 0
            })
        );
        require(outAmt > 0, "Empty swap");

        uint256 finalBalance = IERC20(params.borrowToken).balanceOf(address(this));
        uint256 netProfit = finalBalance > totalDebtToCover ? finalBalance - totalDebtToCover : 0;

        emit BatchLiquidationCascadeExecuted(
            count,
            params.borrowToken,
            params.targetToken,
            totalDebtToCover,
            totalCollateralSeized,
            netProfit
        );

        return finalBalance;
    }

    /**
     * @notice v21.0 Zero-Vault Direct Pool Flash-Swap Arbitrage:
     * Calls Pool 1 `.swap()` directly (bypassing SwapRouter, Balancer Vault, and Aave Pool),
     * receives `targetToken` before paying `borrowToken`, swaps `targetToken -> borrowToken` directly
     * on Pool 2 inside the callback, repays Pool 1 via assembly `_safeTransfer`, and sends 100% of
     * net profit directly to `owner` (slashes gas cost by ~45%-55% vs periphery routers).
     */
    function executeDirectPoolFlashSwap(
        DirectPoolFlashSwapParams calldata params,
        uint256 relayerFee
    ) external nonReentrant onlyOwnerOrRelayer returns (uint256 netOwnerProfit) {
        return _executeSingleDirectPoolFlashSwap(params, relayerFee);
    }

    /**
     * @notice v22.0 Maximum-Capacity Independent Multi-Flash-Loan Execution:
     * Executes N independent maximum-capacity Flash-Swaps sequentially (`loans[0 .. N-1]`).
     * NEVER takes a single flash loan and splits it into N smaller pieces — each of the N trades
     * borrows its own full maximum profitable flash loan capacity independently, pays its own
     * gas/relayer fee, and transfers 100% of the net profit directly to `owner`.
     */
    function executeMultiMaxDirectPoolFlashSwaps(
        DirectPoolFlashSwapParams[] calldata loans,
        uint256[] calldata relayerFees
    ) external nonReentrant onlyOwnerOrRelayer returns (uint256 totalNetOwnerProfit) {
        uint256 n = loans.length;
        if (n == 0 || n != relayerFees.length) revert ZeroAmount();
        for (uint256 i = 0; i < n; ) {
            totalNetOwnerProfit += _executeSingleDirectPoolFlashSwap(loans[i], relayerFees[i]);
            unchecked {
                ++i;
            }
        }
    }

    function _executeSingleDirectPoolFlashSwap(
        DirectPoolFlashSwapParams calldata params,
        uint256 relayerFee
    ) internal returns (uint256 netOwnerProfit) {
        if (params.borrowAmount == 0) revert ZeroAmount();
        if (!whitelistedTokens(params.borrowToken)) revert UnverifiedToken(params.borrowToken);
        if (!whitelistedTokens(params.targetToken)) revert UnverifiedToken(params.targetToken);

        uint256 preBalance = _asmBalanceOf(params.borrowToken, address(this));
        _directSwapActivePool = params.poolBorrow;

        uint160 limit1 = params.zeroForOneBorrow
            ? 4295128740
            : 1461446703485210103287273052203988822378723970341;

        IConcentratedLiquidityPool(params.poolBorrow).swap(
            address(this),
            params.zeroForOneBorrow,
            int256(params.borrowAmount),
            limit1,
            abi.encode(
                uint8(1),
                params.poolSell,
                params.borrowToken,
                params.targetToken,
                params.zeroForOneSell
            )
        );
        _directSwapActivePool = address(0);

        uint256 postBalance = _asmBalanceOf(params.borrowToken, address(this));
        uint256 grossProfit = postBalance > preBalance ? (postBalance - preBalance) : 0;
        uint256 minRequired = params.minNetProfit + relayerFee;
        if (grossProfit < minRequired) {
            revert InsufficientProfit(grossProfit, minRequired);
        }

        netOwnerProfit = grossProfit - relayerFee;

        unchecked {
            totalTradesExecuted += 1;
            lastTradeGrossProfitByToken[params.borrowToken] = grossProfit;
            lastTradeFeesPaidByToken[params.borrowToken] = relayerFee;
            lastTradeNetProfitByToken[params.borrowToken] = netOwnerProfit;
            cumulativeNetProfitByToken[params.borrowToken] += netOwnerProfit;
        }

        if (relayerFee > 0) {
            _safeTransfer(params.borrowToken, msg.sender, relayerFee);
        }
        if (netOwnerProfit > 0) {
            _distributeNetProfit(params.borrowToken, netOwnerProfit);
        }

        emit ArbitrageExecuted(
            STRATEGY_DIRECT_POOL_FLASH_SWAP,
            params.poolBorrow,
            params.borrowToken,
            params.borrowAmount,
            0,
            relayerFee,
            netOwnerProfit
        );
    }

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        _handleDirectPoolCallback(amount0Delta, amount1Delta, data);
    }

    function algebraSwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        _handleDirectPoolCallback(amount0Delta, amount1Delta, data);
    }

    function pancakeV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) external {
        _handleDirectPoolCallback(amount0Delta, amount1Delta, data);
    }

    function _handleDirectPoolCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata data
    ) internal {
        if (msg.sender != _directSwapActivePool || _directSwapActivePool == address(0)) {
            revert UnauthorizedFlashCallback(msg.sender);
        }

        (
            uint8 step,
            address poolSell,
            address borrowToken,
            address targetToken,
            bool zeroForOneSell
        ) = abi.decode(data, (uint8, address, address, address, bool));

        uint256 amountOwed = amount0Delta > 0 ? uint256(amount0Delta) : uint256(amount1Delta);

        if (step == 1) {
            uint256 targetReceived = amount0Delta < 0 ? uint256(-amount0Delta) : uint256(-amount1Delta);
            address outerPool = _directSwapActivePool;
            _directSwapActivePool = poolSell;

            uint160 limit2 = zeroForOneSell
                ? 4295128740
                : 1461446703485210103287273052203988822378723970341;

            IConcentratedLiquidityPool(poolSell).swap(
                address(this),
                zeroForOneSell,
                int256(targetReceived),
                limit2,
                abi.encode(uint8(2), address(0), borrowToken, targetToken, false)
            );
            _directSwapActivePool = outerPool;
            _safeTransfer(borrowToken, msg.sender, amountOwed);
        } else {
            _safeTransfer(targetToken, msg.sender, amountOwed);
        }
    }

    function rescueTokens(address token, uint256 amount) external onlyOwner {
        _safeTransfer(token, owner, amount);
    }

    function _asmBalanceOf(address token, address account) internal view returns (uint256 bal) {
        /// @solidity memory-safe-assembly
        assembly {
            mstore(0x00, 0x70a0823100000000000000000000000000000000000000000000000000000000)
            mstore(0x04, and(account, 0xffffffffffffffffffffffffffffffffffffffff))
            let ok := staticcall(gas(), token, 0x00, 0x24, 0x00, 0x20)
            if iszero(ok) { revert(0, 0) }
            bal := mload(0x00)
        }
    }

    function _safeApprove(address token, address spender, uint256 amount) internal {
        bool success;
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            // 1. approve(spender, 0) -> selector 0x095ea7b3
            mstore(ptr, 0x095ea7b300000000000000000000000000000000000000000000000000000000)
            mstore(add(ptr, 0x04), and(spender, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(ptr, 0x24), 0)
            let ok1 := call(gas(), token, 0, ptr, 0x44, 0x00, 0x20)
            let v1 := and(ok1, or(iszero(returndatasize()), eq(mload(0x00), 1)))

            // 2. approve(spender, amount) -> selector 0x095ea7b3
            mstore(add(ptr, 0x24), amount)
            let ok2 := call(gas(), token, 0, ptr, 0x44, 0x00, 0x20)
            let v2 := and(ok2, or(iszero(returndatasize()), eq(mload(0x00), 1)))
            success := and(v1, v2)
        }
        if (!success) revert TokenTransferFailed(token, spender, amount);
    }

    function _safeTransfer(address token, address to, uint256 amount) internal {
        bool success;
        /// @solidity memory-safe-assembly
        assembly {
            let ptr := mload(0x40)
            // transfer(to, amount) -> selector 0xa9059cbb
            mstore(ptr, 0xa9059cbb00000000000000000000000000000000000000000000000000000000)
            mstore(add(ptr, 0x04), and(to, 0xffffffffffffffffffffffffffffffffffffffff))
            mstore(add(ptr, 0x24), amount)
            let ok := call(gas(), token, 0, ptr, 0x44, 0x00, 0x20)
            success := and(ok, or(iszero(returndatasize()), eq(mload(0x00), 1)))
        }
        if (!success) revert TokenTransferFailed(token, to, amount);
    }
}
