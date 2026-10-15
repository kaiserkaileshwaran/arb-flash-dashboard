	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_v3_route_batch_asm    ; -- Begin function evaluate_v3_route_batch_asm
	.p2align	2
_evaluate_v3_route_batch_asm:           ; @evaluate_v3_route_batch_asm
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_12
; %bb.1:
	mov	x11, #0                         ; =0x0
	ldp	x12, x8, [sp, #24]
	mov	x9, #54933                      ; =0xd695
	movk	x9, #59430, lsl #16
	movk	x9, #11787, lsl #32
	movk	x9, #15889, lsl #48
	fmov	d1, x9
	ldr	x9, [sp, #16]
	mov	x10, #149533581377536           ; =0x880000000000
	movk	x10, #16579, lsl #48
	fmov	d2, x10
	mov	x10, #60813                     ; =0xed8d
	movk	x10, #41141, lsl #16
	movk	x10, #50935, lsl #32
	movk	x10, #16048, lsl #48
	fmov	d3, x10
	mov	x10, #17197                     ; =0x432d
	movk	x10, #60188, lsl #16
	movk	x10, #14050, lsl #32
	movk	x10, #16154, lsl #48
	fmov	d4, x10
	mov	x10, #22038                     ; =0x5616
	movk	x10, #40679, lsl #16
	movk	x10, #943, lsl #32
	movk	x10, #15570, lsl #48
	fmov	d5, x10
	mov	x10, #116548232544256           ; =0x6a0000000000
	movk	x10, #16600, lsl #48
	fmov	d6, x10
	mov	x10, #70368744177664            ; =0x400000000000
	movk	x10, #49279, lsl #48
	fmov	d7, x10
	mov	x10, #61572651155456            ; =0x380000000000
	movk	x10, #49295, lsl #48
	fmov	d16, x10
	ldp	x14, x13, [sp]
	fmov	d17, #8.00000000
	fmov	d18, #1.00000000
	fmov	d19, #10.00000000
	fmov	d20, #25.00000000
	mov	w10, w0
	b	LBB0_4
LBB0_2:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	xzr, [x13, x11, lsl #3]
	fadd	d21, d23, d16
LBB0_3:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	d21, [x9, x11, lsl #3]
	fsub	d21, d21, d0
	str	d21, [x12, x11, lsl #3]
	add	x11, x11, #1
	cmp	x10, x11
	b.eq	LBB0_11
LBB0_4:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d21, [x1, x11, lsl #3]
	ldr	d23, [x2, x11, lsl #3]
	fcmp	d21, d23
	fcsel	d22, d21, d23, ls
	fcsel	d21, d23, d21, ls
	csel	x15, x3, x4, ls
	csel	x16, x4, x3, ls
	movi.2d	v23, #0000000000000000
	fcmp	d22, d1
	b.le	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_4 Depth=1
	fsub	d23, d21, d22
	fdiv	d23, d23, d22
	fmul	d23, d23, d2
LBB0_6:                                 ;   in Loop: Header=BB0_4 Depth=1
	ldr	d25, [x15, x11, lsl #3]
	ldr	d24, [x16, x11, lsl #3]
	ldr	d26, [x5, x11, lsl #3]
	str	d23, [x7, x11, lsl #3]
	fsub	d23, d23, d26
	str	d23, [x14, x11, lsl #3]
	str	w11, [x8, x11, lsl #2]
	fcmp	d23, #0.0
	b.ls	LBB0_2
; %bb.7:                                ;   in Loop: Header=BB0_4 Depth=1
	fmul	d22, d22, d17
	fmaxnm	d25, d25, d3
	fmul	d22, d22, d25
	fmul	d21, d21, d17
	fmaxnm	d24, d24, d3
	fmul	d21, d21, d24
	fdiv	d22, d18, d22
	fdiv	d21, d18, d21
	fadd	d21, d22, d21
	movi.2d	v22, #0000000000000000
	fcmp	d21, d5
	b.le	LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_4 Depth=1
	fmul	d23, d23, d4
	fadd	d22, d21, d21
	fdiv	d22, d23, d22
	fcmp	d22, d19
	b.pl	LBB0_10
LBB0_9:                                 ;   in Loop: Header=BB0_4 Depth=1
	str	xzr, [x13, x11, lsl #3]
	fadd	d21, d22, d7
	b	LBB0_3
LBB0_10:                                ;   in Loop: Header=BB0_4 Depth=1
	ldr	d24, [x6, x11, lsl #3]
	fcmp	d24, d20
	fcsel	d24, d6, d24, mi
	fcmp	d22, d24
	fcsel	d22, d24, d22, gt
	fmul	d24, d22, d22
	fnmul	d21, d21, d24
	fmadd	d21, d22, d23, d21
	str	d22, [x13, x11, lsl #3]
	b	LBB0_3
LBB0_11:
	cmp	w10, #1
	b.ne	LBB0_13
LBB0_12:
	ret
LBB0_13:
	add	x11, x8, #4
	mov	w12, #1                         ; =0x1
	mov	w13, #2                         ; =0x2
	b	LBB0_16
LBB0_14:                                ;   in Loop: Header=BB0_16 Depth=1
	sub	x15, x15, #1
LBB0_15:                                ;   in Loop: Header=BB0_16 Depth=1
	sbfiz	x15, x15, #2, #32
	str	w14, [x8, x15]
	add	x12, x12, #1
	add	x13, x13, #1
	add	x11, x11, #4
	cmp	x12, x10
	b.eq	LBB0_12
LBB0_16:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_17 Depth 2
	ldrsw	x14, [x8, x12, lsl #2]
	ldr	d0, [x9, x14, lsl #3]
	mov	x16, x11
	mov	x15, x13
LBB0_17:                                ;   Parent Loop BB0_16 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldursw	x17, [x16, #-4]
	ldr	d1, [x9, x17, lsl #3]
	fcmp	d1, d0
	b.pl	LBB0_14
; %bb.18:                               ;   in Loop: Header=BB0_17 Depth=2
	str	w17, [x16], #-4
	sub	x15, x15, #1
	cmp	x15, #1
	b.gt	LBB0_17
; %bb.19:                               ;   in Loop: Header=BB0_16 Depth=1
	mov	x15, #0                         ; =0x0
	b	LBB0_15
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function encode_gasless_arb_calldata
lCPI1_0:
	.byte	16                              ; 0x10
	.byte	52                              ; 0x34
	.byte	239                             ; 0xef
	.byte	99                              ; 0x63
	.space	1
	.space	1
	.space	1
	.space	1
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_encode_gasless_arb_calldata
	.p2align	2
_encode_gasless_arb_calldata:           ; @encode_gasless_arb_calldata
	.cfi_startproc
; %bb.0:
	movi.2d	v0, #0000000000000000
	stur	q0, [x6, #244]
	stur	q0, [x6, #228]
	stur	q0, [x6, #212]
	stur	q0, [x6, #196]
	stur	q0, [x6, #180]
	stur	q0, [x6, #164]
	stur	q0, [x6, #148]
	stur	q0, [x6, #132]
	stur	q0, [x6, #116]
	stur	q0, [x6, #100]
	stur	q0, [x6, #84]
	stur	q0, [x6, #68]
	stur	q0, [x6, #52]
	stur	q0, [x6, #36]
	mov	x8, x6
	str	q0, [x8, #4]!
	stur	q0, [x6, #20]
	stp	q0, q0, [x8, #352]
	stp	q0, q0, [x8, #320]
	stp	q0, q0, [x8, #288]
	stp	q0, q0, [x8, #256]
Lloh0:
	adrp	x8, lCPI1_0@PAGE
Lloh1:
	ldr	d0, [x8, lCPI1_0@PAGEOFF]
	str	s0, [x6]
	strb	w0, [x6, #35]
	; InlineAsm Start
	rev	x1, x1
	; InlineAsm End
	; InlineAsm Start
	rev	x2, x2
	; InlineAsm End
	; InlineAsm Start
	rev	x5, x5
	; InlineAsm End
	; InlineAsm Start
	rev	w3, w3
	; InlineAsm End
	; InlineAsm Start
	rev	w4, w4
	; InlineAsm End
	stur	x1, [x6, #156]
	stur	x2, [x6, #188]
	str	w3, [x6, #224]
	str	w4, [x6, #256]
	add	x8, x6, #348
	str	x5, [x8]
	ret
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #448
	stp	d13, d12, [sp, #304]            ; 16-byte Folded Spill
	stp	d11, d10, [sp, #320]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #336]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #352]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #368]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #384]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #400]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #416]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #432]            ; 16-byte Folded Spill
	add	x29, sp, #432
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	.cfi_offset w23, -56
	.cfi_offset w24, -64
	.cfi_offset w25, -72
	.cfi_offset w26, -80
	.cfi_offset w27, -88
	.cfi_offset w28, -96
	.cfi_offset b8, -104
	.cfi_offset b9, -112
	.cfi_offset b10, -120
	.cfi_offset b11, -128
	.cfi_offset b12, -136
	.cfi_offset b13, -144
Lloh2:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh3:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh4:
	ldr	x8, [x8]
	stur	x8, [x29, #-144]
Lloh5:
	adrp	x8, l___const.main.p2@PAGE
Lloh6:
	add	x8, x8, l___const.main.p2@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [x29, #-176]
	add	x1, sp, #64
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	x8, #36700                      ; =0x8f5c
	movk	x8, #62914, lsl #16
	movk	x8, #35112, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d9, x8
	movi.2d	v10, #0000000000000000
	mov	x8, #48571                      ; =0xbdbb
	movk	x8, #55767, lsl #16
	movk	x8, #31967, lsl #32
	movk	x8, #15835, lsl #48
	fmov	d11, x8
	add	x26, sp, #96
	add	x27, sp, #128
	add	x28, sp, #160
	add	x24, sp, #192
Lloh7:
	adrp	x19, l___const.main.p1@PAGE
Lloh8:
	add	x19, x19, l___const.main.p1@PAGEOFF
Lloh9:
	adrp	x20, l___const.main.y1@PAGE
Lloh10:
	add	x20, x20, l___const.main.y1@PAGEOFF
Lloh11:
	adrp	x21, l___const.main.y2@PAGE
Lloh12:
	add	x21, x21, l___const.main.y2@PAGEOFF
Lloh13:
	adrp	x22, l___const.main.fl@PAGE
Lloh14:
	add	x22, x22, l___const.main.fl@PAGEOFF
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16276, lsl #48
	fmov	d8, x8
	fmov	d12, #1.00000000
	mov	w25, #16960                     ; =0x4240
	movk	w25, #15, lsl #16
Lloh15:
	adrp	x23, l___const.main.bm@PAGE
Lloh16:
	add	x23, x23, l___const.main.bm@PAGEOFF
LBB2_1:                                 ; =>This Inner Loop Header: Depth=1
	fmadd	d0, d10, d11, d9
	stur	d0, [x29, #-160]
	add	x8, sp, #80
	stp	x26, x8, [sp, #24]
	sub	x2, x29, #176
	sub	x7, x29, #208
	stp	x28, x27, [sp, #8]
	str	x24, [sp]
	mov	w0, #4                          ; =0x4
	mov	x1, x19
	mov	x3, x20
	mov	x4, x21
	mov	x5, x22
	mov	x6, x23
	mov.16b	v0, v8
	bl	_evaluate_v3_route_batch_asm
	fadd	d10, d10, d12
	subs	w25, w25, #1
	b.ne	LBB2_1
; %bb.2:
	add	x1, sp, #48
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #48]
	ldp	x10, x11, [sp, #64]
	sub	x8, x8, x10
	scvtf	d0, x8
	sub	x8, x9, x11
	scvtf	d1, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d2, x8
	fmadd	d0, d0, d2, d1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fdiv	d8, d0, d1
	ldrsw	x20, [sp, #80]
Lloh17:
	adrp	x19, l_str.9@PAGE
Lloh18:
	add	x19, x19, l_str.9@PAGEOFF
	mov	x0, x19
	bl	_puts
Lloh19:
	adrp	x0, l_str.7@PAGE
Lloh20:
	add	x0, x0, l_str.7@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
	mov	w8, #16960                      ; =0x4240
	movk	w8, #15, lsl #16
	str	x8, [sp]
Lloh21:
	adrp	x0, l_.str.2@PAGE
Lloh22:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	str	d8, [sp]
Lloh23:
	adrp	x0, l_.str.3@PAGE
Lloh24:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	str	d8, [sp]
Lloh25:
	adrp	x0, l_.str.4@PAGE
Lloh26:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	sub	x8, x29, #208
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #160
	ldr	d1, [x8, x20, lsl #3]
	add	x8, sp, #128
	ldr	d2, [x8, x20, lsl #3]
	add	x8, sp, #96
	ldr	d3, [x8, x20, lsl #3]
	stp	d2, d3, [sp, #24]
	stp	d0, d1, [sp, #8]
	str	x20, [sp]
Lloh27:
	adrp	x0, l_.str.5@PAGE
Lloh28:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	ldur	d0, [x29, #-208]
	ldr	d1, [sp, #160]
	stp	d0, d1, [sp]
Lloh29:
	adrp	x0, l_.str.6@PAGE
Lloh30:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
	ldur	x8, [x29, #-144]
Lloh31:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh32:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh33:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_4
; %bb.3:
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #432]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #416]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #400]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #384]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #368]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #352]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #336]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #320]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #448
	ret
LBB2_4:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh11, Lloh12
	.loh AdrpAdd	Lloh9, Lloh10
	.loh AdrpAdd	Lloh7, Lloh8
	.loh AdrpAdd	Lloh5, Lloh6
	.loh AdrpLdrGotLdr	Lloh2, Lloh3, Lloh4
	.loh AdrpLdrGotLdr	Lloh31, Lloh32, Lloh33
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	3, 0x0                          ; @__const.main.p1
l___const.main.p1:
	.quad	0x40a2883333333333              ; double 2372.0999999999999
	.quad	0x40a2880000000000              ; double 2372
	.quad	0x40a287999999999a              ; double 2371.8000000000002
	.quad	0x3ff00068db8bac71              ; double 1.0001

	.p2align	3, 0x0                          ; @__const.main.p2
l___const.main.p2:
	.quad	0x40a28c947ae147ae              ; double 2374.29
	.quad	0x40a289947ae147ae              ; double 2372.79
	.quad	0x40a28928f5c28f5c              ; double 2372.5799999999999
	.quad	0x3ff0012599ed7c70              ; double 1.0002800000000001

	.p2align	3, 0x0                          ; @__const.main.y1
l___const.main.y1:
	.quad	0x3fa999999999999a              ; double 0.050000000000000003
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x40df658000000000              ; double 32150

	.p2align	3, 0x0                          ; @__const.main.y2
l___const.main.y2:
	.quad	0x3fa47ae147ae147b              ; double 0.040000000000000001
	.quad	0x4069047ae147ae14              ; double 200.13999999999999
	.quad	0x408235999999999a              ; double 582.70000000000005
	.quad	0x40d7250000000000              ; double 23700

	.p2align	3, 0x0                          ; @__const.main.fl
l___const.main.fl:
	.quad	0x4000000000000000              ; double 2
	.quad	0x4000000000000000              ; double 2
	.quad	0x4000000000000000              ; double 2
	.quad	0x3ff0cccccccccccd              ; double 1.05

	.p2align	3, 0x0                          ; @__const.main.bm
l___const.main.bm:
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410337e000000000              ; double 157436

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Iterations Executed      : %d full 4-route V3 batches + BSWAP64 encodings\n"

l_.str.3:                               ; @.str.3
	.asciz	"Total CPU Time           : %.3f ms\n"

l_.str.4:                               ; @.str.4
	.asciz	"Latency Per Batch        : %.2f nanoseconds\n"

l_.str.5:                               ; @.str.5
	.asciz	"Best Route Index         : #%d (Spread=%.2f bps | Optimal Loan=$%.2f | Gross=$%+.4f | Net=$%+.4f)\n"

l_.str.6:                               ; @.str.6
	.asciz	"Thin Pool Index (#0)     : Spread=%.2f bps | Optimal Loan=$%.2f | Hardware Rejected (d_star < $10)!\n"

l_str.7:                                ; @str.7
	.asciz	"ARBITRUM v8.2 HARDWARE ASSEMBLY V3 CONCENTRATED-LIQUIDITY KERNEL"

l_str.9:                                ; @str.9
	.asciz	"======================================================================"

.subsections_via_symbols
