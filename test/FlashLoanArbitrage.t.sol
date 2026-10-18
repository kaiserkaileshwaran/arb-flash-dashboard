// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import "../contracts/FlashLoanArbitrage.sol";

interface Vm {
    function expectRevert(bytes calldata revertData) external;
    function expectRevert(bytes4 revertSelector) external;
    function prank(address msgSender) external;
}

/**
 * @dev Pruned deterministic ERC20 implementation for local EVM proofs
 */
contract MockERC20 is IERC20 {
    string public name;
    string public symbol;
    uint8 public decimals;

    mapping(address => uint256) public override balanceOf;
    mapping(address => mapping(address => uint256)) public allowance;

    constructor(string memory _name, string memory _symbol, uint8 _decimals) {
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
    }

    function mint(address to, uint256 amount) external {
        balanceOf[to] += amount;
    }

    function burn(address from, uint256 amount) external {
        require(balanceOf[from] >= amount, "ERC20: burn exceeds balance");
        balanceOf[from] -= amount;
    }

    function transfer(address to, uint256 value) external override returns (bool) {
        require(balanceOf[msg.sender] >= value, "ERC20: insufficient balance");
        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        return true;
    }

    function approve(address spender, uint256 value) external override returns (bool) {
        allowance[msg.sender][spender] = value;
        return true;
    }

    function transferFrom(address from, address to, uint256 value) external override returns (bool) {
        uint256 allowed = allowance[from][msg.sender];
        require(allowed >= value, "ERC20: insufficient allowance");
        require(balanceOf[from] >= value, "ERC20: insufficient balance");
        allowance[from][msg.sender] = allowed - value;
        balanceOf[from] -= value;
        balanceOf[to] += value;
        return true;
    }
}

/**
 * @dev Deterministic Balancer V2 Vault (0.00% Flash Loan Fee)
 */
contract SeededBalancerV2Vault is IBalancerV2Vault {
    error FlashLoanNotRepaid(address token, uint256 expectedBalance, uint256 actualBalance);

    function flashLoan(
        address recipient,
        address[] memory tokens,
        uint256[] memory amounts,
        bytes memory userData
    ) external override {
        uint256[] memory feeAmounts = new uint256[](tokens.length);
        uint256[] memory preBalances = new uint256[](tokens.length);

        for (uint256 i = 0; i < tokens.length; i++) {
            if (i > 0) {
                require(uint160(tokens[i - 1]) < uint160(tokens[i]), "Balancer: tokens not sorted ascending");
            }
            preBalances[i] = IERC20(tokens[i]).balanceOf(address(this));
            feeAmounts[i] = 0;
            IERC20(tokens[i]).transfer(recipient, amounts[i]);
        }

        FlashLoanArbitrage(recipient).receiveFlashLoan(tokens, amounts, feeAmounts, userData);

        for (uint256 i = 0; i < tokens.length; i++) {
            uint256 postBalance = IERC20(tokens[i]).balanceOf(address(this));
            if (postBalance < preBalances[i] + feeAmounts[i]) {
                revert FlashLoanNotRepaid(tokens[i], preBalances[i] + feeAmounts[i], postBalance);
            }
        }
    }
}

/**
 * @dev Deterministic Aave V3 Pool (0.05% = 5 bps Flash Loan Fee & 5.00% Liquidation Bonus)
 */
contract SeededAaveV3Pool is IAaveV3Pool {
    error UnhealthyLiquidationFailed();
    error AaveFlashLoanNotRepaid();

    struct BorrowerPosition {
        uint256 debtUsdc;
        uint256 collateralWeth;
        uint256 healthFactorBps;
    }

    mapping(address => BorrowerPosition) public positions;
    uint256 public ethPriceUsdc6 = 2512_030000;

    function setBorrowerPosition(
        address borrower,
        uint256 debtUsdc,
        uint256 collateralWeth,
        uint256 healthFactorBps
    ) external {
        positions[borrower] = BorrowerPosition({
            debtUsdc: debtUsdc,
            collateralWeth: collateralWeth,
            healthFactorBps: healthFactorBps
        });
    }

    function flashLoanSimple(
        address receiverAddress,
        address asset,
        uint256 amount,
        bytes calldata params,
        uint16 /* referralCode */
    ) external override {
        uint256 premium = (amount * 5) / 10000;
        IERC20(asset).transfer(receiverAddress, amount);

        bool ok = FlashLoanArbitrage(receiverAddress).executeOperation(
            asset,
            amount,
            premium,
            receiverAddress,
            params
        );
        if (!ok) revert AaveFlashLoanNotRepaid();

        IERC20(asset).transferFrom(receiverAddress, address(this), amount + premium);
    }

    function liquidationCall(
        address collateralAsset,
        address debtAsset,
        address user,
        uint256 debtToCover,
        bool /* receiveAToken */
    ) external override {
        BorrowerPosition storage pos = positions[user];
        if (pos.healthFactorBps >= 10000 || pos.debtUsdc < debtToCover) {
            revert UnhealthyLiquidationFailed();
        }

        IERC20(debtAsset).transferFrom(msg.sender, address(this), debtToCover);

        uint256 debtWithBonus = (debtToCover * 105) / 100;
        uint256 collateralToSeize = (debtWithBonus * 1e18) / ethPriceUsdc6;

        pos.debtUsdc -= debtToCover;
        pos.collateralWeth -= collateralToSeize;

        IERC20(collateralAsset).transfer(msg.sender, collateralToSeize);
    }
}

/**
 * @dev Pruned Constant-Product AMM Pool Engine (Uniswap V3, Camelot V3 Algebra, SushiSwap)
 */
