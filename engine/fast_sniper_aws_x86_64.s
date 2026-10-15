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
	.quad	0x4059000000000000              # double 100
.LCPI0_9:
	.quad	0x4039000000000000              # double 25
.LCPI0_10:
	.quad	0x40d86a0000000000              # double 25000
.LCPI0_11:
	.quad	0x4024000000000000              # double 10
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
	subq	$120, %rsp
	vmovapd	%xmm0, 96(%rsp)                 # 16-byte Spill
	testl	%edi, %edi
	jle	.LBB0_65
# %bb.1:
	movq	%rsi, %r10
	movq	224(%rsp), %rax
	movq	216(%rsp), %rsi
	movq	208(%rsp), %r14
	movq	200(%rsp), %r15
	movq	192(%rsp), %r13
	movq	184(%rsp), %rbx
	movq	176(%rsp), %rbp
	movl	%edi, %r11d
	movl	%edi, 92(%rsp)                  # 4-byte Spill
	cmpl	$28, %edi
	movq	%r8, 80(%rsp)                   # 8-byte Spill
	movq	%rcx, 16(%rsp)                  # 8-byte Spill
	movq	%r11, 56(%rsp)                  # 8-byte Spill
	jae	.LBB0_10
# %bb.2:
	movq	$0, -24(%rsp)                   # 8-byte Folded Spill
.LBB0_3:
	movq	-24(%rsp), %rdi                 # 8-byte Reload
	leaq	(,%rdi,8), %r11
	leaq	(%r15,%rdi,8), %r8
	movq	208(%rsp), %rcx
	leaq	(%rcx,%rdi,8), %rcx
	movq	%rcx, -8(%rsp)                  # 8-byte Spill
	leaq	(%rsi,%rdi,8), %rsi
	leaq	(%rbp,%rdi,8), %rcx
	movq	%rcx, -16(%rsp)                 # 8-byte Spill
	leaq	(%rax,%rdi,4), %r15
	leaq	(%r13,%rdi,8), %r12
	leaq	(%rbx,%rdi,8), %r13
	leaq	(%r9,%rdi,8), %r14
	leaq	(%rdx,%rdi,8), %r9
	movq	%r8, %rdx
	leaq	(%r10,%rdi,8), %rbp
	movq	%rdi, %rbx
	subq	56(%rsp), %rbx                  # 8-byte Folded Reload
	xorl	%r10d, %r10d
	vmovsd	.LCPI0_2(%rip), %xmm1           # xmm1 = [1.0E+4,0.0E+0]
	vmovsd	.LCPI0_1(%rip), %xmm2           # xmm2 = [1.0000000000000001E-9,0.0E+0]
	vxorpd	%xmm3, %xmm3, %xmm3
	vmovddup	.LCPI0_5(%rip), %xmm5           # xmm5 = [1.0E+0,1.0E+0]
                                        # xmm5 = mem[0,0]
	vmovsd	.LCPI0_6(%rip), %xmm6           # xmm6 = [1.0E-4,0.0E+0]
	vmovsd	.LCPI0_7(%rip), %xmm7           # xmm7 = [1.0000000000000001E-15,0.0E+0]
	vmovsd	.LCPI0_8(%rip), %xmm8           # xmm8 = [1.0E+2,0.0E+0]
	vmovsd	.LCPI0_9(%rip), %xmm9           # xmm9 = [2.5E+1,0.0E+0]
	vmovddup	.LCPI0_10(%rip), %xmm10         # xmm10 = [2.5E+4,2.5E+4]
                                        # xmm10 = mem[0,0]
	vmovsd	.LCPI0_11(%rip), %xmm11         # xmm11 = [1.0E+1,0.0E+0]
	vmovsd	.LCPI0_3(%rip), %xmm12          # xmm12 = [-9.99E+2,0.0E+0]
	movq	80(%rsp), %rdi                  # 8-byte Reload
	jmp	.LBB0_6
	.p2align	4
