	.file	"fast_sniper_native.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function evaluate_v3_route_batch_asm
.LCPI0_0:
	.quad	0xc0c3878000000000              # double -9999
.LCPI0_1:
	.quad	0xc6293e5939a08cea              # double -1.0E+30
.LCPI0_2:
	.quad	0x40c3880000000000              # double 1.0E+4
.LCPI0_3:
	.quad	0x3e112e0be826d695              # double 1.0000000000000001E-9
.LCPI0_4:
	.quad	0xc08f380000000000              # double -999
.LCPI0_5:
	.quad	0x3ff0000000000000              # double 1
.LCPI0_6:
	.quad	0x4002666666666666              # double 2.2999999999999998
.LCPI0_7:
	.quad	0x4064000000000000              # double 160
.LCPI0_8:
	.quad	0x4050000000000000              # double 64
.LCPI0_9:
	.quad	0x3fa1eb851eb851ec              # double 0.035000000000000003
.LCPI0_10:
	.quad	0x3fee51eb851eb852              # double 0.94750000000000001
.LCPI0_11:
	.quad	0x3ff8000000000000              # double 1.5
.LCPI0_12:
	.quad	0x3cd203af9ee75616              # double 1.0000000000000001E-15
.LCPI0_13:
	.quad	0x430c6bf526340000              # double 1.0E+15
.LCPI0_14:
	.quad	0x3f1a36e2eb1c432d              # double 1.0E-4
.LCPI0_15:
	.quad	0x3f0a36e2eb1c432d              # double 5.0000000000000002E-5
.LCPI0_16:
	.quad	0x4024000000000000              # double 10
.LCPI0_17:
	.quad	0x4059000000000000              # double 100
.LCPI0_18:
	.quad	0x4039000000000000              # double 25
.LCPI0_19:
	.quad	0x410e848000000000              # double 2.5E+5
.LCPI0_20:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI0_21:
	.quad	0x4014000000000000              # double 5
.LCPI0_22:
	.quad	0xbf30624dd2f1a9fc              # double -2.5000000000000001E-4
.LCPI0_23:
	.quad	0x41ac695046000000              # double 238331939
.LCPI0_24:
	.quad	0xbf40624dd2f1a9fc              # double -5.0000000000000001E-4
	.section	.text.hot.,"ax",@progbits
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
                                        # kill: def $edi killed $edi def $rdi
	movq	104(%rsp), %rax
	leal	-1(%rdi), %r12d
	testl	%edi, %edi
	jle	.LBB0_1
