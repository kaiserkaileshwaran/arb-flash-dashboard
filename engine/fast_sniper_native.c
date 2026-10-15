/*
 * ============================================================================
 * Arbitrum One Ultra-Low-Latency Native C / Assembly Flash-Loan Sniper Kernel
 * (AWS EC2 us-east-1 Intel Xeon x86_64 AVX2/BMI2 + ARM64 Hardware Assembly)
 * ============================================================================
 * Cross-compile to AWS EC2 x86_64 Linux Assembly:
 *   clang --target=x86_64-unknown-linux-gnu -O3 -mavx2 -mbmi2 -S engine/fast_sniper_native.c -o engine/fast_sniper_aws_x86_64.s
 *
 * Compile native binary & shared library on host (AWS Linux or macOS):
 *   clang -O3 -march=native engine/fast_sniper_native.c -o engine/fast_sniper_native
 *   clang -O3 -march=native -shared -fPIC engine/fast_sniper_native.c -o engine/libfastsniper.so
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

/*
 * Single-cycle hardware assembly 64-bit Big-Endian EVM word swap:
 * - On AWS EC2 x86_64 (t2.micro / t3.micro): executes single `bswapq` instruction
 * - On ARM64 (Graviton / Apple Silicon): executes single `rev` instruction
 */
static inline __attribute__((always_inline)) uint64_t asm_evm_be64(uint64_t val) {
#if defined(__x86_64__)
    __asm__("bswapq %0" : "+r"(val));
    return val;
#elif defined(__aarch64__)
    __asm__("rev %0, %0" : "+r"(val));
    return val;
#else
    return __builtin_bswap64(val);
#endif
}

static inline __attribute__((always_inline)) uint32_t asm_evm_be32(uint32_t val) {
#if defined(__x86_64__)
    __asm__("bswapl %0" : "+r"(val));
    return val;
#elif defined(__aarch64__)
    __asm__("rev %w0, %w0" : "+r"(val));
    return val;
#else
    return __builtin_bswap32(val);
#endif
}

typedef struct {
    double uni_v3_price_usd;
    double sushi_v2_price_usd;
    double camelot_v3_price_usd;
    double spread_bps;
    double estimated_gross_profit_usd;
    double gas_reimbursement_usd;
    double estimated_net_profit_usd;
    double aave_min_hf;
    double aave_liquidation_net_usd;
    int    should_execute_dex;
    int    should_execute_liquidation;
} FastTickResult;

/*
 * Hot-path inline assembly-compiled kernel:
 * 1) Evaluates Uniswap V3 Q64.96 price vs Constant-Product reserves
 * 2) Evaluates Aave V3 Borrower Health Factor (1e18 fixed-point) & 5.0% Liquidation Bonus
 * 3) Deducts mandatory gas-from-profit ($0.10 USD)
 */
void evaluate_arbitrum_tick_fast(
    uint64_t sushi_reserve_weth_wei,
    uint64_t sushi_reserve_usdce_raw,
    double   uni_v3_price_usd,
    double   camelot_v3_price_usd,
    double   loan_amount_usd,
    double   fee_floor_bps,
    double   gas_fee_usd,
    uint64_t aave_min_hf_raw_1e18,
    double   aave_repay_debt_usd,
    FastTickResult *out
) {
    double weth_norm = (double)sushi_reserve_weth_wei * 1e-18;
    double usdc_norm = (double)sushi_reserve_usdce_raw * 1e-6;
    double sushi_px  = (weth_norm > 0.0) ? (usdc_norm / weth_norm) : uni_v3_price_usd;

    double min_px = uni_v3_price_usd < camelot_v3_price_usd ? uni_v3_price_usd : camelot_v3_price_usd;
    double max_px = uni_v3_price_usd > camelot_v3_price_usd ? uni_v3_price_usd : camelot_v3_price_usd;
    if (sushi_px < min_px) min_px = sushi_px;
    if (sushi_px > max_px) max_px = sushi_px;

    double spread_bps = (min_px > 0.0) ? ((max_px - min_px) / min_px) * 10000.0 : 0.0;
    double net_edge_bps = spread_bps - fee_floor_bps;
    double gross_usd = (net_edge_bps > 0.0) ? (loan_amount_usd * (net_edge_bps * 0.0001)) : 0.0;
    double net_usd = gross_usd - gas_fee_usd;

    /* Aave V3 Liquidation Evaluation: HF < 1.000000000000000000 (1000000000000000000ULL) */
    double hf_norm = (double)aave_min_hf_raw_1e18 * 1e-18;
    int can_liquidate = (aave_min_hf_raw_1e18 > 0ULL && aave_min_hf_raw_1e18 < 1000000000000000000ULL) ? 1 : 0;
    /* 5.0% WETH Liquidation Bonus minus 0.05% DEX dump fee minus $0.10 gas reimbursement */
    double liq_net_usd = can_liquidate ? (aave_repay_debt_usd * 0.0495 - gas_fee_usd) : 0.0;

    out->uni_v3_price_usd           = uni_v3_price_usd;
    out->sushi_v2_price_usd         = sushi_px;
    out->camelot_v3_price_usd       = camelot_v3_price_usd;
    out->spread_bps                 = spread_bps;
    out->estimated_gross_profit_usd = gross_usd;
    out->gas_reimbursement_usd      = gas_fee_usd;
    out->estimated_net_profit_usd   = net_usd;
    out->aave_min_hf                = hf_norm;
    out->aave_liquidation_net_usd   = liq_net_usd;
    out->should_execute_dex         = (net_usd > 0.05) ? 1 : 0;
    out->should_execute_liquidation = (can_liquidate && liq_net_usd > 0.50) ? 1 : 0;
}