.LBB0_4:                                #   in Loop: Header=BB0_6 Depth=1
	vmaxsd	%xmm14, %xmm11, %xmm0
	movq	-16(%rsp), %rcx                 # 8-byte Reload
	vmovsd	(%rcx,%r10,8), %xmm14           # xmm14 = mem[0],zero
	vcmpltsd	%xmm9, %xmm14, %xmm15
	vblendvpd	%xmm15, %xmm10, %xmm14, %xmm14
	vminsd	%xmm0, %xmm14, %xmm14
	vmulsd	%xmm14, %xmm14, %xmm0
	vmulsd	%xmm0, %xmm13, %xmm0
	vmulsd	%xmm4, %xmm14, %xmm4
	vsubsd	%xmm0, %xmm4, %xmm4
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	vsubsd	96(%rsp), %xmm4, %xmm0          # 16-byte Folded Reload
	vmovsd	%xmm14, (%rdx,%r10,8)
	movq	-8(%rsp), %rcx                  # 8-byte Reload
	vmovsd	%xmm4, (%rcx,%r10,8)
	vmovsd	%xmm0, (%rsi,%r10,8)
	incq	%r10
	movq	%rbx, %rcx
	addq	%r10, %rcx
	je	.LBB0_64
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rbp,%r10,8), %xmm4            # xmm4 = mem[0],zero
	vmovsd	(%r9,%r10,8), %xmm13            # xmm13 = mem[0],zero
	vucomisd	%xmm4, %xmm13
	setae	%r8b
	vmovd	%r8d, %xmm14
	vpbroadcastb	%xmm14, %xmm14
	vpsllq	$63, %xmm14, %xmm14
	vunpcklpd	%xmm13, %xmm4, %xmm15   # xmm15 = xmm4[0],xmm13[0]
	vunpcklpd	%xmm4, %xmm13, %xmm4    # xmm4 = xmm13[0],xmm4[0]
	vblendvpd	%xmm14, %xmm15, %xmm4, %xmm4
	movq	%rdi, %r8
	movq	16(%rsp), %rcx                  # 8-byte Reload
	cmovaeq	%rcx, %r8
	cmovaeq	%rdi, %rcx
	addq	%r11, %r8
	vmovsd	(%r8,%r10,8), %xmm13            # xmm13 = mem[0],zero
	addq	%r11, %rcx
	vmovsd	(%rcx,%r10,8), %xmm15           # xmm15 = mem[0],zero
	vshufpd	$1, %xmm4, %xmm4, %xmm14        # xmm14 = xmm4[1,0]
	vsubsd	%xmm4, %xmm14, %xmm0
	vdivsd	%xmm4, %xmm0, %xmm0
	vmulsd	%xmm1, %xmm0, %xmm0
	vcmpltsd	%xmm4, %xmm2, %xmm4
	vandpd	%xmm0, %xmm4, %xmm0
	vsubsd	(%r14,%r10,8), %xmm0, %xmm4
	vmovlpd	%xmm0, (%r13,%r10,8)
	vmovsd	%xmm4, (%r12,%r10,8)
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	addl	%r10d, %ecx
	movl	%ecx, (%r15,%r10,4)
	vucomisd	%xmm4, %xmm3
	jae	.LBB0_9
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	vunpcklpd	%xmm13, %xmm15, %xmm0   # xmm0 = xmm15[0],xmm13[0]
	vmaxpd	.LCPI0_13(%rip), %xmm0, %xmm0
	vmulpd	%xmm0, %xmm14, %xmm0
	vdivpd	%xmm0, %xmm5, %xmm0
	vshufpd	$1, %xmm0, %xmm0, %xmm13        # xmm13 = xmm0[1,0]
	vaddsd	%xmm0, %xmm13, %xmm13
	vmulsd	%xmm6, %xmm4, %xmm4
	vucomisd	%xmm7, %xmm13
	vmovapd	%xmm8, %xmm14
	jbe	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	vaddsd	%xmm13, %xmm13, %xmm0
	vdivsd	%xmm0, %xmm4, %xmm14
	jmp	.LBB0_4
	.p2align	4
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	vaddsd	%xmm4, %xmm12, %xmm4
	vxorpd	%xmm14, %xmm14, %xmm14
	jmp	.LBB0_5