# %bb.7:
	movq	80(%rsp), %rbx
	movq	72(%rsp), %r14
	movq	64(%rsp), %r15
	vmovsd	.LCPI0_0(%rip), %xmm1           # xmm1 = [-9.999E+3,0.0E+0]
	vsubsd	%xmm0, %xmm1, %xmm2
	movl	%edi, %edi
	vmovsd	.LCPI0_1(%rip), %xmm3           # xmm3 = [-1.0E+30,0.0E+0]
	xorl	%r13d, %r13d
	vmovsd	.LCPI0_2(%rip), %xmm4           # xmm4 = [1.0E+4,0.0E+0]
	vmovsd	.LCPI0_3(%rip), %xmm5           # xmm5 = [1.0000000000000001E-9,0.0E+0]
	vxorpd	%xmm6, %xmm6, %xmm6
	vmovsd	.LCPI0_5(%rip), %xmm8           # xmm8 = [1.0E+0,0.0E+0]
	xorl	%r11d, %r11d
	movl	%r12d, %ebp
	vmovsd	.LCPI0_4(%rip), %xmm15          # xmm15 = [-9.99E+2,0.0E+0]
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_30 Depth 2
	vmovapd	%xmm8, %xmm9
	leaq	4(%r13), %r10
	cmpq	%rdi, %r10
	jae	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	prefetcht0	(%rsi,%r10,8)
	prefetcht0	(%rdx,%r10,8)
	prefetcht0	(%rcx,%r10,8)
	prefetcht0	(%r8,%r10,8)
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	vmovsd	(%rsi,%r13,8), %xmm7            # xmm7 = mem[0],zero
	vmovsd	(%rdx,%r13,8), %xmm11           # xmm11 = mem[0],zero
	vucomisd	%xmm11, %xmm7
	movq	%r8, %r10
	cmovbeq	%rcx, %r10
	vminsd	%xmm7, %xmm11, %xmm10
	vmaxsd	%xmm7, %xmm11, %xmm12
	vmovsd	(%r10,%r13,8), %xmm11           # xmm11 = mem[0],zero
	movq	%rcx, %r10
	cmovbeq	%r8, %r10
	vmovsd	(%r10,%r13,8), %xmm7            # xmm7 = mem[0],zero
	vsubsd	%xmm10, %xmm12, %xmm13
	vmulsd	%xmm4, %xmm13, %xmm13
	vdivsd	%xmm10, %xmm13, %xmm13
	vcmpltsd	%xmm10, %xmm5, %xmm14
	vandpd	%xmm13, %xmm14, %xmm8
	vmovsd	(%r9,%r13,8), %xmm13            # xmm13 = mem[0],zero
	vsubsd	%xmm13, %xmm8, %xmm14
	vmovlpd	%xmm8, (%r15,%r13,8)
	vmovsd	%xmm14, (%r14,%r13,8)
	vucomisd	%xmm6, %xmm14
	movslq	%r12d, %r10
	ja	.LBB0_13
# %bb.11:                               #   in Loop: Header=BB0_8 Depth=1
	andq	$0, (%rbx,%r13,8)
	vaddsd	%xmm15, %xmm14, %xmm7
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=1
	vsubsd	%xmm0, %xmm7, %xmm8
	vucomisd	%xmm3, %xmm8
	movq	88(%rsp), %r12
	vmovsd	%xmm7, (%r12,%r13,8)
	cmoval	%r10d, %ebp
	movq	96(%rsp), %r12
	vmovsd	%xmm8, (%r12,%r13,8)
	vmaxsd	%xmm3, %xmm8, %xmm3
	leal	-1(%r10), %r12d
	movl	%r13d, (%rax,%r10,4)
	vmovapd	%xmm9, %xmm8
.LBB0_36:                               #   in Loop: Header=BB0_8 Depth=1
	incq	%r13
	cmpq	%rdi, %r13
	je	.LBB0_2
	jmp	.LBB0_8
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=1
	vmovapd	%xmm9, %xmm8
	vucomisd	%xmm9, %xmm11
	jb	.LBB0_15
# %bb.14:                               #   in Loop: Header=BB0_8 Depth=1
	vucomisd	%xmm8, %xmm7
	jb	.LBB0_15