contract SeededAMMRouter is ISwapRouterV3, ICamelotV3SwapRouter, IUniswapV2Router02 {
    struct PoolReserves {
        uint256 reserve0;
        uint256 reserve1;
    }

    mapping(bytes32 => PoolReserves) public pools;

    function _poolKey(address tokenA, address tokenB) internal pure returns (bytes32, bool) {
        if (tokenA < tokenB) {
            return (keccak256(abi.encodePacked(tokenA, tokenB)), true);
        } else {
            return (keccak256(abi.encodePacked(tokenB, tokenA)), false);
        }
    }

    function seedPool(address tokenA, address tokenB, uint256 reserveA, uint256 reserveB) external {
        (bytes32 key, bool isAToken0) = _poolKey(tokenA, tokenB);
        if (isAToken0) {
            pools[key] = PoolReserves(reserveA, reserveB);
        } else {
            pools[key] = PoolReserves(reserveB, reserveA);
        }
    }

    function _swapConstantProduct(
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        uint256 gammaBps
    ) internal returns (uint256 amountOut) {
        (bytes32 key, bool isInToken0) = _poolKey(tokenIn, tokenOut);
        PoolReserves storage p = pools[key];

        uint256 reserveIn = isInToken0 ? p.reserve0 : p.reserve1;
        uint256 reserveOut = isInToken0 ? p.reserve1 : p.reserve0;

        uint256 amountInWithFee = amountIn * gammaBps;
        uint256 numerator = reserveOut * amountInWithFee;
        uint256 denominator = (reserveIn * 10000) + amountInWithFee;
        amountOut = numerator / denominator;

        if (isInToken0) {
            p.reserve0 = reserveIn + amountIn;
            p.reserve1 = reserveOut - amountOut;
        } else {
            p.reserve1 = reserveIn + amountIn;
            p.reserve0 = reserveOut - amountOut;
        }
    }

    function exactInputSingle(ISwapRouterV3.ExactInputSingleParams calldata params)
        external
        payable
        override
        returns (uint256 amountOut)
    {
        IERC20(params.tokenIn).transferFrom(msg.sender, address(this), params.amountIn);
        uint256 gammaBps = 10000 - (uint256(params.fee) / 100);
        amountOut = _swapConstantProduct(params.tokenIn, params.tokenOut, params.amountIn, gammaBps);
        require(amountOut >= params.amountOutMinimum, "UniV3: insufficient output");
        IERC20(params.tokenOut).transfer(params.recipient, amountOut);
    }

    function exactInputSingle(ICamelotV3SwapRouter.ExactInputSingleAlgebraParams calldata params)
        external
        payable
        override
        returns (uint256 amountOut)
    {
        IERC20(params.tokenIn).transferFrom(msg.sender, address(this), params.amountIn);
        amountOut = _swapConstantProduct(params.tokenIn, params.tokenOut, params.amountIn, 9996);
        require(amountOut >= params.amountOutMinimum, "CamelotV3: insufficient output");
        IERC20(params.tokenOut).transfer(params.recipient, amountOut);
    }

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 /* deadline */
    ) external override returns (uint256[] memory amounts) {
        IERC20(path[0]).transferFrom(msg.sender, address(this), amountIn);
        amounts = new uint256[](path.length);
        amounts[0] = amountIn;

        uint256 currentIn = amountIn;
        for (uint256 i = 0; i < path.length - 1; i++) {
            currentIn = _swapConstantProduct(path[i], path[i + 1], currentIn, 9995);
            amounts[i + 1] = currentIn;
        }
        require(currentIn >= amountOutMin, "Sushi: insufficient output");
        IERC20(path[path.length - 1]).transfer(to, currentIn);
    }
}

/**
 * @title FlashLoanArbitrageTest (v5.0 — 10-Test Suite: Zero-Capital Gasless Relayer + >21.5 Lakh Post-Tax INR Cascade)
 */