/*
 * Zero-loop Hardware BSWAP64 EVM Calldata Encoder for:
 * executeGaslessRelayedArbitrage(ArbParams, uint256 relayerGasReimbursement)
 * Selector: 0x1034ef63
 */
void encode_gasless_arb_calldata(
    uint8_t  strategy_type,
    uint64_t amount_in_raw,
    uint64_t min_profit_raw,
    uint32_t fee_tier_1,
    uint32_t fee_tier_2,
    uint64_t gas_reimbursement_raw,
    uint8_t  *buf_out /* 388 bytes */
) {
    memset(buf_out, 0, 388);
    /* Function selector: 0x1034ef63 */
    buf_out[0] = 0x10;
    buf_out[1] = 0x34;
    buf_out[2] = 0xef;
    buf_out[3] = 0x63;

    /* strategyType at word 0 (offset 4 + 31) */
    buf_out[4 + 31] = strategy_type;

    /* Single-instruction hardware BSWAP64 writes into EVM 256-bit word slots */
    uint64_t be_amount_in  = asm_evm_be64(amount_in_raw);
    uint64_t be_min_profit = asm_evm_be64(min_profit_raw);
    uint64_t be_gas_reimb  = asm_evm_be64(gas_reimbursement_raw);
    uint32_t be_fee_1      = asm_evm_be32(fee_tier_1);
    uint32_t be_fee_2      = asm_evm_be32(fee_tier_2);

    memcpy(&buf_out[4 + 4 * 32 + 24],  &be_amount_in,  8);
    memcpy(&buf_out[4 + 5 * 32 + 24],  &be_min_profit, 8);
    memcpy(&buf_out[4 + 6 * 32 + 28],  &be_fee_1,      4);
    memcpy(&buf_out[4 + 7 * 32 + 28],  &be_fee_2,      4);
    memcpy(&buf_out[4 + 10 * 32 + 24], &be_gas_reimb,  8);
}

int main(void) {
    FastTickResult res;
    uint8_t calldata[388];

    struct timespec t0, t1;
    clock_gettime(CLOCK_MONOTONIC, &t0);

    const int ITERATIONS = 1000000;
    for (int i = 0; i < ITERATIONS; i++) {
        evaluate_arbitrum_tick_fast(
            4897000000000000000ULL, /* 4.897 WETH */
            10796000000ULL,         /* 10,796 USDC.e */
            2204.60 + (i * 1e-9),
            2207.39,
            1200.0,
            10.0,                   /* 10 bps fee floor */
            0.10,                   /* $0.10 mandatory gas-from-profit */
            995000000000000000ULL,  /* HF = 0.9950 (< 1.0000 liquidatable!) */
            54264.0,                /* $54,264 debt on 0xC358F780... */
            &res
        );
        encode_gasless_arb_calldata(1, 25000000000ULL, 20000000ULL, 500, 500, 100000ULL, calldata);
    }

    clock_gettime(CLOCK_MONOTONIC, &t1);
    double elapsed_ns = (double)(t1.tv_sec - t0.tv_sec) * 1e9 + (double)(t1.tv_nsec - t0.tv_nsec);
    double ns_per_op = elapsed_ns / ITERATIONS;

    printf("======================================================================\n");
    printf("AWS EC2 x86_64 & ARM64 HARDWARE ASSEMBLY SNIPER KERNEL BENCHMARK\n");
    printf("======================================================================\n");
    printf("Iterations Executed      : %d ticks + BSWAP64 EVM calldata encodings\n", ITERATIONS);
    printf("Total CPU Time           : %.3f ms\n", elapsed_ns / 1e6);
    printf("Latency Per Tick         : %.2f nanoseconds (0.0000%.0f ms)\n", ns_per_op, ns_per_op);
    printf("Calldata Prefix (Hex)    : 0x%02x%02x%02x%02x...\n", calldata[0], calldata[1], calldata[2], calldata[3]);
    printf("DEX Spread               : %.2f bps | DEX Net Profit: $%.4f\n",
           res.spread_bps, res.estimated_net_profit_usd);
    printf("Aave HF (0.9950) Bounty  : $%.2f USD Net Profit | Execute Liq: %d\n",
           res.aave_liquidation_net_usd, res.should_execute_liquidation);
    printf("======================================================================\n");
    return 0;
}