# %bb.16:                               #   in Loop: Header=BB0_8 Depth=1
	vmovsd	.LCPI0_6(%rip), %xmm8           # xmm8 = [2.2999999999999998E+0,0.0E+0]
	vucomisd	%xmm8, %xmm13
	vcmplesd	%xmm8, %xmm13, %xmm8
	vmovapd	%xmm8, -88(%rsp)                # 16-byte Spill
	vmovddup	.LCPI0_7(%rip), %xmm8           # xmm8 = [1.6E+2,1.6E+2]
                                        # xmm8 = mem[0,0]
	vmovaps	%xmm8, -72(%rsp)                # 16-byte Spill
	vmovddup	.LCPI0_8(%rip), %xmm8           # xmm8 = [6.4E+1,6.4E+1]
                                        # xmm8 = mem[0,0]
	vmovapd	-88(%rsp), %xmm13               # 16-byte Reload
	vblendvpd	%xmm13, -72(%rsp), %xmm8, %xmm8 # 16-byte Folded Reload
	vmovapd	%xmm8, -88(%rsp)                # 16-byte Spill
	vmulsd	.LCPI0_9(%rip), %xmm14, %xmm13
	vaddsd	.LCPI0_10(%rip), %xmm13, %xmm8
	vmovapd	%xmm8, -72(%rsp)                # 16-byte Spill
	vmovsd	.LCPI0_11(%rip), %xmm8          # xmm8 = [1.5E+0,0.0E+0]
	vcmpltsd	%xmm14, %xmm8, %xmm8
	vmovddup	.LCPI0_5(%rip), %xmm13          # xmm13 = [1.0E+0,1.0E+0]
                                        # xmm13 = mem[0,0]
	vblendvpd	%xmm8, -72(%rsp), %xmm13, %xmm8 # 16-byte Folded Reload
	vmovapd	-88(%rsp), %xmm13               # 16-byte Reload
	vdivsd	%xmm8, %xmm13, %xmm8
	vmulsd	%xmm10, %xmm11, %xmm10
	vmulsd	%xmm8, %xmm10, %xmm10
	vmulsd	%xmm7, %xmm12, %xmm7
	vmulsd	%xmm7, %xmm8, %xmm7
	vmulsd	%xmm7, %xmm10, %xmm11
	vaddsd	%xmm7, %xmm10, %xmm13
	vmulsd	.LCPI0_14(%rip), %xmm14, %xmm7
	vmovsd	%xmm7, -88(%rsp)                # 8-byte Spill
	vmulsd	.LCPI0_15(%rip), %xmm14, %xmm12
	vmulsd	%xmm12, %xmm11, %xmm7
	vdivsd	%xmm13, %xmm7, %xmm7
	vmovsd	.LCPI0_12(%rip), %xmm8          # xmm8 = [1.0000000000000001E-15,0.0E+0]
	vcmpltsd	%xmm13, %xmm8, %xmm8
	vandpd	%xmm7, %xmm8, %xmm10
	jbe	.LBB0_19
# %bb.17:                               #   in Loop: Header=BB0_8 Depth=1
	vucomisd	.LCPI0_16(%rip), %xmm10
	jae	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_8 Depth=1
	andq	$0, (%rbx,%r13,8)
	vaddsd	%xmm1, %xmm10, %xmm7
	jmp	.LBB0_12
.LBB0_19:                               #   in Loop: Header=BB0_8 Depth=1
	vmovsd	%xmm12, -48(%rsp)               # 8-byte Spill
	vmovsd	%xmm13, -40(%rsp)               # 8-byte Spill
	vdivsd	%xmm11, %xmm13, %xmm7
	vmovsd	.LCPI0_12(%rip), %xmm8          # xmm8 = [1.0000000000000001E-15,0.0E+0]
	vmovsd	%xmm11, -32(%rsp)               # 8-byte Spill
	vcmpltsd	%xmm11, %xmm8, %xmm8
	vmovddup	.LCPI0_13(%rip), %xmm11         # xmm11 = [1.0E+15,1.0E+15]
                                        # xmm11 = mem[0,0]
	vblendvpd	%xmm8, %xmm7, %xmm11, %xmm12
	vmaxsd	.LCPI0_17(%rip), %xmm10, %xmm8
	movq	56(%rsp), %r10
	vmovsd	(%r10,%r13,8), %xmm10           # xmm10 = mem[0],zero
	vcmpltsd	.LCPI0_18(%rip), %xmm10, %xmm11
	vmovddup	.LCPI0_19(%rip), %xmm13         # xmm13 = [2.5E+5,2.5E+5]
                                        # xmm13 = mem[0,0]
	vblendvpd	%xmm11, %xmm13, %xmm10, %xmm10
	vminsd	%xmm10, %xmm8, %xmm7
	vmulsd	-88(%rsp), %xmm7, %xmm11        # 8-byte Folded Reload
	vmovapd	%xmm7, -72(%rsp)                # 16-byte Spill
	vmulsd	%xmm7, %xmm7, %xmm13
	vmovapd	%xmm12, -24(%rsp)               # 16-byte Spill
	vmulsd	%xmm12, %xmm13, %xmm13
	vsubsd	%xmm13, %xmm11, %xmm13
	vmulsd	.LCPI0_20(%rip), %xmm11, %xmm11
	vcmpltsd	%xmm13, %xmm6, %xmm7
	vblendvpd	%xmm7, %xmm13, %xmm11, %xmm7
	vsubsd	%xmm0, %xmm7, %xmm13
	vucomisd	%xmm10, %xmm8
	jbe	.LBB0_20
