	.build_version macos, 14, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ## -- Begin function evaluate_arbitrum_tick_fast
LCPI0_0:
	.quad	4841369599423283200             ## 0x4330000000000000
	.quad	4841369599423283200             ## 0x4330000000000000
LCPI0_1:
	.quad	4985484787499139072             ## 0x4530000000000000
	.quad	4985484787499139072             ## 0x4530000000000000
LCPI0_2:
	.quad	0x4530000000100000              ## double 1.9342813118337666E+25
	.quad	0x4530000000100000              ## double 1.9342813118337666E+25
LCPI0_3:
	.quad	0x3eb0c6f7a0b5ed8d              ## double 9.9999999999999995E-7
	.quad	0x3c32725dd1d243ac              ## double 1.0000000000000001E-18
LCPI0_6:
	.long	1127219200                      ## 0x43300000
	.long	1160773632                      ## 0x45300000
	.long	0                               ## 0x0
	.long	0                               ## 0x0
LCPI0_7:
	.quad	0x4330000000000000              ## double 4503599627370496
	.quad	0x4530000000000000              ## double 1.9342813113834067E+25
LCPI0_12:
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	1                               ## 0x1
	.long	0                               ## 0x0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0
LCPI0_4:
	.quad	0x40c3880000000000              ## double 1.0E+4
LCPI0_5:
	.quad	0x3fa95810624dd2f2              ## double 0.049500000000000002
LCPI0_8:
	.quad	0x3c32725dd1d243ac              ## double 1.0000000000000001E-18
LCPI0_9:
	.quad	0x3f1a36e2eb1c432d              ## double 1.0E-4
LCPI0_10:
	.quad	0x3fa999999999999a              ## double 0.050000000000000003
LCPI0_11:
	.quad	0x3fe0000000000000              ## double 0.5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_arbitrum_tick_fast
	.p2align	4
_evaluate_arbitrum_tick_fast:           ## @evaluate_arbitrum_tick_fast
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	vmovq	%rdi, %xmm6
	vmovq	%rsi, %xmm7
	vpunpcklqdq	%xmm6, %xmm7, %xmm6     ## xmm6 = xmm7[0],xmm6[0]
	vpxor	%xmm7, %xmm7, %xmm7
	vpblendd	$10, %xmm7, %xmm6, %xmm7        ## xmm7 = xmm6[0],xmm7[1],xmm6[2],xmm7[3]
	vpor	LCPI0_0(%rip), %xmm7, %xmm7
	vpsrlq	$32, %xmm6, %xmm6
	vpor	LCPI0_1(%rip), %xmm6, %xmm6
	vsubpd	LCPI0_2(%rip), %xmm6, %xmm6
	vaddpd	%xmm6, %xmm7, %xmm6
	vmulpd	LCPI0_3(%rip), %xmm6, %xmm8
	vshufpd	$1, %xmm8, %xmm8, %xmm9         ## xmm9 = xmm8[1,0]
	vxorpd	%xmm6, %xmm6, %xmm6
	vucomisd	%xmm6, %xmm9
	vmovapd	%xmm0, %xmm7
	jbe	LBB0_2
## %bb.1:
	vdivsd	%xmm9, %xmm8, %xmm7
LBB0_2:
	vminsd	%xmm1, %xmm0, %xmm8
	vmaxsd	%xmm1, %xmm0, %xmm9
	vminsd	%xmm8, %xmm7, %xmm8
	vmaxsd	%xmm9, %xmm7, %xmm9
	vsubsd	%xmm8, %xmm9, %xmm9
	vdivsd	%xmm8, %xmm9, %xmm9
	vmulsd	LCPI0_4(%rip), %xmm9, %xmm9
	vcmpltsd	%xmm8, %xmm6, %xmm8
	vandpd	%xmm9, %xmm8, %xmm8
	leaq	-1(%rdx), %rax
	movabsq	$999999999999999999, %rsi       ## imm = 0xDE0B6B3A763FFFF
	cmpq	%rsi, %rax
	setb	%al
	jb	LBB0_3