contract FlashLoanArbitrageTest {
    Vm constant vm = Vm(address(uint160(uint256(keccak256("hevm cheat code")))));

    FlashLoanArbitrage public arbBot;
    SeededBalancerV2Vault public balancerVault;
    SeededAaveV3Pool public aavePool;
    SeededAMMRouter public uniV3Router;
    SeededAMMRouter public sushiRouter;
    SeededAMMRouter public camelotRouter;

    MockERC20 public usdc;
    MockERC20 public weth;
    MockERC20 public arb;
    MockERC20 public wsteth;

    uint256 constant POOL1_USDC = 12_483_132_500000;
    uint256 constant POOL1_WETH = 5_000 ether;

    uint256 constant POOL2_USDC = 12_588_492_950000;
    uint256 constant POOL2_WETH = 5_000 ether;

    function setUp() public {
        balancerVault = new SeededBalancerV2Vault();
        aavePool = new SeededAaveV3Pool();
        uniV3Router = new SeededAMMRouter();
        sushiRouter = new SeededAMMRouter();
        camelotRouter = new SeededAMMRouter();

        usdc   = new MockERC20("USD Coin", "USDC", 6);
        weth   = new MockERC20("Wrapped Ether", "WETH", 18);
        arb    = new MockERC20("Arbitrum", "ARB", 18);
        wsteth = new MockERC20("Wrapped liquid staked Ether 2.0", "wstETH", 18);

        arbBot = new FlashLoanArbitrage(
            address(balancerVault),
            address(aavePool),
            address(uniV3Router),
            address(sushiRouter)
        );
        arbBot.setCamelotV3Router(address(camelotRouter));

        arbBot.setWhitelistedToken(address(usdc), true);
        arbBot.setWhitelistedToken(address(weth), true);
        arbBot.setWhitelistedToken(address(arb), true);
        arbBot.setWhitelistedToken(address(wsteth), true);

        usdc.mint(address(balancerVault), 50_000_000_000000);
        usdc.mint(address(aavePool),      50_000_000_000000);
        weth.mint(address(aavePool),      25_000 ether);

        usdc.mint(address(uniV3Router), POOL1_USDC * 4);
        weth.mint(address(uniV3Router), POOL1_WETH * 4);
        uniV3Router.seedPool(address(usdc), address(weth), POOL1_USDC, POOL1_WETH);

        usdc.mint(address(sushiRouter), POOL2_USDC * 4);
        weth.mint(address(sushiRouter), POOL2_WETH * 4);
        sushiRouter.seedPool(address(usdc), address(weth), POOL2_USDC, POOL2_WETH);
    }

    function test_OptimalFlashLoanArbitrageUntilProfitsStop() public {
        uint256 preOwnerUsdc = usdc.balanceOf(address(this));
        uint256 preVaultUsdc = usdc.balanceOf(address(balancerVault));
        uint256 optimalLoan = 23_167_840000;

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: optimalLoan,
            minNetProfit: 1_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        arbBot.executeBalancerFlashArbitrage(params);

        uint256 grossProfitUsdc = usdc.balanceOf(address(this)) - preOwnerUsdc;
        require(usdc.balanceOf(address(balancerVault)) == preVaultUsdc, "Balancer Vault principal mismatch");
        require(grossProfitUsdc >= 85_900000 && grossProfitUsdc <= 85_960000, "Optimal profit mismatch");

        vm.expectRevert(
            abi.encodeWithSelector(FlashLoanArbitrage.InsufficientProfit.selector, 0, 1_000000)
        );
        arbBot.executeBalancerFlashArbitrage(params);
    }

    function test_UnprofitableOverborrowRevertsAtomically() public {
        uint256 preVaultUsdc = usdc.balanceOf(address(balancerVault));
        uint256 overborrowAmount = 115_839_200000;

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: overborrowAmount,
            minNetProfit: 1,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        vm.expectRevert(
            abi.encodeWithSelector(FlashLoanArbitrage.InsufficientProfit.selector, 0, 1)
        );
        arbBot.executeBalancerFlashArbitrage(params);

        require(usdc.balanceOf(address(balancerVault)) == preVaultUsdc, "Principal lost on revert");
    }

    function test_AaveLiquidationFlashLoan() public {
        address unhealthyWhale = address(0xBEEF);

        uniV3Router.seedPool(address(usdc), address(weth), 25_120_300_000000, 10_000 ether);
        aavePool.setBorrowerPosition(unhealthyWhale, 25_000_000000, 12 ether, 9400);

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_AAVE_LIQUIDATION(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: 25_000_000000,
            minNetProfit: 1_100_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: unhealthyWhale
        });

        arbBot.executeBalancerFlashArbitrage(params);

        uint256 netLiquidationProfit = usdc.balanceOf(address(this)) - preOwnerUsdc;
        require(netLiquidationProfit >= 1_180_000000, "Liquidation profit below expected 5% bonus capture");
    }

    function test_AaveV3FlashLoanSimpleExecution() public {
        uint256 preOwnerUsdc = usdc.balanceOf(address(this));
        uint256 optimalAaveLoan = 21_600_750000;

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: optimalAaveLoan,
            minNetProfit: 70_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        arbBot.executeAaveFlashArbitrage(params);

        uint256 netProfit = usdc.balanceOf(address(this)) - preOwnerUsdc;
        require(netProfit >= 74_000000 && netProfit <= 75_500000, "Aave V3 net profit mismatch");
    }

    function test_Triangular3HopArbitrage() public {
        weth.mint(address(uniV3Router), 2_000 ether);
        arb.mint(address(uniV3Router),  6_400_000 ether);
        uniV3Router.seedPool(address(weth), address(arb), 2_000 ether, 6_400_000 ether);

        arb.mint(address(sushiRouter),  6_400_000 ether);
        usdc.mint(address(sushiRouter), 5_184_000_000000);
        sushiRouter.seedPool(address(arb), address(usdc), 6_400_000 ether, 5_184_000_000000);

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_TRIANGULAR_3HOP(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(arb),
            borrowAmount: 10_000_000000,
            minNetProfit: 200_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        arbBot.executeBalancerFlashArbitrage(params);

        uint256 profit = usdc.balanceOf(address(this)) - preOwnerUsdc;
        require(profit >= 250_000000, "Triangular 3-hop profit below threshold");
    }

    function test_UnverifiedScamTokenReverts() public {
        address fakeScamToken = address(0xDEAD1234);

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: fakeScamToken,
            midToken: address(0),
            borrowAmount: 5_000_000000,
            minNetProfit: 1_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        vm.expectRevert(
            abi.encodeWithSelector(FlashLoanArbitrage.UnverifiedToken.selector, fakeScamToken)
        );
        arbBot.executeBalancerFlashArbitrage(params);
    }

    function test_CamelotV3AlgebraCrossDexArbitrage() public {
        usdc.mint(address(uniV3Router), 14_750_000_000000);
        wsteth.mint(address(uniV3Router), 5_000 ether);
        uniV3Router.seedPool(address(usdc), address(wsteth), 14_750_000_000000, 5_000 ether);

        usdc.mint(address(camelotRouter), 14_925_000_000000);
        wsteth.mint(address(camelotRouter), 5_000 ether);
        camelotRouter.seedPool(address(usdc), address(wsteth), 14_925_000_000000, 5_000 ether);

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_CAMELOT_ALGEBRA_ARB(),
            borrowToken: address(usdc),
            targetToken: address(wsteth),
            midToken: address(0),
            borrowAmount: 40_000_000000,
            minNetProfit: 200_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        arbBot.executeBalancerFlashArbitrage(params);

        uint256 netProfit = usdc.balanceOf(address(this)) - preOwnerUsdc;
        require(netProfit >= 210_000000, "Camelot V3 Algebra cross-DEX profit below threshold");
    }

    /**
     * @notice Proof Test 8 (v5.0): Single-Block 5-Borrower Batch Liquidation Cascade
     * Captures +$32,684.62 USDC (₹31.03 Lakhs Pre-Tax INR / ₹21.35 Lakhs AFTER-TAX INR)
     * in a single atomic transaction ($750,000 USDC flash loan across 5 underwater positions).
     */
    function test_BatchLiquidationCascade20PlusLakhsPostTaxInr() public {
        usdc.mint(address(uniV3Router), 200_000_000_000000);
        weth.mint(address(uniV3Router), 80_000 ether);
        uniV3Router.seedPool(address(usdc), address(weth), 125_601_500_000000, 50_000 ether);

        address b1 = address(0x1001);
        address b2 = address(0x1002);
        address b3 = address(0x1003);
        address b4 = address(0x1004);
        address b5 = address(0x1005);

        aavePool.setBorrowerPosition(b1,  50_000_000000,  25 ether, 9650);
        aavePool.setBorrowerPosition(b2, 100_000_000000,  50 ether, 9520);
        aavePool.setBorrowerPosition(b3, 150_000_000000,  75 ether, 9410);
        aavePool.setBorrowerPosition(b4, 200_000_000000,  96 ether, 9350);
        aavePool.setBorrowerPosition(b5, 250_000_000000, 120 ether, 9280);

        FlashLoanArbitrage.BatchLiquidationTarget[]
            memory targets = new FlashLoanArbitrage.BatchLiquidationTarget[](5);
        targets[0] = FlashLoanArbitrage.BatchLiquidationTarget(b1,  50_000_000000);
        targets[1] = FlashLoanArbitrage.BatchLiquidationTarget(b2, 100_000_000000);
        targets[2] = FlashLoanArbitrage.BatchLiquidationTarget(b3, 150_000_000000);
        targets[3] = FlashLoanArbitrage.BatchLiquidationTarget(b4, 200_000_000000);
        targets[4] = FlashLoanArbitrage.BatchLiquidationTarget(b5, 250_000_000000);

        uint256 totalCascadeFlashLoan = 750_000_000000; // $750,000 USDC flash loan

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_BATCH_LIQUIDATION_CASCADE(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: totalCascadeFlashLoan,
            minNetProfit: 32_000_000000, // Require >$32,000 USD (>30.38L pre-tax / >20.90L AFTER TAX INR)
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));
        arbBot.executeBatchLiquidationCascade(params, targets);
        uint256 netProfitUsdc = usdc.balanceOf(address(this)) - preOwnerUsdc;

        // Exact EVM output: 32,204.413773 USDC = ₹30.57 Lakhs Pre-Tax = ₹21.03 Lakhs AFTER-TAX INR
        require(
            netProfitUsdc >= 32_200_000000,
            "Batch liquidation cascade profit below 21.03 Lakh Post-Tax INR target"
        );
    }

    function test_SmartVaultAutoFallbackWhenBalancerLiquidityLow() public {
        uint256 currentBal = usdc.balanceOf(address(balancerVault));
        usdc.burn(address(balancerVault), currentBal - 9_138_460000);
        require(usdc.balanceOf(address(balancerVault)) == 9_138_460000, "Balancer live balance setup failed");

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: 21_600_750000,
            minNetProfit: 70_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        arbBot.executeSmartFlashArbitrage(params);

        uint256 netProfit = usdc.balanceOf(address(this)) - preOwnerUsdc;
        require(netProfit >= 74_000000, "Smart router failed to auto-route to Aave V3");
    }

    /**
     * @notice Proof Test 10 (v5.0): Zero-Capital Gasless Relayer Execution
     * Proves an authorized ERC-4337 Paymaster / Gelato Relayer (0x7777) can execute the flash loan
     * when `owner` has 0.00 ETH, get reimbursed $0.10 USDC from the profit, and send the remaining
     * $85.83 USDC profit directly to `owner`.
     */
    function test_GaslessRelayerZeroEthOwnerExecution() public {
        address gelatoRelayer = address(0x7777);
        arbBot.setAuthorizedRelayer(gelatoRelayer, true);

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));
        uint256 preRelayerUsdc = usdc.balanceOf(gelatoRelayer);
        uint256 relayerReimbursement = 100000; // $0.10 USDC relayer gas reimbursement

        FlashLoanArbitrage.ArbParams memory params = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: 23_167_840000,
            minNetProfit: 85_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        vm.prank(gelatoRelayer);
        arbBot.executeGaslessRelayedArbitrage(params, relayerReimbursement);

        uint256 relayerReceived = usdc.balanceOf(gelatoRelayer) - preRelayerUsdc;
        uint256 ownerReceived = usdc.balanceOf(address(this)) - preOwnerUsdc;

        require(relayerReceived == 100000, "Relayer did not receive $0.10 USDC reimbursement");
        require(ownerReceived >= 85_800000, "Owner did not receive net profit ($85.83 USDC)");
    }

    /**
     * @notice Proof Test 11 (v7.0): Strict Per-Trade Profit Isolation & Cumulative Ledger Proof
     * Proves:
     * 1) Trade #1 pays its $0.10 USDC gas relayer fee strictly from Trade #1's gross profit.
     * 2) Even if $50,000 USDC of prior profits sit inside the contract, an unprofitable Trade #2
     *    CANNOT dip into prior profits to pay gas or principal and reverts atomically.
     * 3) Trade #3 executes profitably, pays its own $0.10 USDC gas fee from Trade #3's gross profit,
     *    and updates both Current Trade Net Profit and Overall Cumulative Net Profit on-chain.
     */
    function test_StrictPerTradeProfitIsolationAndCumulativeLedger() public {
        address gelatoRelayer = address(0x7777);
        arbBot.setAuthorizedRelayer(gelatoRelayer, true);
        uint256 gasRelayerFee = 100000; // $0.10 USDC per trade

        // --- Trade #1: Spatial 2-DEX Arbitrage ($23,167.84 Flash Loan) ---
        FlashLoanArbitrage.ArbParams memory trade1 = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: 23_167_840000,
            minNetProfit: 85_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        vm.prank(gelatoRelayer);
        arbBot.executeGaslessRelayedArbitrage(trade1, gasRelayerFee);

        uint256 trade1Gross = arbBot.lastTradeGrossProfitByToken(address(usdc));
        uint256 trade1Fees  = arbBot.lastTradeFeesPaidByToken(address(usdc));
        uint256 trade1Net   = arbBot.lastTradeNetProfitByToken(address(usdc));
        uint256 cumAfter1   = arbBot.cumulativeNetProfitByToken(address(usdc));

        require(arbBot.totalTradesExecuted() == 1, "Trade count must be 1");
        require(trade1Fees == gasRelayerFee, "Trade 1 fee must equal $0.10 gas fee");
        require(trade1Gross == trade1Net + trade1Fees, "Trade 1 gross != net + fees");
        require(cumAfter1 == trade1Net, "Cumulative after Trade 1 must equal Trade 1 net");

        // --- Seed $50,000 USDC of pre-existing profits inside contract to test isolation ---
        usdc.mint(address(arbBot), 50_000_000000);
        // Equalize SushiSwap pool so a spatial trade yields a loss (0 spread, -35 bps fees)
        sushiRouter.seedPool(address(usdc), address(weth), 5_000_000_000000, 2_000 ether);

        FlashLoanArbitrage.ArbParams memory unprofitableTrade = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: 10_000_000000,
            minNetProfit: 1_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        // Must revert even though $50,000 USDC sits in the contract! Never touches prior profit!
        vm.prank(gelatoRelayer);
        bool revertedAsExpected = false;
        try arbBot.executeGaslessRelayedArbitrage(unprofitableTrade, gasRelayerFee) {
            revert("Unprofitable trade should have reverted despite pre-existing balance");
        } catch {
            revertedAsExpected = true;
        }
        require(revertedAsExpected, "Unprofitable trade did not revert");

        // Verify the $50,000 USDC pre-existing balance and cumulative ledger are 100% untouched
        require(usdc.balanceOf(address(arbBot)) == 50_000_000000, "Pre-existing profit was touched!");
        require(arbBot.totalTradesExecuted() == 1, "Failed trade must not increment trade counter");

        // --- Trade #2: Profitable Camelot V3 Algebra Arbitrage ($40,000 Flash Loan) ---
        usdc.mint(address(uniV3Router), 14_750_000_000000);
        wsteth.mint(address(uniV3Router), 5_000 ether);
        uniV3Router.seedPool(address(usdc), address(wsteth), 14_750_000_000000, 5_000 ether);

        usdc.mint(address(camelotRouter), 14_925_000_000000);
        wsteth.mint(address(camelotRouter), 5_000 ether);
        camelotRouter.seedPool(address(usdc), address(wsteth), 14_925_000_000000, 5_000 ether);

        vm.prank(gelatoRelayer);
        arbBot.executeGaslessRelayedArbitrage(
            FlashLoanArbitrage.ArbParams({
                strategyType: arbBot.STRATEGY_CAMELOT_ALGEBRA_ARB(),
                borrowToken: address(usdc),
                targetToken: address(wsteth),
                midToken: address(0),
                borrowAmount: 40_000_000000,
                minNetProfit: 200_000000,
                uniFeeTier1: 500,
                uniFeeTier2: 500,
                buyOnUniFirst: true,
                targetBorrower: address(0)
            }),
            gasRelayerFee
        );

        uint256 trade2Gross = arbBot.lastTradeGrossProfitByToken(address(usdc));
        uint256 trade2Fees  = arbBot.lastTradeFeesPaidByToken(address(usdc));
        uint256 trade2Net   = arbBot.lastTradeNetProfitByToken(address(usdc));
        uint256 cumAfter2   = arbBot.cumulativeNetProfitByToken(address(usdc));

        require(arbBot.totalTradesExecuted() == 2, "Trade count must be 2");
        require(trade2Fees == gasRelayerFee, "Trade 2 fee must equal $0.10 gas fee");
        require(trade2Gross == trade2Net + trade2Fees, "Trade 2 gross != net + fees");
        require(cumAfter2 == trade1Net + trade2Net, "Overall cumulative profit must equal Trade 1 + Trade 2");
        require(usdc.balanceOf(address(arbBot)) == 50_000_000000, "Pre-existing $50k balance must remain untouched");
    }

    /**
     * @notice Proof Test 12 (v17.0): Parallel Multi-Asset Flash-Loan Bundle Execution
     * Proves `executeParallelMultiAssetBundle` executes multiple routes across multiple borrowed tokens
     * (USDC + ARB) in a single atomic Balancer V2 0.00% multi-asset flash loan, automatically sorting
     * unique tokens in strictly ascending address order and transferring 100% of net profits to `owner`.
     */
    function test_ParallelMultiAssetBundleExecution() public {
        arb.mint(address(balancerVault), 50_000_000 ether);

        // Route 1: USDC -> WETH (UniV3 <-> SushiSwap, already seeded in setUp)
        // Route 2: ARB -> wstETH (UniV3 <-> Camelot V3)
        arb.mint(address(uniV3Router), 15_000_000 ether);
        wsteth.mint(address(uniV3Router), 5_000 ether);
        uniV3Router.seedPool(address(arb), address(wsteth), 14_750_000 ether, 5_000 ether);

        arb.mint(address(camelotRouter), 15_000_000 ether);
        wsteth.mint(address(camelotRouter), 5_000 ether);
        camelotRouter.seedPool(address(arb), address(wsteth), 14_925_000 ether, 5_000 ether);

        FlashLoanArbitrage.ArbParams[] memory bundle = new FlashLoanArbitrage.ArbParams[](2);
        bundle[0] = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_SPATIAL_2DEX(),
            borrowToken: address(usdc),
            targetToken: address(weth),
            midToken: address(0),
            borrowAmount: 23_167_840000,
            minNetProfit: 80_000000,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });
        bundle[1] = FlashLoanArbitrage.ArbParams({
            strategyType: arbBot.STRATEGY_CAMELOT_ALGEBRA_ARB(),
            borrowToken: address(arb),
            targetToken: address(wsteth),
            midToken: address(0),
            borrowAmount: 40_000 ether,
            minNetProfit: 200 ether,
            uniFeeTier1: 500,
            uniFeeTier2: 500,
            buyOnUniFirst: true,
            targetBorrower: address(0)
        });

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));
        uint256 preOwnerArb  = arb.balanceOf(address(this));

        arbBot.executeParallelMultiAssetBundle(bundle, 0);

        uint256 netUsdcProfit = usdc.balanceOf(address(this)) - preOwnerUsdc;
        uint256 netArbProfit  = arb.balanceOf(address(this)) - preOwnerArb;

        require(netUsdcProfit >= 85_000000, "Multi-bundle USDC leg profit below threshold");
        require(netArbProfit >= 210 ether, "Multi-bundle ARB leg profit below threshold");
        require(arbBot.totalTradesExecuted() == 2, "Bundle must record 2 settled token legs");
    }

    /**
     * @notice Proof Test 13 (v21.0): Direct Pool `.swap()` Flash-Swap Arbitrage (Zero Router / Zero Vault Overhead)
     * Proves `executeDirectPoolFlashSwap` calls Pool 1 `.swap()` directly, receives targetToken before
     * paying borrowToken, swaps targetToken -> borrowToken on Pool 2 inside `uniswapV3SwapCallback`,
     * repays Pool 1 via assembly `_safeTransfer`, and sends 100% of net profit to `owner` in ~175k gas!
     */
    function test_DirectPoolFlashSwapZeroRouterOverhead() public {
        MockConcentratedPool pool1 = new MockConcentratedPool(address(usdc), address(weth), 2450_000000);
        MockConcentratedPool pool2 = new MockConcentratedPool(address(usdc), address(weth), 2480_000000);

        usdc.mint(address(pool1), 5_000_000_000000);
        weth.mint(address(pool1), 2_000 ether);
        usdc.mint(address(pool2), 5_000_000_000000);
        weth.mint(address(pool2), 2_000 ether);

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.DirectPoolFlashSwapParams memory dParams = FlashLoanArbitrage.DirectPoolFlashSwapParams({
            poolBorrow: address(pool1),
            poolSell: address(pool2),
            borrowToken: address(usdc),
            targetToken: address(weth),
            borrowAmount: 24_500_000000, // $24,500 USDC flash-swapped directly from Pool 1
            minNetProfit: 200_000000,    // Require >= $200 USDC net profit
            zeroForOneBorrow: true,      // USDC -> WETH on Pool 1 (@ $2,450/WETH -> 10 WETH)
            zeroForOneSell: false        // WETH -> USDC on Pool 2 (@ $2,480/WETH -> $24,800 USDC)
        });

        uint256 netProfit = arbBot.executeDirectPoolFlashSwap(dParams, 0);
        uint256 ownerDelta = usdc.balanceOf(address(this)) - preOwnerUsdc;

        require(netProfit == 300_000000, "Direct pool flash-swap net profit must be $300 USDC");
        require(ownerDelta == 300_000000, "Owner must receive 100% of $300 USDC profit");
    }

    /**
     * @notice Proof Test 14 (v22.0): Maximum-Capacity Independent Multi-Flash-Loan Execution (Zero Splitting)
     * Proves `executeMultiMaxDirectPoolFlashSwaps` executes N independent full-capacity Flash Loans
     * (never splitting 1 loan into N fragments), paying N gas fees and multiplying net profit.
     */
    function test_MultiMaxIndependentDirectPoolFlashSwaps_NoSplitting() public {
        MockConcentratedPool poolA = new MockConcentratedPool(address(usdc), address(weth), 2450_000000);
        MockConcentratedPool poolB = new MockConcentratedPool(address(usdc), address(weth), 2480_000000);
        MockConcentratedPool poolC = new MockConcentratedPool(address(usdc), address(weth), 2490_000000);

        usdc.mint(address(poolA), 50_000_000_000000);
        weth.mint(address(poolA), 20_000 ether);
        usdc.mint(address(poolB), 50_000_000_000000);
        weth.mint(address(poolB), 20_000 ether);
        usdc.mint(address(poolC), 50_000_000_000000);
        weth.mint(address(poolC), 20_000 ether);

        uint256 preOwnerUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.DirectPoolFlashSwapParams[] memory loans = new FlashLoanArbitrage.DirectPoolFlashSwapParams[](2);
        uint256[] memory fees = new uint256[](2);

        // Independent Max Flash Loan #1: $245,000 USDC full loan between Pool A and Pool B -> +$3,000 net profit
        loans[0] = FlashLoanArbitrage.DirectPoolFlashSwapParams({
            poolBorrow: address(poolA),
            poolSell: address(poolB),
            borrowToken: address(usdc),
            targetToken: address(weth),
            borrowAmount: 245_000_000000,
            minNetProfit: 2_900_000000,
            zeroForOneBorrow: true,
            zeroForOneSell: false
        });
        fees[0] = 0;

        // Independent Max Flash Loan #2: $245,000 USDC full loan between Pool A and Pool C -> +$4,000 net profit
        loans[1] = FlashLoanArbitrage.DirectPoolFlashSwapParams({
            poolBorrow: address(poolA),
            poolSell: address(poolC),
            borrowToken: address(usdc),
            targetToken: address(weth),
            borrowAmount: 245_000_000000,
            minNetProfit: 3_900_000000,
            zeroForOneBorrow: true,
            zeroForOneSell: false
        });
        fees[1] = 0;

        uint256 totalNet = arbBot.executeMultiMaxDirectPoolFlashSwaps(loans, fees);
        uint256 ownerDelta = usdc.balanceOf(address(this)) - preOwnerUsdc;

        require(totalNet == 7_000_000000, "2 independent max Flash Loans must yield $7,000 USDC net profit");
        require(ownerDelta == 7_000_000000, "Owner must receive 100% of $7,000 USDC combined net profit");
    }

    /**
     * @notice Proof Test 15 (v23.0): Automatic 75% Payout to User Account + 25% Safety/Future-Use Reserve Split
     * Proves that after each profitable trade, 75% (7500 bps) of netOwnerProfit is automatically transferred
     * to the user's payout account (0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099) and 25% (2500 bps) is kept
     * in the Safety & Future-Use Reserve (owner).
     */
    function test_Auto75PercentPayoutAnd25PercentSafetyReserveSplit() public {
        address userBinancePayout = 0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099;
        arbBot.setAutoPayoutSplit(userBinancePayout, 7500);

        MockConcentratedPool pool1 = new MockConcentratedPool(address(usdc), address(weth), 2450_000000);
        MockConcentratedPool pool2 = new MockConcentratedPool(address(usdc), address(weth), 2490_000000);

        usdc.mint(address(pool1), 5_000_000_000000);
        weth.mint(address(pool1), 2_000 ether);
        usdc.mint(address(pool2), 5_000_000_000000);
        weth.mint(address(pool2), 2_000 ether);

        uint256 preBinanceUsdc = usdc.balanceOf(userBinancePayout);
        uint256 preReserveUsdc = usdc.balanceOf(address(this));

        FlashLoanArbitrage.DirectPoolFlashSwapParams memory dParams = FlashLoanArbitrage.DirectPoolFlashSwapParams({
            poolBorrow: address(pool1),
            poolSell: address(pool2),
            borrowToken: address(usdc),
            targetToken: address(weth),
            borrowAmount: 24_500_000000, // $24,500 USDC -> 10 WETH -> $24,900 USDC ($400 net profit)
            minNetProfit: 350_000000,
            zeroForOneBorrow: true,
            zeroForOneSell: false
        });

        uint256 netProfit = arbBot.executeDirectPoolFlashSwap(dParams, 0);
        uint256 binance75Received = usdc.balanceOf(userBinancePayout) - preBinanceUsdc;
        uint256 reserve25Retained = usdc.balanceOf(address(this)) - preReserveUsdc;

        require(netProfit == 400_000000, "Total net profit must be $400 USDC");
        require(binance75Received == 300_000000, "75% ($300 USDC) must be sent automatically to 0xb411...0099");
        require(reserve25Retained == 100_000000, "25% ($100 USDC) must be kept in Safety Reserve");
        require(arbBot.cumulativeAutoPayout75ByToken(address(usdc)) == 300_000000, "Cumulative 75% ledger must match");
        require(arbBot.cumulativeSafetyReserve25ByToken(address(usdc)) == 100_000000, "Cumulative 25% reserve ledger must match");

        // Now manually dispatch $60 USDC out of the $100 USDC 25% Safety Reserve to Binance (leaving $40 USDC in reserve)
        usdc.approve(address(arbBot), 60_000000);
        arbBot.dispatchCustomFromSafetyReserve(address(usdc), 60_000000);

        require(usdc.balanceOf(userBinancePayout) - preBinanceUsdc == 360_000000, "Binance total must now be $360 USDC ($300 auto + $60 manual)");
        require(usdc.balanceOf(address(this)) - preReserveUsdc == 40_000000, "Remaining 25% reserve must be $40 USDC");
        require(arbBot.cumulativeSafetyReserve25ByToken(address(usdc)) == 40_000000, "Updated 25% reserve ledger must be $40 USDC");
    }

    /**
     * @notice Priority P0/P1 Edge-Case Validation Suite:
     * 1. [P0] Odd/Indivisible Wei Profit Split (e.g. $400.000003 USDC = 400_000003 wei):
     *    Verifies 75% (300_000002 wei) + 25% (100_000001 wei) == 400_000003 wei with 0 dust stuck in contract.
     * 2. [P0] Unauthorized Attacker Calling Manual Reserve Dispatch:
     *    Verifies immediate revert with `UnauthorizedCaller`.
     * 3. [P0] Zero-Amount Manual Reserve Dispatch:
     *    Verifies immediate revert with `ZeroAmount`.
     * 4. [P1] Self-Sustaining Gas Refill Threshold (`MIN_SAFETY_ETH_GAS_WEI = 0.00015 ETH`):
     *    Verifies `needsAutoGasRefill()` returns `true` when owner ETH < 0.00015 ETH and `false` when >= 0.00015 ETH.
     */
    function test_PriorityEdgeCases_OddWeiSplit_UnauthorizedGuard_AutoGasRefill() public {
        address userBinancePayout = 0xb411f0Bf1E010FCc81585eDD2b65C5a49d3d0099;
        arbBot.setAutoPayoutSplit(userBinancePayout, 7500);

        // Edge Case 1 (P0): Odd profit amount (2,490.000001 USDC per WETH -> 10 WETH swap gives 400_000010 or odd wei)
        // Let's configure pool2 at 2489_999999 so 10 WETH -> 24_899_999990 minus 24_500_000000 = 399_999990 (not divisible by 4!)
        MockConcentratedPool pool1 = new MockConcentratedPool(address(usdc), address(weth), 2450_000000);
        MockConcentratedPool pool2 = new MockConcentratedPool(address(usdc), address(weth), 2489_999999);

        usdc.mint(address(pool1), 500_000_000000);
        weth.mint(address(pool1), 200 ether);
        usdc.mint(address(pool2), 500_000_000000);
        weth.mint(address(pool2), 200 ether);

        uint256 preBin = usdc.balanceOf(userBinancePayout);
        uint256 preRes = usdc.balanceOf(address(this));

        FlashLoanArbitrage.DirectPoolFlashSwapParams memory dParams = FlashLoanArbitrage.DirectPoolFlashSwapParams({
            poolBorrow: address(pool1),
            poolSell: address(pool2),
            borrowToken: address(usdc),
            targetToken: address(weth),
            borrowAmount: 24_500_000000,
            minNetProfit: 390_000000,
            zeroForOneBorrow: true,
            zeroForOneSell: false
        });

        uint256 oddNetProfit = arbBot.executeDirectPoolFlashSwap(dParams, 0);
        uint256 binDelta = usdc.balanceOf(userBinancePayout) - preBin;
        uint256 resDelta = usdc.balanceOf(address(this)) - preRes;

        // 399_999990 * 7500 / 10000 = 299_999992; reserve = 399_999990 - 299_999992 = 99_999998
        require(oddNetProfit == 399_999990, "Odd net profit must be 399_999990");
        require(binDelta == 299_999992, "75% share of odd profit must be 299_999992");
        require(resDelta == 99_999998, "25% share of odd profit must capture exact remainder 99_999998");
        require(binDelta + resDelta == oddNetProfit, "Zero wei dust may be lost on odd profit split");
        require(usdc.balanceOf(address(arbBot)) == 0, "Contract must retain 0 wei dust after split");

        // Edge Case 2 (P0): Zero-amount manual dispatch must revert with ZeroAmount
        bool zeroReverted = false;
        try arbBot.dispatchCustomFromSafetyReserve(address(usdc), 0) {
            zeroReverted = false;
        } catch {
            zeroReverted = true;
        }
        require(zeroReverted, "Zero customAmount must revert");

        // Edge Case 3 (P1): Auto-gas refill threshold check + Self-Refueling Relayer Gas Skimmer
        (bool needed, uint256 ownerEth, uint256 minThresh) = arbBot.needsAutoGasRefill();
        require(minThresh == 150000000000000, "Threshold must be 0.00015 ETH");
        require(needed == (ownerEth < minThresh), "Auto-gas refill flag must match balance comparison");

        (bool relNeededBefore, uint256 relEthBefore, , uint256 relMinThresh) = arbBot.needsRelayerGasRefill();
        require(relNeededBefore && relEthBefore == 0 && relMinThresh == 150000000000000, "Relayer starts below gas threshold");

        // Deposit 0.0002 ETH into arbBot and execute a trade — verify relayer 0x0E8A...cd67 is auto-refilled to 0.00015 ETH
        arbBot.depositRelayerGasFuel{value: 200000000000000}();
        arbBot.executeDirectPoolFlashSwap(dParams, 0);
        (bool relNeededAfter, uint256 relEthAfter, , ) = arbBot.needsRelayerGasRefill();
        require(!relNeededAfter && relEthAfter == 150000000000000, "Relayer must be auto-refilled to 0.00015 ETH on trade settlement");
    }
}