# %bb.21:                               #   in Loop: Header=BB0_8 Depth=1
	vucomisd	.LCPI0_21(%rip), %xmm14
	vmovapd	%xmm9, %xmm8
	jbe	.LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_8 Depth=1
	vmovapd	%xmm7, %xmm14
	vmovsd	-48(%rsp), %xmm7                # 8-byte Reload
                                        # xmm7 = mem[0],zero
	vaddsd	.LCPI0_22(%rip), %xmm7, %xmm7
	vmulsd	-32(%rsp), %xmm7, %xmm7         # 8-byte Folded Reload
	vdivsd	-40(%rsp), %xmm7, %xmm7         # 8-byte Folded Reload
	vminsd	.LCPI0_23(%rip), %xmm7, %xmm11
	vucomisd	%xmm10, %xmm11
	jbe	.LBB0_24
# %bb.25:                               #   in Loop: Header=BB0_8 Depth=1
	vsubsd	%xmm10, %xmm11, %xmm8
	vmulsd	-88(%rsp), %xmm11, %xmm7        # 8-byte Folded Reload
	vmulsd	%xmm11, %xmm11, %xmm10
	vmulsd	-24(%rsp), %xmm10, %xmm10       # 16-byte Folded Reload
	vsubsd	%xmm10, %xmm7, %xmm7
	vmulsd	.LCPI0_24(%rip), %xmm8, %xmm8
	vsubsd	%xmm0, %xmm7, %xmm10
	vaddsd	%xmm8, %xmm10, %xmm10
	vucomisd	%xmm13, %xmm10
	ja	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_8 Depth=1
	vmovapd	%xmm14, %xmm7
.LBB0_27:                               #   in Loop: Header=BB0_8 Depth=1
	vcmpltsd	%xmm10, %xmm13, %xmm8
	vmovapd	-72(%rsp), %xmm12               # 16-byte Reload
	vblendvpd	%xmm8, %xmm11, %xmm12, %xmm11
	vmaxsd	%xmm13, %xmm10, %xmm13
	vmovapd	%xmm9, %xmm8
	jmp	.LBB0_28
.LBB0_20:                               #   in Loop: Header=BB0_8 Depth=1
	vmovapd	%xmm9, %xmm8
.LBB0_22:                               #   in Loop: Header=BB0_8 Depth=1
	vmovapd	-72(%rsp), %xmm11               # 16-byte Reload
	jmp	.LBB0_28
.LBB0_24:                               #   in Loop: Header=BB0_8 Depth=1
	vmovapd	-72(%rsp), %xmm11               # 16-byte Reload
	vmovapd	%xmm14, %xmm7
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	vmovsd	%xmm11, (%rbx,%r13,8)
	movq	88(%rsp), %r10
	vmovsd	%xmm7, (%r10,%r13,8)
	movq	96(%rsp), %r10
	vmovsd	%xmm13, (%r10,%r13,8)
	movl	%r11d, -92(%rsp)                # 4-byte Spill
	movl	-92(%rsp), %r10d                # 4-byte Reload
                                        # kill: def $r10d killed $r10d def $r10
	movq	%r10, -88(%rsp)                 # 8-byte Spill
	cmpl	$0, -92(%rsp)                   # 4-byte Folded Reload
	movq	-88(%rsp), %r10                 # 8-byte Reload
	jle	.LBB0_35