.LBB0_10:
	movq	%r10, -8(%rsp)                  # 8-byte Spill
	movq	%rdx, -16(%rsp)                 # 8-byte Spill
	leaq	(%rbx,%r11,8), %r10
	leaq	(,%r11,8), %rdi
	addq	%r13, %rdi
	leaq	(%r15,%r11,8), %r12
	movq	%r11, %rbp
	leaq	(%r14,%r11,8), %r11
	movq	%rbx, %rsi
	movq	216(%rsp), %rdx
	leaq	(%rdx,%rbp,8), %rbx
	movq	-8(%rsp), %rdx                  # 8-byte Reload
	leaq	(%rdx,%rbp,8), %rcx
	movq	%rcx, 8(%rsp)                   # 8-byte Spill
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	%r9, 64(%rsp)                   # 8-byte Spill
	leaq	(%rdx,%rbp,8), %r14
	movq	%r14, -24(%rsp)                 # 8-byte Spill
	leaq	(%r8,%rbp,8), %rdx
	movq	%rdx, 40(%rsp)                  # 8-byte Spill
	cmpq	%rdi, %rsi
	setb	-115(%rsp)                      # 1-byte Folded Spill
	cmpq	%r10, %r13
	setb	-116(%rsp)                      # 1-byte Folded Spill
	cmpq	%r12, %rsi
	setb	-25(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %r15
	setb	-33(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, %rsi
	movq	%r11, 24(%rsp)                  # 8-byte Spill
	setb	-26(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, 208(%rsp)
	setb	-34(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbx, %rsi
	setb	-27(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, 216(%rsp)
	setb	-35(%rsp)                       # 1-byte Folded Spill
	cmpq	%rcx, %rsi
	setb	-28(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, -8(%rsp)                  # 8-byte Folded Reload
	setb	-36(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %rsi
	setb	-29(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, -16(%rsp)                 # 8-byte Folded Reload
	setb	-37(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdx, %rsi
	setb	-30(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %r8
	setb	-38(%rsp)                       # 1-byte Folded Spill
	movq	16(%rsp), %r14                  # 8-byte Reload
	leaq	(%r14,%rbp,8), %rdx
	movq	%rdx, (%rsp)                    # 8-byte Spill
	cmpq	%rdx, %rsi
	setb	-31(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %r14
	setb	-40(%rsp)                       # 1-byte Folded Spill
	leaq	(%r9,%rbp,8), %rdx
	movq	%rdx, 32(%rsp)                  # 8-byte Spill
	cmpq	%rdx, %rsi
	setb	-32(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %r9
	movq	208(%rsp), %r9
	movq	%r8, %rcx
	movq	%r14, %r8
	leaq	(%rax,%rbp,4), %r14
	setb	-59(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %rsi
	setb	-39(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, %rax
	movq	176(%rsp), %rdx
	leaq	(%rdx,%rbp,8), %rdx
	movq	%rdx, 72(%rsp)                  # 8-byte Spill
	setb	-60(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdx, %rsi
	movq	216(%rsp), %rsi
	setb	-41(%rsp)                       # 1-byte Folded Spill
	cmpq	%r10, 176(%rsp)
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	-8(%rsp), %r10                  # 8-byte Reload
	setb	-61(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r13
	setb	-42(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %r15
	setb	-62(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, %r13
	setb	-43(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %r9
	setb	-63(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbx, %r13
	movq	%rbx, 48(%rsp)                  # 8-byte Spill
	setb	-44(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %rsi
	setb	-64(%rsp)                       # 1-byte Folded Spill
	cmpq	8(%rsp), %r13                   # 8-byte Folded Reload
	setb	-45(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %r10
	setb	-65(%rsp)                       # 1-byte Folded Spill
	cmpq	-24(%rsp), %r13                 # 8-byte Folded Reload
	setb	-46(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %rdx
	setb	-66(%rsp)                       # 1-byte Folded Spill
	movq	40(%rsp), %rbp                  # 8-byte Reload
	cmpq	%rbp, %r13
	setb	-47(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %rcx
	setb	-67(%rsp)                       # 1-byte Folded Spill
	movq	(%rsp), %r11                    # 8-byte Reload
	cmpq	%r11, %r13
	setb	-48(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %r8
	setb	-68(%rsp)                       # 1-byte Folded Spill
	movq	32(%rsp), %r9                   # 8-byte Reload
	cmpq	%r9, %r13
	setb	-49(%rsp)                       # 1-byte Folded Spill
	movq	64(%rsp), %r8                   # 8-byte Reload
	cmpq	%rdi, %r8
	setb	-69(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %r13
	setb	-50(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, %rax
	setb	-70(%rsp)                       # 1-byte Folded Spill
	movq	72(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rcx, %r13
	movq	%rcx, %r13
	setb	-81(%rsp)                       # 1-byte Folded Spill
	cmpq	%rdi, 176(%rsp)
	setb	-71(%rsp)                       # 1-byte Folded Spill
	cmpq	24(%rsp), %r15                  # 8-byte Folded Reload
	setb	-51(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, 208(%rsp)
	setb	-72(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbx, %r15
	setb	-52(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rsi
	setb	-73(%rsp)                       # 1-byte Folded Spill
	movq	8(%rsp), %rbx                   # 8-byte Reload
	cmpq	%rbx, %r15
	setb	-53(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r10
	setb	-74(%rsp)                       # 1-byte Folded Spill
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	cmpq	%rcx, %r15
	setb	-54(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rdx
	setb	-75(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbp, %r15
	setb	-55(%rsp)                       # 1-byte Folded Spill
	movq	80(%rsp), %rbp                  # 8-byte Reload
	cmpq	%r12, %rbp
	setb	-76(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, %r15
	setb	-56(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, 16(%rsp)                  # 8-byte Folded Reload
	setb	-77(%rsp)                       # 1-byte Folded Spill
	cmpq	%r9, %r15
	setb	-57(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %r8
	setb	-78(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %r15
	setb	-58(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rax
	setb	-79(%rsp)                       # 1-byte Folded Spill
	cmpq	%r13, %r15
	setb	-82(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, 176(%rsp)
	setb	-80(%rsp)                       # 1-byte Folded Spill
	movq	208(%rsp), %rdi
	cmpq	48(%rsp), %rdi                  # 8-byte Folded Reload
	setb	-84(%rsp)                       # 1-byte Folded Spill
	movq	24(%rsp), %r11                  # 8-byte Reload
	cmpq	%r11, %rsi
	setb	-85(%rsp)                       # 1-byte Folded Spill
	cmpq	%rbx, %rdi
	setb	-83(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, %r10
	setb	-86(%rsp)                       # 1-byte Folded Spill
	movq	%rcx, %r12
	cmpq	%rcx, %rdi
	setb	-87(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, %rdx
	setb	-88(%rsp)                       # 1-byte Folded Spill
	movq	40(%rsp), %rcx                  # 8-byte Reload
	cmpq	%rcx, %rdi
	movq	%rdi, %rbx
	setb	-89(%rsp)                       # 1-byte Folded Spill
	movq	%rbp, %r8
	cmpq	%r11, %rbp
	setb	-90(%rsp)                       # 1-byte Folded Spill
	movq	(%rsp), %r15                    # 8-byte Reload
	cmpq	%r15, %rdi
	setb	-91(%rsp)                       # 1-byte Folded Spill
	movq	16(%rsp), %r9                   # 8-byte Reload
	cmpq	%r11, %r9
	setb	-92(%rsp)                       # 1-byte Folded Spill
	movq	32(%rsp), %rdi                  # 8-byte Reload
	cmpq	%rdi, %rbx
	setb	-93(%rsp)                       # 1-byte Folded Spill
	movq	64(%rsp), %rbp                  # 8-byte Reload
	cmpq	%r11, %rbp
	setb	-94(%rsp)                       # 1-byte Folded Spill
	cmpq	%r14, %rbx
	setb	-95(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, %rax
	setb	-96(%rsp)                       # 1-byte Folded Spill
	cmpq	%r13, %rbx
	setb	-97(%rsp)                       # 1-byte Folded Spill
	cmpq	%r11, 176(%rsp)
	setb	24(%rsp)                        # 1-byte Folded Spill
	movq	8(%rsp), %r11                   # 8-byte Reload
	cmpq	%r11, %rsi
	setb	-98(%rsp)                       # 1-byte Folded Spill
	movq	48(%rsp), %rbx                  # 8-byte Reload
	cmpq	%rbx, %r10
	setb	-99(%rsp)                       # 1-byte Folded Spill
	cmpq	%r12, %rsi
	setb	-100(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, %rdx
	setb	-101(%rsp)                      # 1-byte Folded Spill
	cmpq	%rcx, %rsi
	setb	-102(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, %r8
	setb	-103(%rsp)                      # 1-byte Folded Spill
	cmpq	%r15, %rsi
	setb	-104(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, %r9
	movq	%r9, %r15
	setb	-105(%rsp)                      # 1-byte Folded Spill
	cmpq	%rdi, %rsi
	setb	-106(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, %rbp
	setb	-107(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %rsi
	setb	-108(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, %rax
	setb	-109(%rsp)                      # 1-byte Folded Spill
	movq	%r13, %r9
	cmpq	%r13, %rsi
	setb	-110(%rsp)                      # 1-byte Folded Spill
	cmpq	%rbx, 176(%rsp)
	setb	-111(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %r10
	setb	48(%rsp)                        # 1-byte Folded Spill
	cmpq	%r11, %rax
	setb	8(%rsp)                         # 1-byte Folded Spill
	cmpq	%r14, %rdx
	setb	%r12b
	cmpq	-24(%rsp), %rax                 # 8-byte Folded Reload
	setb	-112(%rsp)                      # 1-byte Folded Spill
	cmpq	%r14, %r8
	setb	%r13b
	cmpq	%rcx, %rax
	setb	40(%rsp)                        # 1-byte Folded Spill
	cmpq	%r14, %r15
	setb	%r11b
	cmpq	(%rsp), %rax                    # 8-byte Folded Reload
	setb	-113(%rsp)                      # 1-byte Folded Spill
	movq	%rbp, %rcx
	cmpq	%r14, %rbp
	setb	%r8b
	cmpq	%rdi, %rax
	setb	-114(%rsp)                      # 1-byte Folded Spill
	cmpq	%r9, %rax
	movq	176(%rsp), %rbp
	setb	%bl
	cmpq	%r14, %rbp
	setb	72(%rsp)                        # 1-byte Folded Spill
	movq	$0, -24(%rsp)                   # 8-byte Folded Spill
	movzbl	-116(%rsp), %edi                # 1-byte Folded Reload
	testb	%dil, -115(%rsp)                # 1-byte Folded Reload
	jne	.LBB0_95
# %bb.11:
	movb	%bl, -116(%rsp)                 # 1-byte Spill
	movb	%r8b, -115(%rsp)                # 1-byte Spill
	movb	%r11b, 32(%rsp)                 # 1-byte Spill
	movb	%r13b, (%rsp)                   # 1-byte Spill
	movzbl	48(%rsp), %r14d                 # 1-byte Folded Reload
	movzbl	-82(%rsp), %r11d                # 1-byte Folded Reload
	movzbl	-81(%rsp), %r8d                 # 1-byte Folded Reload
	movzbl	-33(%rsp), %edi                 # 1-byte Folded Reload
	andb	%dil, -25(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_95
# %bb.12:
	movzbl	-34(%rsp), %edi                 # 1-byte Folded Reload
	andb	%dil, -26(%rsp)                 # 1-byte Folded Spill
	movq	%rcx, %rdi
	movq	184(%rsp), %rbx
	movq	192(%rsp), %r13
	movq	200(%rsp), %r15
	jne	.LBB0_97
# %bb.13:
	movzbl	-35(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -27(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.14:
	movzbl	-36(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -28(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.15:
	movzbl	-37(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -29(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.16:
	movzbl	-38(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -30(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.17:
	movzbl	-40(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -31(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.18:
	movzbl	-59(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -32(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.19:
	movzbl	-60(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -39(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.20:
	movzbl	-61(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -41(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.21:
	movzbl	-62(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -42(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.22:
	movzbl	-63(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -43(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.23:
	movzbl	-64(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -44(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.24:
	movzbl	-65(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -45(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.25:
	movzbl	-66(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -46(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.26:
	movzbl	-67(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -47(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.27:
	movzbl	-68(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -48(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.28:
	movzbl	-69(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -49(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.29:
	movzbl	-70(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -50(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.30:
	andb	-71(%rsp), %r8b                 # 1-byte Folded Reload
	jne	.LBB0_97
# %bb.31:
	movzbl	-72(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -51(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.32:
	movzbl	-73(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -52(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.33:
	movzbl	-74(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -53(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.34:
	movzbl	-75(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -54(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.35:
	movzbl	-76(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -55(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.36:
	movzbl	-77(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -56(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.37:
	movzbl	-78(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -57(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.38:
	movzbl	-79(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -58(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.39:
	andb	-80(%rsp), %r11b                # 1-byte Folded Reload
	jne	.LBB0_97
# %bb.40:
	movzbl	-85(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -84(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.41:
	movzbl	-86(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -83(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.42:
	movzbl	-88(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -87(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.43:
	movzbl	-90(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -89(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.44:
	movzbl	-92(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -91(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.45:
	movzbl	-94(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -93(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.46:
	movzbl	-96(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -95(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.47:
	movzbl	24(%rsp), %ecx                  # 1-byte Folded Reload
	andb	%cl, -97(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.48:
	movzbl	-99(%rsp), %ecx                 # 1-byte Folded Reload
	andb	%cl, -98(%rsp)                  # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.49:
	movzbl	-101(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -100(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.50:
	movzbl	-103(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -102(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.51:
	movzbl	-105(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -104(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.52:
	movzbl	-107(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -106(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.53:
	movzbl	-109(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -108(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.54:
	movzbl	-111(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -110(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_97
# %bb.55:
	andb	8(%rsp), %r14b                  # 1-byte Folded Reload
	jne	.LBB0_97
# %bb.56:
	andb	-112(%rsp), %r12b               # 1-byte Folded Reload
	movq	%rdi, %r9
	jne	.LBB0_3
# %bb.57:
	movzbl	40(%rsp), %ecx                  # 1-byte Folded Reload
	andb	%cl, (%rsp)                     # 1-byte Folded Spill
	jne	.LBB0_3
# %bb.58:
	movzbl	-113(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, 32(%rsp)                   # 1-byte Folded Spill
	jne	.LBB0_3
# %bb.59:
	movzbl	-114(%rsp), %ecx                # 1-byte Folded Reload
	andb	%cl, -115(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_3
# %bb.60:
	movzbl	72(%rsp), %ecx                  # 1-byte Folded Reload
	andb	%cl, -116(%rsp)                 # 1-byte Folded Spill
	jne	.LBB0_3
# %bb.61:
	movq	56(%rsp), %rdi                  # 8-byte Reload
	movl	%edi, %ecx
	andl	$2147483644, %ecx               # imm = 0x7FFFFFFC
	movq	%rcx, -24(%rsp)                 # 8-byte Spill
	vbroadcastsd	96(%rsp), %ymm1         # 16-byte Folded Reload
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	shrl	$2, %edi
	andl	$536870911, %edi                # imm = 0x1FFFFFFF
	shlq	$4, %rdi
	vmovdqa	.LCPI0_0(%rip), %xmm2           # xmm2 = [0,1,2,3]
	xorl	%r9d, %r9d
	vbroadcastsd	.LCPI0_4(%rip), %ymm7   # ymm7 = [9.9999999999999995E-7,9.9999999999999995E-7,9.9999999999999995E-7,9.9999999999999995E-7]
	vbroadcastsd	.LCPI0_5(%rip), %ymm8   # ymm8 = [1.0E+0,1.0E+0,1.0E+0,1.0E+0]
	vbroadcastsd	.LCPI0_8(%rip), %ymm11  # ymm11 = [1.0E+2,1.0E+2,1.0E+2,1.0E+2]
	vbroadcastsd	.LCPI0_9(%rip), %ymm12  # ymm12 = [2.5E+1,2.5E+1,2.5E+1,2.5E+1]
	vbroadcastsd	.LCPI0_10(%rip), %ymm13 # ymm13 = [2.5E+4,2.5E+4,2.5E+4,2.5E+4]
	vbroadcastsd	.LCPI0_11(%rip), %ymm14 # ymm14 = [1.0E+1,1.0E+1,1.0E+1,1.0E+1]
	vpbroadcastd	.LCPI0_12(%rip), %xmm15 # xmm15 = [4,4,4,4]
	movq	80(%rsp), %r8                   # 8-byte Reload
	movq	16(%rsp), %r12                  # 8-byte Reload
	.p2align	4
.LBB0_62:                               # =>This Inner Loop Header: Depth=1
	vmovupd	(%r10,%r9,2), %ymm3
	vmovupd	(%rdx,%r9,2), %ymm4
	vcmplepd	%ymm4, %ymm3, %ymm5
	vmovd	%xmm5, %esi
	testb	$1, %sil
	movq	216(%rsp), %rsi
	movq	%r8, %r13
	cmovneq	%r12, %r13
	vpextrb	$8, %xmm5, %r10d
	movq	%r12, %rcx
	cmovneq	%r8, %rcx
	testb	$1, %r10b
	movq	%r8, %r10
	cmovneq	%r12, %r10
	vextracti128	$1, %ymm5, %xmm0
	vpextrb	$0, %xmm0, %r11d
	movq	%r12, %rbx
	cmovneq	%r8, %rbx
	testb	$1, %r11b
	movq	%r8, %r11
	cmovneq	%r12, %r11
	vpextrb	$8, %xmm0, %ebp
	movq	%r12, %r14
	cmovneq	%r8, %r14
	testb	$1, %bpl
	movq	176(%rsp), %rbp
	movq	%r8, %r15
	cmovneq	%r12, %r15
	vmovsd	16(%r11,%r9,2), %xmm0           # xmm0 = mem[0],zero
	vmovhpd	24(%r15,%r9,2), %xmm0, %xmm0    # xmm0 = xmm0[0],mem[0]
	movq	200(%rsp), %r15
	vmovsd	(%r13,%r9,2), %xmm6             # xmm6 = mem[0],zero
	movq	192(%rsp), %r13
	vmovhpd	8(%r10,%r9,2), %xmm6, %xmm6     # xmm6 = xmm6[0],mem[0]
	vmovsd	16(%r14,%r9,2), %xmm9           # xmm9 = mem[0],zero
	movq	%r12, %r10
	cmovneq	%r8, %r10
	vmovhpd	24(%r10,%r9,2), %xmm9, %xmm9    # xmm9 = xmm9[0],mem[0]
	movq	-16(%rsp), %rdx                 # 8-byte Reload
	movq	-8(%rsp), %r10                  # 8-byte Reload
	vblendvpd	%ymm5, %ymm3, %ymm4, %ymm10
	vblendvpd	%ymm5, %ymm4, %ymm3, %ymm4
	vmovsd	(%rcx,%r9,2), %xmm3             # xmm3 = mem[0],zero
	vmovhpd	8(%rbx,%r9,2), %xmm3, %xmm3     # xmm3 = xmm3[0],mem[0]
	movq	184(%rsp), %rbx
	vinsertf128	$1, %xmm0, %ymm6, %ymm0
	vsubpd	%ymm10, %ymm4, %ymm5
	vdivpd	%ymm10, %ymm5, %ymm5
	vinsertf128	$1, %xmm9, %ymm3, %ymm6
	vbroadcastsd	.LCPI0_1(%rip), %ymm3   # ymm3 = [1.0000000000000001E-9,1.0000000000000001E-9,1.0000000000000001E-9,1.0000000000000001E-9]
	vcmpltpd	%ymm10, %ymm3, %ymm3
	vbroadcastsd	.LCPI0_2(%rip), %ymm9   # ymm9 = [1.0E+4,1.0E+4,1.0E+4,1.0E+4]
	vmulpd	%ymm5, %ymm9, %ymm5
	vandpd	%ymm5, %ymm3, %ymm5
	movq	64(%rsp), %rcx                  # 8-byte Reload
	vsubpd	(%rcx,%r9,2), %ymm5, %ymm3
	vmaxpd	%ymm7, %ymm0, %ymm0
	vmulpd	%ymm0, %ymm10, %ymm0
	vmaxpd	%ymm7, %ymm6, %ymm6
	vdivpd	%ymm0, %ymm8, %ymm0
	vmulpd	%ymm6, %ymm4, %ymm4
	vdivpd	%ymm4, %ymm8, %ymm4
	vmovupd	%ymm5, (%rbx,%r9,2)
	vmovupd	%ymm3, (%r13,%r9,2)
	vaddpd	%ymm4, %ymm0, %ymm0
	vbroadcastsd	.LCPI0_6(%rip), %ymm4   # ymm4 = [1.0E-4,1.0E-4,1.0E-4,1.0E-4]
	vmulpd	%ymm4, %ymm3, %ymm4
	vaddpd	%ymm0, %ymm0, %ymm5
	vdivpd	%ymm5, %ymm4, %ymm5
	vmovdqu	%xmm2, (%rax,%r9)
	vbroadcastsd	.LCPI0_7(%rip), %ymm6   # ymm6 = [1.0000000000000001E-15,1.0000000000000001E-15,1.0000000000000001E-15,1.0000000000000001E-15]
	vcmpltpd	%ymm0, %ymm6, %ymm6
	vblendvpd	%ymm6, %ymm5, %ymm11, %ymm5
	vxorpd	%xmm6, %xmm6, %xmm6
	vcmpnlepd	%ymm6, %ymm3, %ymm6
	vmaskmovpd	(%rbp,%r9,2), %ymm6, %ymm9
	vcmpltpd	%ymm12, %ymm9, %ymm10
	vblendvpd	%ymm10, %ymm13, %ymm9, %ymm9
	vmaxpd	%ymm5, %ymm14, %ymm5
	vminpd	%ymm5, %ymm9, %ymm5
	vmulpd	%ymm5, %ymm5, %ymm9
	vmulpd	%ymm0, %ymm9, %ymm0
	vmulpd	%ymm4, %ymm5, %ymm4
	vsubpd	%ymm0, %ymm4, %ymm0
	vbroadcastsd	.LCPI0_3(%rip), %ymm4   # ymm4 = [-9.99E+2,-9.99E+2,-9.99E+2,-9.99E+2]
	vaddpd	%ymm4, %ymm3, %ymm3
	vblendvpd	%ymm6, %ymm0, %ymm3, %ymm0
	vandpd	%ymm5, %ymm6, %ymm3
	vmovupd	%ymm3, (%r15,%r9,2)
	movq	208(%rsp), %rcx
	vmovupd	%ymm0, (%rcx,%r9,2)
	vsubpd	%ymm1, %ymm0, %ymm0
	vmovupd	%ymm0, (%rsi,%r9,2)
	vpaddd	%xmm2, %xmm15, %xmm2
	addq	$16, %r9
	cmpq	%r9, %rdi
	jne	.LBB0_62
# %bb.63:
	movq	-24(%rsp), %rcx                 # 8-byte Reload
	cmpl	56(%rsp), %ecx                  # 4-byte Folded Reload
	movq	64(%rsp), %r9                   # 8-byte Reload
	jne	.LBB0_3
.LBB0_64:
	cmpl	$1, 92(%rsp)                    # 4-byte Folded Reload
	movq	208(%rsp), %r8
	movq	56(%rsp), %r9                   # 8-byte Reload
	jne	.LBB0_66
.LBB0_65:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	vzeroupper
	retq
.LBB0_66:
	movl	$1, %ecx
	jmp	.LBB0_69
	.p2align	4
.LBB0_67:                               #   in Loop: Header=BB0_69 Depth=1
	xorl	%esi, %esi
.LBB0_68:                               #   in Loop: Header=BB0_69 Depth=1
	movslq	%esi, %rsi
	movl	%edx, (%rax,%rsi,4)
	incq	%rcx
	cmpq	%r9, %rcx
	je	.LBB0_65
.LBB0_69:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_70 Depth 2
	movslq	(%rax,%rcx,4), %rdx
	vmovsd	(%r8,%rdx,8), %xmm0             # xmm0 = mem[0],zero
	movq	%rcx, %rsi
	.p2align	4
.LBB0_70:                               #   Parent Loop BB0_69 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	-4(%rax,%rsi,4), %rdi
	vucomisd	(%r8,%rdi,8), %xmm0
	jbe	.LBB0_68
# %bb.71:                               #   in Loop: Header=BB0_70 Depth=2
	movl	%edi, (%rax,%rsi,4)
	decq	%rsi
	leaq	1(%rsi), %rdi
	cmpq	$1, %rdi
	jg	.LBB0_70
	jmp	.LBB0_67
.LBB0_97:
	movq	%rdi, %r9
	jmp	.LBB0_3
.LBB0_95:
	movq	%rcx, %r9
	movq	184(%rsp), %rbx
	movq	192(%rsp), %r13
	movq	200(%rsp), %r15
	jmp	.LBB0_3
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
