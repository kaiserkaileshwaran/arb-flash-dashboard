	.file	"fast_sniper_native.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function evaluate_v3_route_batch_asm
.LCPI0_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
.LCPI0_13:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_14:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
.LCPI0_15:
	.quad	0x40d86a0000000000              # double 25000
	.quad	0x40d86a0000000000              # double 25000
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0
.LCPI0_1:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
.LCPI0_2:
	.quad	0x40c3880000000000              # double 1.0E+4
.LCPI0_3:
	.quad	0xc08f380000000000              # double -999
.LCPI0_4:
	.quad	0x3eb0c6f7a0b5ed8d              # double 9.9999999999999995E-7
.LCPI0_5:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_6:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI0_7:
	.quad	0x3cd203af9ee75616              # double 1.0000000000000001E-15
.LCPI0_8:
	.quad	0x4024000000000000              # double 10
.LCPI0_9:
	.quad	0x4039000000000000              # double 25
.LCPI0_10:
	.quad	0x40d86a0000000000              # double 25000
.LCPI0_11:
	.quad	0xc07f400000000000              # double -500
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2, 0x0
.LCPI0_12:
	.long	4                               # 0x4
	.text
	.globl	evaluate_v3_route_batch_asm
	.p2align	4
	.type	evaluate_v3_route_batch_asm,@function
evaluate_v3_route_batch_asm:            # @evaluate_v3_route_batch_asm
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%r9, -24(%rsp)                  # 8-byte Spill
	testl	%edi, %edi
	jle	.LBB0_68
# %bb.1:
	movq	%rsi, %r10
	movq	208(%rsp), %rax
	movq	200(%rsp), %r13
	movq	192(%rsp), %rbx
	movq	184(%rsp), %rsi
	movq	176(%rsp), %r14
	movq	168(%rsp), %r11
	movq	160(%rsp), %r15
	movl	%edi, %r9d
	movl	%edi, 84(%rsp)                  # 4-byte Spill
	cmpl	$28, %edi
	movq	%r8, 72(%rsp)                   # 8-byte Spill
	movq	%rcx, 24(%rsp)                  # 8-byte Spill
	movq	%r9, 16(%rsp)                   # 8-byte Spill
	jae	.LBB0_3
# %bb.2:
	movq	$0, -16(%rsp)                   # 8-byte Folded Spill