# %bb.29:                               #   in Loop: Header=BB0_8 Depth=1
	movl	-92(%rsp), %r10d                # 4-byte Reload
.LBB0_30:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r10, -88(%rsp)                 # 8-byte Spill
	movslq	-4(%rax,%r10,4), %r10
	movq	%r10, -72(%rsp)                 # 8-byte Spill
	movq	96(%rsp), %r10
	movq	-72(%rsp), %r15                 # 8-byte Reload
	vucomisd	(%r10,%r15,8), %xmm13
	jbe	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_30 Depth=2
	movq	-88(%rsp), %r10                 # 8-byte Reload
	movq	-72(%rsp), %r14                 # 8-byte Reload
	movl	%r14d, (%rax,%r10,4)
	movq	72(%rsp), %r14
	decq	-88(%rsp)                       # 8-byte Folded Spill
	movq	-88(%rsp), %r10                 # 8-byte Reload
	incq	%r10
	cmpq	$1, %r10
	movq	-88(%rsp), %r10                 # 8-byte Reload
	ja	.LBB0_30
# %bb.32:                               #   in Loop: Header=BB0_8 Depth=1
	xorl	%r10d, %r10d
	jmp	.LBB0_34
.LBB0_33:                               #   in Loop: Header=BB0_8 Depth=1
	movq	-88(%rsp), %r10                 # 8-byte Reload
.LBB0_34:                               #   in Loop: Header=BB0_8 Depth=1
	movq	64(%rsp), %r15
.LBB0_35:                               #   in Loop: Header=BB0_8 Depth=1
	movslq	%r10d, %r10
	movl	%r13d, (%rax,%r10,4)
	movl	-92(%rsp), %r11d                # 4-byte Reload
	incl	%r11d
	jmp	.LBB0_36
.LBB0_15:                               #   in Loop: Header=BB0_8 Depth=1
	andq	$0, (%rbx,%r13,8)
	vucomisd	%xmm3, %xmm2
	movabsq	$-4556649414143246336, %r12     # imm = 0xC0C3878000000000
	movq	88(%rsp), %rbx
	movq	%r12, (%rbx,%r13,8)
	movq	80(%rsp), %rbx
	cmoval	%r10d, %ebp
	movq	96(%rsp), %r12
	vmovsd	%xmm2, (%r12,%r13,8)
	vmaxsd	%xmm3, %xmm2, %xmm3
	leal	-1(%r10), %r12d
	movl	%r13d, (%rax,%r10,4)
	jmp	.LBB0_36
.LBB0_2:
	testl	%r11d, %r11d
	sete	%cl
	movl	%ebp, %r12d
	jmp	.LBB0_3
.LBB0_1:
	movb	$1, %cl
.LBB0_3:
	testb	%cl, %cl
	je	.LBB0_6
# %bb.4:
	testl	%r12d, %r12d
	je	.LBB0_6
# %bb.5:
	movl	(%rax), %ecx
	movslq	%r12d, %rdx
	movl	(%rax,%rdx,4), %esi
	movl	%esi, (%rax)
	movl	%ecx, (%rax,%rdx,4)
.LBB0_6:
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	evaluate_v3_route_batch_asm, .Lfunc_end0-evaluate_v3_route_batch_asm
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function evaluate_parallel_bundle_asm
.LCPI1_0:
	.quad	0x3ff0000000000000              # double 1
	.section	.text.hot.,"ax",@progbits
	.globl	evaluate_parallel_bundle_asm
	.p2align	4
	.type	evaluate_parallel_bundle_asm,@function
evaluate_parallel_bundle_asm:           # @evaluate_parallel_bundle_asm
# %bb.0:
	pushq	%rbp
	pushq	%r14
	pushq	%rbx
	movq	56(%rsp), %r8
	movq	48(%rsp), %r9
	movq	40(%rsp), %r10
	testl	%edi, %edi
	jle	.LBB1_1
