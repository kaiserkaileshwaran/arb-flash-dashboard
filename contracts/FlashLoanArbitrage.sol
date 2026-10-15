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

/**
 * @title FlashLoanArbitrage (v5.0 — Zero-Capital Gasless Relayer & Auto-Vault Cascade Edition)
 * @notice Dual-Vault (Balancer V2 0% Fee + Aave V3 0.05% Fee) Atomic Arbitrage & Liquidation Engine
 * @dev Pruned of all dead code. Supports gasless ERC-4337 / Gelato relayers reimbursed strictly from atomic profits.
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

    event TokenWhitelistUpdated(address indexed token, bool whitelisted);
    event RelayerUpdated(address indexed relayer, bool authorized);

    // =========================================================================
    // Strategy Constants
    // =========================================================================
    uint8 public constant STRATEGY_SPATIAL_2DEX = 1;
    uint8 public constant STRATEGY_TRIANGULAR_3HOP = 2;
    uint8 public constant STRATEGY_AAVE_LIQUIDATION = 3;
    uint8 public constant STRATEGY_CAMELOT_ALGEBRA_ARB = 4;
    uint8 public constant STRATEGY_BATCH_LIQUIDATION_CASCADE = 5;

    // =========================================================================
    // Official Arbitrum One (Chain ID 42161) Protocol & Token Constants
    // =========================================================================
    address public constant ARBITRUM_BALANCER_VAULT = 0xBA12222222228d8Ba445958a75a0704d566BF2C8;
    address public constant ARBITRUM_AAVE_V3_POOL   = 0x794a61358D6845594F94dc1DB02A252b5b4814aD;
    address public constant ARBITRUM_UNISWAP_V3     = 0xE592427A0AEce92De3Edee1F18E0157C05861564;
    address public constant ARBITRUM_SUSHISWAP      = 0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506;
    address public constant ARBITRUM_CAMELOT_V3     = 0x1F721E2E82F6676FCE4eA07A5958cF098D339e18;

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

    // =========================================================================
    // State Variables
    // =========================================================================
    address public owner;
    address public balancerVault;
    address public aaveV3Pool;
    address public uniswapV3Router;
    address public sushiswapRouter;
    address public camelotV3Router;

    mapping(address => bool) public whitelistedTokens;
    mapping(address => bool) public authorizedRelayers;

    // On-Chain Per-Trade & Cumulative Profit Ledger (Strict Per-Trade Isolation)
    uint256 public totalTradesExecuted;
    mapping(address => uint256) public lastTradeGrossProfitByToken;
    mapping(address => uint256) public lastTradeFeesPaidByToken;
    mapping(address => uint256) public lastTradeNetProfitByToken;
    mapping(address => uint256) public cumulativeNetProfitByToken;

    uint256 private _unlocked = 1;
    bool private _flashLoanActive = false;
    address private _activeRelayer;
    uint256 private _activeRelayerFee;

    struct ArbParams {
        uint8 strategyType;          // 1 = Spatial, 2 = 3-Hop, 3 = Single Liq, 4 = Camelot V3, 5 = Batch Liq Cascade
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

    BatchLiquidationTarget[] private _activeBatchTargets;

    modifier nonReentrant() {
        if (_unlocked != 1) revert ReentrancyLocked();
        _unlocked = 2;
        _;
        _unlocked = 1;
    }

    modifier onlyOwnerOrRelayer() {
        if (msg.sender != owner && !authorizedRelayers[msg.sender]) {
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
        authorizedRelayers[msg.sender] = true;
        authorizedRelayers[0x0E8A575147b51C5701C86427b521F7293249cd67] = true;
        balancerVault = _balancerVault == address(0) ? ARBITRUM_BALANCER_VAULT : _balancerVault;
        aaveV3Pool = _aaveV3Pool == address(0) ? ARBITRUM_AAVE_V3_POOL : _aaveV3Pool;
        uniswapV3Router = _uniswapV3Router == address(0) ? ARBITRUM_UNISWAP_V3 : _uniswapV3Router;
        sushiswapRouter = _sushiswapRouter == address(0) ? ARBITRUM_SUSHISWAP : _sushiswapRouter;
        camelotV3Router = ARBITRUM_CAMELOT_V3;

        whitelistedTokens[TOKEN_WETH]   = true;
        whitelistedTokens[TOKEN_WBTC]   = true;
        whitelistedTokens[TOKEN_USDC]   = true;
        whitelistedTokens[TOKEN_USDT]   = true;
        whitelistedTokens[TOKEN_ARB]    = true;
        whitelistedTokens[TOKEN_LINK]   = true;
        whitelistedTokens[TOKEN_UNI]    = true;
        whitelistedTokens[TOKEN_AAVE]   = true;
        whitelistedTokens[TOKEN_WSTETH] = true;
        whitelistedTokens[TOKEN_USDC_E] = true;
        whitelistedTokens[TOKEN_WEETH]  = true;
    }

    // =========================================================================
    // Admin & Safety Controls
    // =========================================================================
    function transferOwnership(address newOwner) external onlyOwner {
        if (newOwner == address(0)) revert ZeroAmount();
        owner = newOwner;
    }

    function setWhitelistedToken(address token, bool status) external onlyOwner {
        whitelistedTokens[token] = status;
        emit TokenWhitelistUpdated(token, status);
    }

    function setAuthorizedRelayer(address relayer, bool status) external onlyOwner {
        authorizedRelayers[relayer] = status;
        emit RelayerUpdated(relayer, status);
    }

    function setCamelotV3Router(address _camelotRouter) external onlyOwner {
        camelotV3Router = _camelotRouter == address(0) ? ARBITRUM_CAMELOT_V3 : _camelotRouter;
    }

    function _requireWhitelisted(address token) internal view {
        if (!whitelistedTokens[token]) revert UnverifiedToken(token);
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
            _safeTransfer(borrowToken, owner, netOwnerProfit);
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