.LBB0_58:
	movq	-16(%rsp), %rbp                 # 8-byte Reload
	leaq	(,%rbp,8), %rbx
	movq	192(%rsp), %rcx
	leaq	(%rcx,%rbp,8), %rdi
	leaq	(,%rbp,8), %rcx
	addq	%r13, %rcx
	movq	%rcx, (%rsp)                    # 8-byte Spill
	leaq	(%rsi,%rbp,8), %rsi
	leaq	(%r15,%rbp,8), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	leaq	(%rax,%rbp,4), %r15
	leaq	(%r14,%rbp,8), %r12
	leaq	(%r11,%rbp,8), %r13
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%rbp,8), %r11
	leaq	(%rdx,%rbp,8), %r9
	movq	%rdi, %rdx
	leaq	(%r10,%rbp,8), %r14
	subq	16(%rsp), %rbp                  # 8-byte Folded Reload
	xorl	%r10d, %r10d
	vmovsd	.LCPI0_2(%rip), %xmm1           # xmm1 = [1.0E+4,0.0E+0]
	vmovsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1.0000000000000001E-9,0.0E+0]
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovddup	.LCPI0_4(%rip), %xmm4           # xmm4 = [9.9999999999999995E-7,9.9999999999999995E-7]
                                        # xmm4 = mem[0,0]
	vmovddup	.LCPI0_5(%rip), %xmm5           # xmm5 = [1.0E+0,1.0E+0]
                                        # xmm5 = mem[0,0]
	vmovsd	.LCPI0_6(%rip), %xmm6           # xmm6 = [1.0E-4,0.0E+0]
	vmovsd	.LCPI0_7(%rip), %xmm7           # xmm7 = [1.0000000000000001E-15,0.0E+0]
	vmovsd	.LCPI0_8(%rip), %xmm8           # xmm8 = [1.0E+1,0.0E+0]
	vmovddup	.LCPI0_10(%rip), %xmm11         # xmm11 = [2.5E+4,2.5E+4]
                                        # xmm11 = mem[0,0]
	vmovsd	.LCPI0_3(%rip), %xmm12          # xmm12 = [-9.99E+2,0.0E+0]
	movq	72(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_59
	.p2align	4
.LBB0_60:                               #   in Loop: Header=BB0_59 Depth=1
	movq	$0, (%rsi,%r10,8)
	vaddsd	%xmm12, %xmm15, %xmm9
.LBB0_74:                               #   in Loop: Header=BB0_59 Depth=1
	vmovsd	%xmm9, (%rdx,%r10,8)
	vsubsd	%xmm0, %xmm9, %xmm9
	movq	(%rsp), %rcx                    # 8-byte Reload
	vmovsd	%xmm9, (%rcx,%r10,8)
	incq	%r10
	movq	%rbp, %rcx
	addq	%r10, %rcx
	je	.LBB0_61
.LBB0_59:                               # =>This Inner Loop Header: Depth=1
	vmovsd	(%r14,%r10,8), %xmm9            # xmm9 = mem[0],zero
	vmovsd	(%r9,%r10,8), %xmm13            # xmm13 = mem[0],zero
	vucomisd	%xmm9, %xmm13
	setae	%r8b
	vmovd	%r8d, %xmm14
	vpbroadcastb	%xmm14, %xmm14
	vpsllq	$63, %xmm14, %xmm14
	vunpcklpd	%xmm13, %xmm9, %xmm15   # xmm15 = xmm9[0],xmm13[0]
	vunpcklpd	%xmm9, %xmm13, %xmm9    # xmm9 = xmm13[0],xmm9[0]
	vblendvpd	%xmm14, %xmm15, %xmm9, %xmm15
	movq	%rdi, %r8
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmovaeq	%rcx, %r8
	cmovaeq	%rdi, %rcx
	addq	%rbx, %r8
	vmovsd	(%r8,%r10,8), %xmm13            # xmm13 = mem[0],zero
	addq	%rbx, %rcx
	vmovsd	(%rcx,%r10,8), %xmm9            # xmm9 = mem[0],zero
	vshufpd	$1, %xmm15, %xmm15, %xmm14      # xmm14 = xmm15[1,0]
	vsubsd	%xmm15, %xmm14, %xmm10
	vdivsd	%xmm15, %xmm10, %xmm10
	vmulsd	%xmm1, %xmm10, %xmm10
	vcmpltsd	%xmm15, %xmm2, %xmm15
	vandpd	%xmm10, %xmm15, %xmm10
	vsubsd	(%r11,%r10,8), %xmm10, %xmm15
	vmovlpd	%xmm10, (%r13,%r10,8)
	vmovsd	%xmm15, (%r12,%r10,8)
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	addl	%r10d, %ecx
	movl	%ecx, (%r15,%r10,4)
	vucomisd	%xmm15, %xmm3
	jae	.LBB0_60
# %bb.69:                               #   in Loop: Header=BB0_59 Depth=1
	vunpcklpd	%xmm13, %xmm9, %xmm9    # xmm9 = xmm9[0],xmm13[0]
	vmaxpd	%xmm4, %xmm9, %xmm9
	vmulpd	%xmm9, %xmm14, %xmm9
	vdivpd	%xmm9, %xmm5, %xmm9
	vshufpd	$1, %xmm9, %xmm9, %xmm10        # xmm10 = xmm9[1,0]
	vaddsd	%xmm9, %xmm10, %xmm13
	vmulsd	%xmm6, %xmm15, %xmm14
	vucomisd	%xmm7, %xmm13
	vxorpd	%xmm9, %xmm9, %xmm9
	jbe	.LBB0_71
# %bb.70:                               #   in Loop: Header=BB0_59 Depth=1
	vaddsd	%xmm13, %xmm13, %xmm9
	vdivsd	%xmm9, %xmm14, %xmm9
.LBB0_71:                               #   in Loop: Header=BB0_59 Depth=1
	vucomisd	%xmm9, %xmm8
	jbe	.LBB0_73
# %bb.72:                               #   in Loop: Header=BB0_59 Depth=1
	movq	$0, (%rsi,%r10,8)
	vaddsd	.LCPI0_11(%rip), %xmm9, %xmm9
	jmp	.LBB0_74
	.p2align	4
.LBB0_73:                               #   in Loop: Header=BB0_59 Depth=1
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	vmovsd	(%rcx,%r10,8), %xmm10           # xmm10 = mem[0],zero
	vcmpltsd	.LCPI0_9(%rip), %xmm10, %xmm15
	vblendvpd	%xmm15, %xmm11, %xmm10, %xmm10
	vminsd	%xmm9, %xmm10, %xmm10
	vmulsd	%xmm10, %xmm10, %xmm9
	vmulsd	%xmm13, %xmm9, %xmm9
	vmulsd	%xmm14, %xmm10, %xmm13
	vsubsd	%xmm9, %xmm13, %xmm9
	vmovsd	%xmm10, (%rsi,%r10,8)
	jmp	.LBB0_74
.LBB0_3:
	movq	%r10, (%rsp)                    # 8-byte Spill
	movq	%rdx, -8(%rsp)                  # 8-byte Spill
	leaq	(%r11,%r9,8), %r10
	movq	%r14, %rsi
	leaq	(%r14,%r9,8), %r14
	leaq	(%rax,%r9,4), %r12
	movq	184(%rsp), %rdx
	leaq	(%rdx,%r9,8), %r15
	leaq	(%rbx,%r9,8), %rbp
	leaq	(%r13,%r9,8), %rdi
	movq	%rdi, 32(%rsp)                  # 8-byte Spill
	movq	(%rsp), %rdx                    # 8-byte Reload
	leaq	(%rdx,%r9,8), %rbx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%r9,8), %rdx
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	cmpq	%r14, %r11
	setb	-31(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %rsi
	setb	-34(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r11
	setb	-25(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %rax
	setb	-35(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, %r11
	setb	-26(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, 184(%rsp)
	setb	-36(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbp, %r11
	setb	-27(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, 192(%rsp)
	setb	-37(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %r11
	setb	-28(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %r13
	setb	-38(%rsp)                       # 1-byte Folded Spill
	movq	%rbx, %r13
	movq	%rbx, 56(%rsp)                  # 8-byte Spill
	cmpq	%rbx, %r11
	setb	-29(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, (%rsp)                    # 8-byte Folded Reload
	setb	-39(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdx, %r11
	setb	-30(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, -8(%rsp)                  # 8-byte Folded Reload
	setb	-40(%rsp)                       # 1-byte Folded Spill
	leaq	(%r8,%r9,8), %rdx
	movq	%rdx, 8(%rsp)                   # 8-byte Spill
	cmpq	%rdx, %r11
	setb	-32(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %r8
	setb	-42(%rsp)                       # 1-byte Folded Spill
	leaq	(%rcx,%r9,8), %rdi
	movq	%rdi, 64(%rsp)                  # 8-byte Spill
	cmpq	%rdi, %r11
	setb	-33(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %rcx
	movq	192(%rsp), %r8
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	leaq	(%rcx,%r9,8), %rdi
	setb	-62(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %r11
	movq	%rdi, 96(%rsp)                  # 8-byte Spill
	setb	-41(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, -24(%rsp)                 # 8-byte Folded Reload
	movq	160(%rsp), %rbx
	leaq	(%rbx,%r9,8), %rcx
	movq	%rcx, 88(%rsp)                  # 8-byte Spill
	setb	-63(%rsp)                       # 1-byte Folded Spill
	cmpq	%rcx, %r11
	setb	-43(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, 160(%rsp)
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	(%rsp), %r10                    # 8-byte Reload
	setb	-64(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rsi
	setb	-44(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %rax
	setb	-65(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, %rsi
	setb	-45(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, 184(%rsp)
	setb	-66(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbp, %rsi
	setb	-46(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %r8
	setb	-67(%rsp)                       # 1-byte Folded Spill
	cmpq	32(%rsp), %rsi                  # 8-byte Folded Reload
	setb	-47(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, 200(%rsp)
	setb	-68(%rsp)                       # 1-byte Folded Spill
	cmpq	%r13, %rsi
	setb	-48(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %r10
	setb	-69(%rsp)                       # 1-byte Folded Spill
	movq	-16(%rsp), %r9                  # 8-byte Reload
	cmpq	%r9, %rsi
	setb	-49(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %rdx
	setb	-70(%rsp)                       # 1-byte Folded Spill
	movq	8(%rsp), %rbx                   # 8-byte Reload
	cmpq	%rbx, %rsi
	setb	-50(%rsp)                       # 1-byte Folded Spill
	movq	72(%rsp), %r11                  # 8-byte Reload
	cmpq	%r14, %r11
	setb	-71(%rsp)                       # 1-byte Folded Spill
	movq	64(%rsp), %r13                  # 8-byte Reload
	cmpq	%r13, %rsi
	setb	-51(%rsp)                       # 1-byte Folded Spill
	movq	24(%rsp), %rcx                  # 8-byte Reload
	cmpq	%r14, %rcx
	setb	-72(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %rsi
	setb	-52(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, -24(%rsp)                 # 8-byte Folded Reload
	setb	-73(%rsp)                       # 1-byte Folded Spill
	cmpq	88(%rsp), %rsi                  # 8-byte Folded Reload
	movq	184(%rsp), %rsi
	setb	-53(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, 160(%rsp)
	setb	-74(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, %rax
	setb	-84(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rsi
	setb	-75(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbp, %rax
	movq	%rbp, 48(%rsp)                  # 8-byte Spill
	setb	-54(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r8
	setb	-76(%rsp)                       # 1-byte Folded Spill
	movq	32(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rdi, %rax
	setb	-55(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, 200(%rsp)
	setb	-77(%rsp)                       # 1-byte Folded Spill
	movq	56(%rsp), %r8                   # 8-byte Reload
	cmpq	%r8, %rax
	setb	-56(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r10
	setb	-78(%rsp)                       # 1-byte Folded Spill
	cmpq	%r9, %rax
	setb	-57(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rdx
	setb	-79(%rsp)                       # 1-byte Folded Spill
	movq	%rbx, %r14
	cmpq	%rbx, %rax
	setb	-58(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r11
	setb	-80(%rsp)                       # 1-byte Folded Spill
	cmpq	%r13, %rax
	movq	%r13, %rbx
	setb	-59(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rcx
	setb	-81(%rsp)                       # 1-byte Folded Spill
	movq	96(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rcx, %rax
	setb	-60(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, -24(%rsp)                 # 8-byte Folded Reload
	setb	-82(%rsp)                       # 1-byte Folded Spill
	movq	88(%rsp), %r13                  # 8-byte Reload
	cmpq	%r13, %rax
	setb	-61(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, 160(%rsp)
	setb	-83(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbp, %rsi
	setb	-88(%rsp)                       # 1-byte Folded Spill
	movq	192(%rsp), %r9
	cmpq	%r15, %r9
	setb	-86(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %rsi
	movq	%rdi, %rbp
	setb	-85(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, 200(%rsp)
	setb	-87(%rsp)                       # 1-byte Folded Spill
	movq	%r8, %r12
	cmpq	%r8, %rsi
	setb	-89(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, %r10
	setb	-90(%rsp)                       # 1-byte Folded Spill
	movq	-16(%rsp), %r9                  # 8-byte Reload
	cmpq	%r9, %rsi
	setb	-91(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, %rdx
	setb	-92(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %rsi
	setb	-93(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, %r11
	setb	-94(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbx, %rsi
	setb	-95(%rsp)                       # 1-byte Folded Spill
	movq	24(%rsp), %rdi                  # 8-byte Reload
	cmpq	%r15, %rdi
	setb	-96(%rsp)                       # 1-byte Folded Spill
	movq	%rcx, %r8
	cmpq	%rcx, %rsi
	setb	-97(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, -24(%rsp)                 # 8-byte Folded Reload
	setb	-98(%rsp)                       # 1-byte Folded Spill
	cmpq	%r13, %rsi
	setb	-99(%rsp)                       # 1-byte Folded Spill
	cmpq	%r15, 160(%rsp)
	movq	160(%rsp), %r15
	setb	-100(%rsp)                      # 1-byte Folded Spill
	movq	192(%rsp), %rcx
	cmpq	%rbp, %rcx
	setb	-101(%rsp)                      # 1-byte Folded Spill
	movq	48(%rsp), %r14                  # 8-byte Reload
	cmpq	%r14, 200(%rsp)
	setb	-102(%rsp)                      # 1-byte Folded Spill
	cmpq	%r12, %rcx
	setb	-103(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %r10
	setb	-104(%rsp)                      # 1-byte Folded Spill
	cmpq	%r9, %rcx
	setb	-105(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %rdx
	setb	-106(%rsp)                      # 1-byte Folded Spill
	movq	8(%rsp), %r9                    # 8-byte Reload
	cmpq	%r9, %rcx
	setb	-107(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %r11
	setb	-108(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, %rcx
	movq	%rbx, %rbp
	setb	-109(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %rdi
	setb	-110(%rsp)                      # 1-byte Folded Spill
	cmpq	%r8, %rcx
	setb	-111(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, -24(%rsp)                 # 8-byte Folded Reload
	setb	-112(%rsp)                      # 1-byte Folded Spill
	cmpq	%r13, %rcx
	movq	%r13, %rbx
	setb	-113(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %r15
	setb	48(%rsp)                        # 1-byte Folded Spill
	cmpq	%r12, 200(%rsp)
	setb	56(%rsp)                        # 1-byte Folded Spill
	movq	32(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rcx, %r10
	setb	-114(%rsp)                      # 1-byte Folded Spill
	movq	-16(%rsp), %r14                 # 8-byte Reload
	cmpq	%r14, 200(%rsp)
	setb	-115(%rsp)                      # 1-byte Folded Spill
	cmpq	%rcx, %rdx
	setb	-116(%rsp)                      # 1-byte Folded Spill
	cmpq	%r9, 200(%rsp)
	setb	8(%rsp)                         # 1-byte Folded Spill
	cmpq	%rcx, %r11
	setb	-117(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbp, 200(%rsp)
	setb	%r12b
	cmpq	%rcx, %rdi
	setb	%r11b
	cmpq	%r8, 200(%rsp)
	movq	200(%rsp), %r13
	setb	%dil
	cmpq	%rcx, -24(%rsp)                 # 8-byte Folded Reload
	setb	64(%rsp)                        # 1-byte Folded Spill
	cmpq	%rbx, %r13
	setb	%bl
	cmpq	%rcx, %r15
	setb	32(%rsp)                        # 1-byte Folded Spill
	movq	$0, -16(%rsp)                   # 8-byte Folded Spill
	movzbl	-34(%rsp), %ecx                 # 1-byte Folded Reload
	testb	%cl, -31(%rsp)                  # 1-byte Folded Reload
	jne	.LBB0_4
# %bb.5:
	movl	%edi, %r9d
	movzbl	-84(%rsp), %edi                 # 1-byte Folded Reload
	movzbl	-35(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -25(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_4
# %bb.6:
	movl	%r11d, %ebp
	movzbl	-36(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -26(%rsp)                  # 1-byte Folded Spill
	movq	168(%rsp), %r11
	movq	176(%rsp), %r14
	jne	.LBB0_58
# %bb.7:
	movzbl	-37(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -27(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.8:
	movzbl	-38(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -28(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.9:
	movzbl	-39(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -29(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.10:
	movzbl	-40(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -30(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.11:
	movzbl	-42(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -32(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.12:
	movzbl	-62(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -33(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.13:
	movzbl	-63(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -41(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.14:
	movzbl	-64(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -43(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.15:
	movzbl	-65(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -44(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.16:
	movzbl	-66(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -45(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.17:
	movzbl	-67(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -46(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.18:
	movzbl	-68(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -47(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.19:
	movzbl	-69(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -48(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.20:
	movzbl	-70(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -49(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.21:
	movzbl	-71(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -50(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.22:
	movzbl	-72(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -51(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.23:
	movzbl	-73(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -52(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.24:
	movzbl	-74(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -53(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.25:
	andb	-75(%rsp), %dil                 # 1-byte Folded Reload
	jne	.LBB0_58
# %bb.26:
	movzbl	-76(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -54(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.27:
	movzbl	-77(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -55(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.28:
	movzbl	-78(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -56(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.29:
	movzbl	-79(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -57(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.30:
	movzbl	-80(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -58(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.31:
	movzbl	-81(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -59(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.32:
	movzbl	-82(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -60(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.33:
	movzbl	-83(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -61(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.34:
	movzbl	-88(%rsp), %ecx                 # 1-byte Folded Reload
	andb	-86(%rsp), %cl                  # 1-byte Folded Reload
	jne	.LBB0_58
# %bb.35:
	movzbl	-87(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -85(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.36:
	movzbl	-90(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -89(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.37:
	movzbl	-92(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -91(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.38:
	movzbl	-94(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -93(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.39:
	movzbl	-96(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -95(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.40:
	movzbl	-98(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -97(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.41:
	movzbl	-100(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -99(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.42:
	movzbl	-102(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -101(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.43:
	movzbl	-104(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -103(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.44:
	movzbl	-106(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -105(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.45:
	movzbl	-108(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -107(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.46:
	movzbl	-110(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -109(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.47:
	movzbl	-112(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -111(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.48:
	movzbl	48(%rsp), %ecx                  # 1-byte Folded Reload
	andb	%cl, -113(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.49:
	movzbl	-114(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, 56(%rsp)                   # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.50:
	movzbl	-116(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -115(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.51:
	movzbl	-117(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, 8(%rsp)                    # 1-byte Folded Spill
	jne	.LBB0_58
# %bb.52:
	andb	%bpl, %r12b
	jne	.LBB0_58
# %bb.53:
	andb	64(%rsp), %r9b                  # 1-byte Folded Reload
	jne	.LBB0_58
# %bb.54:
	andb	32(%rsp), %bl                   # 1-byte Folded Reload
	jne	.LBB0_58
# %bb.55:
	movq	16(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	vmovapd	%xmm0, 32(%rsp)                 # 16-byte Spill
	vbroadcastsd	%xmm0, %ymm0
	movl	%edi, %r9d
	shrl	$2, %r9d
	andl	$536870911, %r9d                # imm = 0x1FFFFFFF
	shlq	$4, %r9
	vmovdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [0,1,2,3]
	xorl	%edi, %edi
	vxorpd	%xmm5, %xmm5, %xmm5
	vbroadcastsd	.LCPI0_4(%rip), %ymm7   # ymm7 = [9.9999999999999995E-7,9.9999999999999995E-7,9.9999999999999995E-7,9.9999999999999995E-7]
	vbroadcastsd	.LCPI0_5(%rip), %ymm8   # ymm8 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vpbroadcastd	.LCPI0_12(%rip), %xmm15 # xmm15 = [4,4,4,4]
	movq	192(%rsp), %rcx
	movq	72(%rsp), %r8                   # 8-byte Reload
	movq	24(%rsp), %r12                  # 8-byte Reload
	.p2align	4
.LBB0_56:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%rdi,2), %ymm3
	vmovupd	(%rdx,%rdi,2), %ymm4
	vcmplepd	%ymm4, %ymm3, %ymm6
	vmovd	%xmm6, %esi
	testb	$1, %sil
	movq	%r8, %r13
	cmovneq	%r12, %r13
	vpextrb	$8, %xmm6, %r10d
	movq	%r12, %r14
	cmovneq	%r8, %r14
	testb	$1, %r10b
	movq	%r8, %r10
	cmovneq	%r12, %r10
	vextracti128	$1, %ymm6, %xmm9
	vpextrb	$0, %xmm9, %r11d
	movq	%r12, %rbx
	cmovneq	%r8, %rbx
	testb	$1, %r11b
	movq	%r8, %r11
	cmovneq	%r12, %r11
	vpextrb	$8, %xmm9, %ebp
	movq	%r12, %r15
	cmovneq	%r8, %r15
	testb	$1, %bpl
	vmovsd	16(%r11,%rdi,2), %xmm9          # xmm9 = mem[0],zero
	movq	%r8, %r11
	cmovneq	%r12, %r11
	vmovhpd	24(%r11,%rdi,2), %xmm9, %xmm9   # xmm9 = xmm9[0],mem[0]
	movq	168(%rsp), %r11
	vmovsd	(%r13,%rdi,2), %xmm10           # xmm10 = mem[0],zero
	movq	200(%rsp), %r13
	vmovhpd	8(%r10,%rdi,2), %xmm10, %xmm10  # xmm10 = xmm10[0],mem[0]
	movq	%r12, %r10
	cmovneq	%r8, %r10
	vmovsd	16(%r15,%rdi,2), %xmm11         # xmm11 = mem[0],zero
	movq	160(%rsp), %r15
	vmovhpd	24(%r10,%rdi,2), %xmm11, %xmm11 # xmm11 = xmm11[0],mem[0]
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	movq	(%rsp), %r10                    # 8-byte Reload
	vmovsd	(%r14,%rdi,2), %xmm12           # xmm12 = mem[0],zero
	movq	176(%rsp), %r14
	vmovhpd	8(%rbx,%rdi,2), %xmm12, %xmm12  # xmm12 = xmm12[0],mem[0]
	vblendvpd	%ymm6, %ymm3, %ymm4, %ymm13
	vblendvpd	%ymm6, %ymm4, %ymm3, %ymm4
	vbroadcastsd	.LCPI0_1(%rip), %ymm3   # ymm3 = [1.0000000000000001E-9,1.0000000000000001E-9,1.0000000000000001E-9,1.0000000000000001E-9]
	vcmpltpd	%ymm13, %ymm3, %ymm3
	vsubpd	%ymm13, %ymm4, %ymm6
	vdivpd	%ymm13, %ymm6, %ymm6
	vbroadcastsd	.LCPI0_2(%rip), %ymm14  # ymm14 = [1.0E+4,1.0E+4,1.0E+4,1.0E+4]
	vmulpd	%ymm6, %ymm14, %ymm6
	vandpd	%ymm6, %ymm3, %ymm3
	movq	-24(%rsp), %rsi                 # 8-byte Reload
	vsubpd	(%rsi,%rdi,2), %ymm3, %ymm6
	movq	184(%rsp), %rsi
	vmovupd	%ymm3, (%r11,%rdi,2)
	vmovupd	%ymm6, (%r14,%rdi,2)
	vmovdqu	%xmm2, (%rax,%rdi)
	vcmplepd	%ymm5, %ymm6, %ymm14
	vmaskmovpd	%ymm5, %ymm14, (%rsi,%rdi,2)
	vbroadcastsd	.LCPI0_3(%rip), %ymm3   # ymm3 = [-9.99E+2,-9.99E+2,-9.99E+2,-9.99E+2]
	vaddpd	%ymm3, %ymm6, %ymm3
	vmaskmovpd	%ymm3, %ymm14, (%rcx,%rdi,2)
	vinsertf128	$1, %xmm9, %ymm10, %ymm9
	vinsertf128	$1, %xmm11, %ymm12, %ymm10
	vmaxpd	%ymm7, %ymm9, %ymm9
	vmulpd	%ymm9, %ymm13, %ymm9
	vmaxpd	%ymm7, %ymm10, %ymm10
	vdivpd	%ymm9, %ymm8, %ymm9
	vmulpd	%ymm4, %ymm10, %ymm4
	vdivpd	%ymm4, %ymm8, %ymm4
	vaddpd	%ymm4, %ymm9, %ymm4
	vbroadcastsd	.LCPI0_6(%rip), %ymm9   # ymm9 = [1.0E-4,1.0E-4,1.0E-4,1.0E-4]
	vmulpd	%ymm6, %ymm9, %ymm9
	vaddpd	%ymm4, %ymm4, %ymm10
	vdivpd	%ymm10, %ymm9, %ymm10
	vcmpnlepd	%ymm5, %ymm6, %ymm6
	vbroadcastsd	.LCPI0_7(%rip), %ymm11  # ymm11 = [1.0000000000000001E-15,1.0000000000000001E-15,1.0000000000000001E-15,1.0000000000000001E-15]
	vcmpltpd	%ymm4, %ymm11, %ymm11
	vandpd	%ymm10, %ymm11, %ymm10
	vbroadcastsd	.LCPI0_8(%rip), %ymm11  # ymm11 = [1.0E+1,1.0E+1,1.0E+1,1.0E+1]
	vcmpltpd	%ymm11, %ymm10, %ymm11
	vandnpd	%ymm6, %ymm11, %ymm12
	vmaskmovpd	(%r15,%rdi,2), %ymm12, %ymm13
	vbroadcastsd	.LCPI0_9(%rip), %ymm14  # ymm14 = [2.5E+1,2.5E+1,2.5E+1,2.5E+1]
	vcmpltpd	%ymm14, %ymm13, %ymm14
	vbroadcastsd	.LCPI0_10(%rip), %ymm1  # ymm1 = [2.5E+4,2.5E+4,2.5E+4,2.5E+4]
	vblendvpd	%ymm14, %ymm1, %ymm13, %ymm13
	vminpd	%ymm10, %ymm13, %ymm13
	vmulpd	%ymm13, %ymm13, %ymm14
	vmulpd	%ymm4, %ymm14, %ymm4
	vmulpd	%ymm9, %ymm13, %ymm9
	vsubpd	%ymm4, %ymm9, %ymm4
	vmaskmovpd	%ymm13, %ymm12, (%rsi,%rdi,2)
	vmaskmovpd	%ymm4, %ymm12, (%rcx,%rdi,2)
	vandpd	%ymm6, %ymm11, %ymm9
	vmaskmovpd	%ymm5, %ymm9, (%rsi,%rdi,2)
	vbroadcastsd	.LCPI0_11(%rip), %ymm1  # ymm1 = [-5.0E+2,-5.0E+2,-5.0E+2,-5.0E+2]
	vaddpd	%ymm1, %ymm10, %ymm10
	vmaskmovpd	%ymm10, %ymm9, (%rcx,%rdi,2)
	vblendvpd	%ymm12, %ymm4, %ymm10, %ymm4
	vblendvpd	%ymm6, %ymm4, %ymm3, %ymm3
	vsubpd	%ymm0, %ymm3, %ymm3
	vmovupd	%ymm3, (%r13,%rdi,2)
	vpaddd	%xmm2, %xmm15, %xmm2
	addq	$16, %rdi
	cmpq	%rdi, %r9
	jne	.LBB0_56
# %bb.57:
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	cmpl	16(%rsp), %ecx                  # 4-byte Folded Reload
	vmovapd	32(%rsp), %xmm0                 # 16-byte Reload
	jne	.LBB0_58
.LBB0_61:
	cmpl	$1, 84(%rsp)                    # 4-byte Folded Reload
	movq	192(%rsp), %r8
	movq	16(%rsp), %r9                   # 8-byte Reload
	jne	.LBB0_62
.LBB0_68:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB0_62:
	movl	$1, %ecx
	jmp	.LBB0_63
	.p2align	4
.LBB0_66:                               #   in Loop: Header=BB0_63 Depth=1
	xorl	%esi, %esi
.LBB0_67:                               #   in Loop: Header=BB0_63 Depth=1
	movslq	%esi, %rsi
	movl	%edx, (%rax,%rsi,4)
	incq	%rcx
	cmpq	%r9, %rcx
	je	.LBB0_68
.LBB0_63:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_64 Depth 2
	movslq	(%rax,%rcx,4), %rdx
	vmovsd	(%r8,%rdx,8), %xmm0             # xmm0 = mem[0],zero
	movq	%rcx, %rsi
	.p2align	4
.LBB0_64:                               #   Parent Loop BB0_63 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rax,%rsi,4), %rdi
	vucomisd	(%r8,%rdi,8), %xmm0
	jbe	.LBB0_67
# %bb.65:                               #   in Loop: Header=BB0_64 Depth=2
	movl	%edi, (%rax,%rsi,4)
	decq	%rsi
	leaq	1(%rsi), %rdi
	cmpq	$1, %rdi
	jg	.LBB0_64
	jmp	.LBB0_66
.LBB0_4:
	movq	168(%rsp), %r11
	movq	176(%rsp), %r14
	jmp	.LBB0_58
.Lfunc_end0:
	.size	evaluate_v3_route_batch_asm, .Lfunc_end0-evaluate_v3_route_batch_asm
                                        # -- End function
	.globl	encode_gasless_arb_calldata     # -- Begin function encode_gasless_arb_calldata
	.p2align	4
	.type	encode_gasless_arb_calldata,@function
encode_gasless_arb_calldata:            # @encode_gasless_arb_calldata
# %bb.0:
	movq	8(%rsp), %rax
	vxorps	%xmm0, %xmm0, %xmm0
	vmovups	%ymm0, 4(%rax)
	vmovups	%ymm0, 132(%rax)
	vmovups	%ymm0, 164(%rax)
	vmovups	%ymm0, 196(%rax)
	vmovups	%ymm0, 228(%rax)
	vmovups	%ymm0, 324(%rax)
	vmovups	%ymm0, 356(%rax)
	vmovups	%ymm0, 292(%rax)
	vmovups	%ymm0, 260(%rax)
	vmovups	%ymm0, 100(%rax)
	vmovups	%ymm0, 68(%rax)
	vmovups	%ymm0, 36(%rax)
	movl	$1676620816, (%rax)             # imm = 0x63EF3410
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
	vzeroupper
	retq
.Lfunc_end1:
	.size	encode_gasless_arb_calldata, .Lfunc_end1-encode_gasless_arb_calldata
                                        # -- End function
	.ident	"Apple clang version 21.0.0 (clang-2100.3.34.2)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