# %bb.2:
	movq	32(%rsp), %r11
	movl	%edi, %edi
	vxorpd	%xmm3, %xmm3, %xmm3
	xorl	%eax, %eax
	movl	$1, %ebx
	vxorpd	%xmm1, %xmm1, %xmm1
	vxorpd	%xmm2, %xmm2, %xmm2
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	-4(%rsi,%rbx,4), %ebp
	movslq	%ebp, %r14
	vmovsd	(%rdx,%r14,8), %xmm4            # xmm4 = mem[0],zero
	vucomisd	%xmm4, %xmm3
	jae	.LBB1_8
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	vmovsd	(%rcx,%r14,8), %xmm5            # xmm5 = mem[0],zero
	vucomisd	%xmm5, %xmm0
	jae	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=1
	cltq
	movl	%ebp, (%r11,%rax,4)
	vaddsd	%xmm1, %xmm4, %xmm1
	vaddsd	%xmm2, %xmm5, %xmm2
	incl	%eax
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	cmpq	%rdi, %rbx
	jae	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	incq	%rbx
	cmpl	$12, %eax
	jl	.LBB1_3
.LBB1_8:
	testl	%eax, %eax
	jg	.LBB1_9
# %bb.10:
	vmovsd	.LCPI1_0(%rip), %xmm3           # xmm3 = [1.0E+0,0.0E+0]
	jmp	.LBB1_11
.LBB1_1:
	vmovsd	.LCPI1_0(%rip), %xmm3           # xmm3 = [1.0E+0,0.0E+0]
	vxorpd	%xmm1, %xmm1, %xmm1
	xorl	%eax, %eax
	vxorpd	%xmm2, %xmm2, %xmm2
	jmp	.LBB1_11
.LBB1_9:
	vcvtsi2sd	%eax, %xmm15, %xmm3
.LBB1_11:
	vmulsd	%xmm0, %xmm3, %xmm0
	vmovsd	%xmm1, (%r10)
	vmovsd	%xmm2, (%r9)
	vsubsd	%xmm0, %xmm2, %xmm0
	vmovsd	%xmm0, (%r8)
                                        # kill: def $eax killed $eax killed $rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	evaluate_parallel_bundle_asm, .Lfunc_end1-evaluate_parallel_bundle_asm
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3, 0x0                          # -- Begin function evaluate_aave_liquidations_asm
.LCPI2_0:
	.quad	0x3ff0000000000000              # double 1
.LCPI2_1:
	.quad	0x4059000000000000              # double 100
.LCPI2_2:
	.quad	0x3fee666666666666              # double 0.94999999999999996
.LCPI2_5:
	.quad	0x3fa89374bc6a7efa              # double 0.048000000000000001
.LCPI2_6:
	.quad	0xbf40624dd2f1a9fc              # double -5.0000000000000001E-4
.LCPI2_8:
	.quad	0x3fe0000000000000              # double 0.5
.LCPI2_9:
	.quad	0x8000000000000000              # double -0
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0
.LCPI2_3:
	.quad	0x3fe0000000000000              # double 0.5
	.quad	0x3fe0000000000000              # double 0.5
.LCPI2_4:
	.quad	0x3ff0000000000000              # double 1
	.quad	0x3ff0000000000000              # double 1
.LCPI2_7:
	.quad	0x8000000000000000              # double -0
	.quad	0x8000000000000000              # double -0
	.section	.text.hot.,"ax",@progbits
	.globl	evaluate_aave_liquidations_asm
	.p2align	4
	.type	evaluate_aave_liquidations_asm,@function
evaluate_aave_liquidations_asm:         # @evaluate_aave_liquidations_asm
# %bb.0:
	testl	%edi, %edi
	jle	.LBB2_1