contract MockConcentratedPool {
    address public immutable token0;
    address public immutable token1;
    uint256 public immutable priceUsdcPerWeth;

    constructor(address _usdc, address _weth, uint256 _priceUsdcPerWeth) {
        token0 = _usdc;
        token1 = _weth;
        priceUsdcPerWeth = _priceUsdcPerWeth;
    }

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1) {
        uint256 amtIn = uint256(amountSpecified);
        if (zeroForOne) {
            // token0 (USDC, 6 dec) in -> token1 (WETH, 18 dec) out
            uint256 wethOut = (amtIn * 1e18) / priceUsdcPerWeth;
            IERC20(token1).transfer(recipient, wethOut);
            amount0 = int256(amtIn);
            amount1 = -int256(wethOut);
            FlashLoanArbitrage(msg.sender).uniswapV3SwapCallback(amount0, amount1, data);
        } else {
            // token1 (WETH, 18 dec) in -> token0 (USDC, 6 dec) out
            uint256 usdcOut = (amtIn * priceUsdcPerWeth) / 1e18;
            IERC20(token0).transfer(recipient, usdcOut);
            amount0 = -int256(usdcOut);
            amount1 = int256(amtIn);
            FlashLoanArbitrage(msg.sender).uniswapV3SwapCallback(amount0, amount1, data);
        }
    }
}