## %bb.4:
	vxorpd	%xmm5, %xmm5, %xmm5
	jmp	LBB0_5
LBB0_3:
	vmulsd	LCPI0_5(%rip), %xmm5, %xmm5
	vsubsd	%xmm4, %xmm5, %xmm5
LBB0_5:
	vmovq	%rdx, %xmm9
	vpunpckldq	LCPI0_6(%rip), %xmm9, %xmm9 ## xmm9 = xmm9[0],mem[0],xmm9[1],mem[1]
	vsubpd	LCPI0_7(%rip), %xmm9, %xmm9
	vshufpd	$1, %xmm9, %xmm9, %xmm10        ## xmm10 = xmm9[1,0]
	vaddsd	%xmm9, %xmm10, %xmm9
	vmulsd	LCPI0_8(%rip), %xmm9, %xmm9
	vsubsd	%xmm3, %xmm8, %xmm3
	vmulsd	LCPI0_9(%rip), %xmm3, %xmm10
	vmulsd	%xmm2, %xmm10, %xmm2
	vcmpltsd	%xmm3, %xmm6, %xmm3
	vandpd	%xmm2, %xmm3, %xmm2
	vsubsd	%xmm4, %xmm2, %xmm3
	vmovsd	%xmm0, (%rcx)
	vmovsd	%xmm7, 8(%rcx)
	vmovsd	%xmm1, 16(%rcx)
	vmovlpd	%xmm8, 24(%rcx)
	vucomisd	LCPI0_10(%rip), %xmm3
	vmovlpd	%xmm2, 32(%rcx)
	vmovsd	%xmm4, 40(%rcx)
	seta	%dl
	vmovsd	%xmm3, 48(%rcx)
	vucomisd	LCPI0_11(%rip), %xmm5
	vmovsd	%xmm9, 56(%rcx)
	vmovsd	%xmm5, 64(%rcx)
	seta	%sil
	andb	%sil, %al
	vmovd	%edx, %xmm0
	vpinsrb	$8, %eax, %xmm0, %xmm0
	vpshufd	$232, %xmm0, %xmm0              ## xmm0 = xmm0[0,2,2,3]
	vpand	LCPI0_12(%rip), %xmm0, %xmm0
	vmovq	%xmm0, 72(%rcx)
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.globl	_encode_gasless_arb_calldata    ## -- Begin function encode_gasless_arb_calldata
	.p2align	4