# %bb.3:
	movq	8(%rsp), %r10
	movl	%edi, %edi
	vxorpd	%xmm2, %xmm2, %xmm2
	movl	$-1, %eax
	xorl	%r11d, %r11d
	vmovsd	.LCPI2_0(%rip), %xmm3           # xmm3 = [1.0E+0,0.0E+0]
	vmovsd	.LCPI2_1(%rip), %xmm4           # xmm4 = [1.0E+2,0.0E+0]
	vmovsd	.LCPI2_2(%rip), %xmm5           # xmm5 = [9.4999999999999996E-1,0.0E+0]
	vmovddup	.LCPI2_8(%rip), %xmm6           # xmm6 = [5.0E-1,5.0E-1]
                                        # xmm6 = mem[0,0]
	vmovddup	.LCPI2_0(%rip), %xmm7           # xmm7 = [1.0E+0,1.0E+0]
                                        # xmm7 = mem[0,0]
	vmovsd	.LCPI2_5(%rip), %xmm8           # xmm8 = [4.8000000000000001E-2,0.0E+0]
	vmovsd	.LCPI2_6(%rip), %xmm9           # xmm9 = [-5.0000000000000001E-4,0.0E+0]
	vmovddup	.LCPI2_9(%rip), %xmm10          # xmm10 = [-0.0E+0,-0.0E+0]
                                        # xmm10 = mem[0,0]
	vxorpd	%xmm11, %xmm11, %xmm11
	jmp	.LBB2_4
	.p2align	4
.LBB2_9:                                #   in Loop: Header=BB2_4 Depth=1
	movq	$0, (%r8,%r11,8)
	movq	$0, (%r9,%r11,8)
	movq	$0, (%r10,%r11,8)
	incq	%r11
	cmpq	%r11, %rdi
	je	.LBB2_2
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	vmovsd	(%rsi,%r11,8), %xmm12           # xmm12 = mem[0],zero
	vucomisd	%xmm12, %xmm2
	jae	.LBB2_9
# %bb.5:                                #   in Loop: Header=BB2_4 Depth=1
	vucomisd	%xmm3, %xmm12
	jae	.LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	vmovsd	(%rdx,%r11,8), %xmm13           # xmm13 = mem[0],zero
	vucomisd	%xmm4, %xmm13
	jb	.LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_4 Depth=1
	vucomisd	(%rcx,%r11,8), %xmm13
	jae	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	vcmpltsd	%xmm5, %xmm12, %xmm12
	vblendvpd	%xmm12, %xmm7, %xmm6, %xmm12
	vmulsd	%xmm13, %xmm12, %xmm12
	vsubsd	%xmm0, %xmm12, %xmm13
	vmulsd	%xmm9, %xmm13, %xmm13
	vcmplesd	%xmm0, %xmm12, %xmm14
	vblendvpd	%xmm14, %xmm10, %xmm13, %xmm13
	vmulsd	%xmm8, %xmm12, %xmm14
	vsubsd	%xmm1, %xmm14, %xmm15
	vaddsd	%xmm13, %xmm15, %xmm13
	vmovsd	%xmm12, (%r8,%r11,8)
	vmovsd	%xmm14, (%r9,%r11,8)
	vmovsd	%xmm13, (%r10,%r11,8)
	vucomisd	%xmm11, %xmm13
	vmaxsd	%xmm11, %xmm13, %xmm11
	cmoval	%r11d, %eax
	incq	%r11
	cmpq	%r11, %rdi
	jne	.LBB2_4
.LBB2_2:
	retq
.LBB2_1:
	movl	$-1, %eax
	retq
.Lfunc_end2:
	.size	evaluate_aave_liquidations_asm, .Lfunc_end2-evaluate_aave_liquidations_asm
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
.Lfunc_end3:
	.size	encode_gasless_arb_calldata, .Lfunc_end3-encode_gasless_arb_calldata
                                        # -- End function
	.ident	"Apple clang version 21.0.0 (clang-2100.3.34.2)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