_encode_gasless_arb_calldata:           ## @encode_gasless_arb_calldata
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	movq	16(%rbp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, (%rax)
	vmovups	%ymm0, 32(%rax)
	vmovups	%ymm0, 160(%rax)
	vmovups	%ymm0, 128(%rax)
	vmovups	%ymm0, 192(%rax)
	vmovups	%ymm0, 224(%rax)
	vmovups	%ymm0, 256(%rax)
	vmovups	%ymm0, 352(%rax)
	vmovups	%ymm0, 320(%rax)
	vmovups	%ymm0, 288(%rax)
	vmovups	%ymm0, 96(%rax)
	vmovups	%ymm0, 64(%rax)
	movl	$0, 384(%rax)
	movl	$1676620816, (%rax)             ## imm = 0x63EF3410
	bswapq	%rsi
	bswapq	%rdx
	bswapq	%r9
	movb	%dil, 35(%rax)
	bswapl	%ecx
	bswapl	%r8d
	movq	%rsi, 156(%rax)
	movq	%rdx, 188(%rax)
	movl	%ecx, 224(%rax)
	movl	%r8d, 256(%rax)
	movq	%r9, 348(%rax)
	popq	%rbp
	vzeroupper
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ## -- Begin function main
LCPI2_0:
	.quad	0x41cdcd6500000000              ## double 1.0E+9
LCPI2_1:
	.quad	0x412e848000000000              ## double 1.0E+6
LCPI2_2:
	.quad	0x40294d37a8f30965              ## double 12.650815276782575
LCPI2_3:
	.quad	0x3fcbeaa13a7db8cb              ## double 0.21809783321390905
LCPI2_4:
	.quad	0x40a4fbef9db22d0f              ## double 2685.9680000000003
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4
_main:                                  ## @main
	.cfi_startproc
## %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset %rbx, -24
	leaq	-48(%rbp), %rsi
	movl	$6, %edi
	callq	_clock_gettime
	leaq	-32(%rbp), %rsi
	movl	$6, %edi
	callq	_clock_gettime
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rcx
	subq	-48(%rbp), %rax
	vcvtsi2sd	%rax, %xmm15, %xmm0
	subq	-40(%rbp), %rcx
	vcvtsi2sd	%rcx, %xmm15, %xmm1
	vmulsd	LCPI2_0(%rip), %xmm0, %xmm0
	vaddsd	%xmm1, %xmm0, %xmm0
	vdivsd	LCPI2_1(%rip), %xmm0, %xmm0
	vmovsd	%xmm0, -16(%rbp)                ## 8-byte Spill
	leaq	L_str.10(%rip), %rbx
	movq	%rbx, %rdi
	callq	_puts
	leaq	L_str.8(%rip), %rdi
	callq	_puts
	movq	%rbx, %rdi
	callq	_puts
	leaq	L_.str.2(%rip), %rdi
	movl	$1000000, %esi                  ## imm = 0xF4240
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.3(%rip), %rdi
	vmovsd	-16(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	movb	$1, %al
	callq	_printf
	leaq	L_.str.4(%rip), %rdi
	vmovsd	-16(%rbp), %xmm0                ## 8-byte Reload
                                        ## xmm0 = mem[0],zero
	vmovaps	%xmm0, %xmm1
	movb	$2, %al
	callq	_printf
	leaq	L_.str.5(%rip), %rdi
	movl	$16, %esi
	movl	$52, %edx
	movl	$239, %ecx
	movl	$99, %r8d
	xorl	%eax, %eax
	callq	_printf
	leaq	L_.str.6(%rip), %rdi
	vmovsd	LCPI2_2(%rip), %xmm0            ## xmm0 = [1.2650815276782575E+1,0.0E+0]
	vmovsd	LCPI2_3(%rip), %xmm1            ## xmm1 = [2.1809783321390905E-1,0.0E+0]
	movb	$2, %al
	callq	_printf
	leaq	L_.str.7(%rip), %rdi
	vmovsd	LCPI2_4(%rip), %xmm0            ## xmm0 = [2.6859680000000003E+3,0.0E+0]
	movl	$1, %esi
	movb	$1, %al
	callq	_printf
	movq	%rbx, %rdi
	callq	_puts
	xorl	%eax, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
	.cfi_endproc
                                        ## -- End function
	.section	__TEXT,__cstring,cstring_literals
L_.str.2:                               ## @.str.2
	.asciz	"Iterations Executed      : %d ticks + BSWAP64 EVM calldata encodings\n"

L_.str.3:                               ## @.str.3
	.asciz	"Total CPU Time           : %.3f ms\n"

L_.str.4:                               ## @.str.4
	.asciz	"Latency Per Tick         : %.2f nanoseconds (0.0000%.0f ms)\n"

L_.str.5:                               ## @.str.5
	.asciz	"Calldata Prefix (Hex)    : 0x%02x%02x%02x%02x...\n"

L_.str.6:                               ## @.str.6
	.asciz	"DEX Spread               : %.2f bps | DEX Net Profit: $%.4f\n"

L_.str.7:                               ## @.str.7
	.asciz	"Aave HF (0.9950) Bounty  : $%.2f USD Net Profit | Execute Liq: %d\n"

L_str.8:                                ## @str.8
	.asciz	"AWS EC2 x86_64 & ARM64 HARDWARE ASSEMBLY SNIPER KERNEL BENCHMARK"

L_str.10:                               ## @str.10
	.asciz	"======================================================================"

.subsections_via_symbols
