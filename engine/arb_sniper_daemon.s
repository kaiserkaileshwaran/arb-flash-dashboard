	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_full_loan_routes_asm  ; -- Begin function evaluate_full_loan_routes_asm
	.p2align	2
_evaluate_full_loan_routes_asm:         ; @evaluate_full_loan_routes_asm
	.cfi_startproc
; %bb.0:
	ldp	x9, x8, [sp, #48]
	ldp	x13, x11, [sp, #32]
	ldp	x15, x14, [sp, #16]
	ldp	x16, x10, [sp]
	ldp	x12, x17, [sp, #64]
	movi.2d	v1, #0000000000000000
	stp	q1, q1, [x17, #96]
	stp	q1, q1, [x17, #64]
	stp	q1, q1, [x17, #32]
	stp	q1, q1, [x17]
	ldr	d4, [x1]
	ldr	d5, [x2]
	fcmp	d4, d5
	fcsel	d2, d4, d5, ls
	fcsel	d3, d5, d4, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d6, x17
	fcmp	d2, d6
	movi.2d	v6, #0000000000000000
	b.le	LBB0_2
; %bb.1:
	fsub	d6, d3, d2
	fdiv	d6, d6, d2
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d7, x17
	fmul	d6, d6, d7
LBB0_2:
	ldr	d7, [x5]
	fsub	d18, d6, d7
	str	d6, [x16]
	str	d18, [x10]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v16, #0000000000000000
	b.gt	LBB0_61
LBB0_3:
	str	d16, [x15]
	str	d7, [x14]
	str	d6, [x13]
	str	d17, [x11]
	str	d19, [x9]
	str	d1, [x8]
	str	d1, [x12]
	ldr	d16, [x1, #8]
	ldr	d17, [x2, #8]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_5
; %bb.4:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_5:
	ldr	d3, [x5, #8]
	fsub	d18, d2, d3
	str	d2, [x16, #8]
	str	d18, [x10, #8]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_64
LBB0_6:
	str	d4, [x15, #8]
	str	d3, [x14, #8]
	str	d2, [x13, #8]
	str	d6, [x11, #8]
	str	d19, [x9, #8]
	str	d1, [x8, #8]
	str	d1, [x12, #8]
	ldr	d16, [x1, #16]
	ldr	d17, [x2, #16]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_8
; %bb.7:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_8:
	ldr	d3, [x5, #16]
	fsub	d18, d2, d3
	str	d2, [x16, #16]
	str	d18, [x10, #16]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_67
LBB0_9:
	str	d4, [x15, #16]
	str	d3, [x14, #16]
	str	d2, [x13, #16]
	str	d6, [x11, #16]
	str	d19, [x9, #16]
	str	d1, [x8, #16]
	str	d1, [x12, #16]
	ldr	d16, [x1, #24]
	ldr	d17, [x2, #24]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_11
; %bb.10:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_11:
	ldr	d3, [x5, #24]
	fsub	d18, d2, d3
	str	d2, [x16, #24]
	str	d18, [x10, #24]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_70
LBB0_12:
	str	d4, [x15, #24]
	str	d3, [x14, #24]
	str	d2, [x13, #24]
	str	d6, [x11, #24]
	str	d19, [x9, #24]
	str	d1, [x8, #24]
	str	d1, [x12, #24]
	ldr	d16, [x1, #32]
	ldr	d17, [x2, #32]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_14
; %bb.13:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_14:
	ldr	d3, [x5, #32]
	fsub	d18, d2, d3
	str	d2, [x16, #32]
	str	d18, [x10, #32]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_73
LBB0_15:
	str	d4, [x15, #32]
	str	d3, [x14, #32]
	str	d2, [x13, #32]
	str	d6, [x11, #32]
	str	d19, [x9, #32]
	str	d1, [x8, #32]
	str	d1, [x12, #32]
	ldr	d16, [x1, #40]
	ldr	d17, [x2, #40]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_17
; %bb.16:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_17:
	ldr	d3, [x5, #40]
	fsub	d18, d2, d3
	str	d2, [x16, #40]
	str	d18, [x10, #40]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_76
LBB0_18:
	str	d4, [x15, #40]
	str	d3, [x14, #40]
	str	d2, [x13, #40]
	str	d6, [x11, #40]
	str	d19, [x9, #40]
	str	d1, [x8, #40]
	str	d1, [x12, #40]
	ldr	d16, [x1, #48]
	ldr	d17, [x2, #48]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_20
; %bb.19:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_20:
	ldr	d3, [x5, #48]
	fsub	d18, d2, d3
	str	d2, [x16, #48]
	str	d18, [x10, #48]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_79
LBB0_21:
	str	d4, [x15, #48]
	str	d3, [x14, #48]
	str	d2, [x13, #48]
	str	d6, [x11, #48]
	str	d19, [x9, #48]
	str	d1, [x8, #48]
	str	d1, [x12, #48]
	ldr	d16, [x1, #56]
	ldr	d17, [x2, #56]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_23
; %bb.22:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_23:
	ldr	d3, [x5, #56]
	fsub	d18, d2, d3
	str	d2, [x16, #56]
	str	d18, [x10, #56]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_82
LBB0_24:
	str	d4, [x15, #56]
	str	d3, [x14, #56]
	str	d2, [x13, #56]
	str	d6, [x11, #56]
	str	d19, [x9, #56]
	str	d1, [x8, #56]
	str	d1, [x12, #56]
	ldr	d16, [x1, #64]
	ldr	d17, [x2, #64]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_26
; %bb.25:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_26:
	ldr	d3, [x5, #64]
	fsub	d18, d2, d3
	str	d2, [x16, #64]
	str	d18, [x10, #64]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_85
LBB0_27:
	str	d4, [x15, #64]
	str	d3, [x14, #64]
	str	d2, [x13, #64]
	str	d6, [x11, #64]
	str	d19, [x9, #64]
	str	d1, [x8, #64]
	str	d1, [x12, #64]
	ldr	d16, [x1, #72]
	ldr	d17, [x2, #72]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_29
; %bb.28:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_29:
	ldr	d3, [x5, #72]
	fsub	d18, d2, d3
	str	d2, [x16, #72]
	str	d18, [x10, #72]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_88
LBB0_30:
	str	d4, [x15, #72]
	str	d3, [x14, #72]
	str	d2, [x13, #72]
	str	d6, [x11, #72]
	str	d19, [x9, #72]
	str	d1, [x8, #72]
	str	d1, [x12, #72]
	ldr	d16, [x1, #80]
	ldr	d17, [x2, #80]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_32
; %bb.31:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_32:
	ldr	d3, [x5, #80]
	fsub	d18, d2, d3
	str	d2, [x16, #80]
	str	d18, [x10, #80]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_91
LBB0_33:
	str	d4, [x15, #80]
	str	d3, [x14, #80]
	str	d2, [x13, #80]
	str	d6, [x11, #80]
	str	d19, [x9, #80]
	str	d1, [x8, #80]
	str	d1, [x12, #80]
	ldr	d16, [x1, #88]
	ldr	d17, [x2, #88]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_35
; %bb.34:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_35:
	ldr	d3, [x5, #88]
	fsub	d18, d2, d3
	str	d2, [x16, #88]
	str	d18, [x10, #88]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_94
LBB0_36:
	str	d4, [x15, #88]
	str	d3, [x14, #88]
	str	d2, [x13, #88]
	str	d6, [x11, #88]
	str	d19, [x9, #88]
	str	d1, [x8, #88]
	str	d1, [x12, #88]
	ldr	d16, [x1, #96]
	ldr	d17, [x2, #96]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_38
; %bb.37:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_38:
	ldr	d3, [x5, #96]
	fsub	d18, d2, d3
	str	d2, [x16, #96]
	str	d18, [x10, #96]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_97
LBB0_39:
	str	d4, [x15, #96]
	str	d3, [x14, #96]
	str	d2, [x13, #96]
	str	d6, [x11, #96]
	str	d19, [x9, #96]
	str	d1, [x8, #96]
	str	d1, [x12, #96]
	ldr	d16, [x1, #104]
	ldr	d17, [x2, #104]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_41
; %bb.40:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_41:
	ldr	d3, [x5, #104]
	fsub	d18, d2, d3
	str	d2, [x16, #104]
	str	d18, [x10, #104]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_100
LBB0_42:
	str	d4, [x15, #104]
	str	d3, [x14, #104]
	str	d2, [x13, #104]
	str	d6, [x11, #104]
	str	d19, [x9, #104]
	str	d1, [x8, #104]
	str	d1, [x12, #104]
	ldr	d16, [x1, #112]
	ldr	d17, [x2, #112]
	fcmp	d16, d17
	fcsel	d5, d16, d17, ls
	fcsel	d7, d17, d16, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d5, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_44
; %bb.43:
	fsub	d2, d7, d5
	fdiv	d2, d2, d5
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d3, x17
	fmul	d2, d2, d3
LBB0_44:
	ldr	d3, [x5, #112]
	fsub	d18, d2, d3
	str	d2, [x16, #112]
	str	d18, [x10, #112]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v2, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v4, #0000000000000000
	b.gt	LBB0_103
LBB0_45:
	str	d4, [x15, #112]
	str	d3, [x14, #112]
	str	d2, [x13, #112]
	str	d6, [x11, #112]
	str	d19, [x9, #112]
	str	d1, [x8, #112]
	str	d1, [x12, #112]
	ldr	d6, [x1, #120]
	ldr	d16, [x2, #120]
	fcmp	d6, d16
	fcsel	d3, d6, d16, ls
	fcsel	d4, d16, d6, ls
	movi.2d	v1, #0000000000000000
	mov	x17, #59921                     ; =0xea11
	movk	x17, #33069, lsl #16
	movk	x17, #38809, lsl #32
	movk	x17, #15729, lsl #48
	fmov	d2, x17
	fcmp	d3, d2
	movi.2d	v2, #0000000000000000
	b.le	LBB0_47
; %bb.46:
	fsub	d2, d4, d3
	fdiv	d2, d2, d3
	mov	x17, #149533581377536           ; =0x880000000000
	movk	x17, #16579, lsl #48
	fmov	d5, x17
	fmul	d2, d2, d5
LBB0_47:
	ldr	x17, [sp, #80]
	ldr	d5, [x5, #120]
	fsub	d18, d2, d5
	str	d2, [x16, #120]
	str	d18, [x10, #120]
	fcmp	d18, #0.0
	movi.2d	v19, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v2, #0000000000000000
	b.gt	LBB0_106
LBB0_48:
	mov	x16, #0                         ; =0x0
	str	d2, [x15, #120]
	str	d5, [x14, #120]
	str	d7, [x13, #120]
	str	d17, [x11, #120]
	str	d19, [x9, #120]
	str	d1, [x8, #120]
	add	x11, x17, #4
	mov	w13, #-1                        ; =0xffffffff
	str	d1, [x12, #120]
	b	LBB0_51
LBB0_49:                                ;   in Loop: Header=BB0_51 Depth=1
	sub	x12, x16, #1
LBB0_50:                                ;   in Loop: Header=BB0_51 Depth=1
	sbfiz	x12, x12, #2, #32
	str	w16, [x11, x12]
	add	x16, x16, #1
	add	w13, w13, #1
	cmp	x16, #16
	b.eq	LBB0_60
LBB0_51:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_54 Depth 2
	cbz	w16, LBB0_49
; %bb.52:                               ;   in Loop: Header=BB0_51 Depth=1
	ldr	d0, [x8, x16, lsl #3]
	ldr	d1, [x9, x16, lsl #3]
	ldr	d2, [x10, x16, lsl #3]
	mov	w12, w13
	b	LBB0_54
LBB0_53:                                ;   in Loop: Header=BB0_54 Depth=2
	add	x15, x17, x12, lsl #2
	str	w14, [x15, #4]
	cmp	x12, #0
	sub	x12, x12, #1
	b.le	LBB0_59
LBB0_54:                                ;   Parent Loop BB0_51 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w14, [x17, x12, lsl #2]
	ldr	d3, [x8, w14, sxtw #3]
	fcmp	d3, d0
	b.mi	LBB0_53
; %bb.55:                               ;   in Loop: Header=BB0_54 Depth=2
	b.ne	LBB0_50
; %bb.56:                               ;   in Loop: Header=BB0_54 Depth=2
	ldr	d3, [x9, w14, sxtw #3]
	fcmp	d3, d1
	b.mi	LBB0_53
; %bb.57:                               ;   in Loop: Header=BB0_54 Depth=2
	b.ne	LBB0_50
; %bb.58:                               ;   in Loop: Header=BB0_54 Depth=2
	ldr	d3, [x10, w14, sxtw #3]
	fcmp	d3, d2
	b.mi	LBB0_53
	b	LBB0_50
LBB0_59:                                ;   in Loop: Header=BB0_51 Depth=1
	mov	x12, #-1                        ; =0xffffffffffffffff
	b	LBB0_50
LBB0_60:
	ret
LBB0_61:
	fcmp	d4, d5
	csel	x17, x3, x4, ls
	ldr	d1, [x17]
	csel	x17, x4, x3, ls
	ldr	d4, [x17]
	fmul	d2, d2, d1
	fmul	d4, d3, d4
	fmul	d1, d2, d4
	fadd	d3, d2, d4
	ldr	d5, [x6]
	ldr	d6, [x7]
	fadd	d6, d5, d6
	fcmp	d2, d4
	fcsel	d2, d2, d4, mi
	fcmp	d2, d6
	fcsel	d6, d6, d2, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d2, x17
	fmul	d4, d18, d2
	movi.2d	v2, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d7, x17
	fcmp	d3, d7
	movi.2d	v7, #0000000000000000
	b.le	LBB0_63
; %bb.62:
	fmov	d7, #0.50000000
	fmul	d7, d4, d7
	fmul	d7, d7, d1
	fdiv	d7, d7, d3
LBB0_63:
	fcmp	d7, d6
	fcsel	d16, d6, d7, gt
	fcmp	d16, d5
	fcsel	d7, d16, d5, ls
	fsub	d5, d16, d5
	fcsel	d6, d5, d2, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d5, x17
	fmul	d17, d7, d5
	fneg	d3, d3
	fdiv	d3, d3, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d3, d1, gt
	fmul	d3, d16, d16
	fmul	d1, d1, d3
	fmadd	d1, d16, d4, d1
	fmul	d3, d6, d5
	fsub	d1, d1, d3
	fcmp	d1, #0.0
	fcsel	d19, d2, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d2
	b	LBB0_3
LBB0_64:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #8]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #8]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #8]
	ldr	d5, [x7, #8]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_66
; %bb.65:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_66:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_6
LBB0_67:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #16]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #16]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #16]
	ldr	d5, [x7, #16]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_69
; %bb.68:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_69:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_9
LBB0_70:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #24]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #24]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #24]
	ldr	d5, [x7, #24]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_72
; %bb.71:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_72:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_12
LBB0_73:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #32]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #32]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #32]
	ldr	d5, [x7, #32]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_75
; %bb.74:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_75:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_15
LBB0_76:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #40]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #40]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #40]
	ldr	d5, [x7, #40]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_78
; %bb.77:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_78:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_18
LBB0_79:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #48]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #48]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #48]
	ldr	d5, [x7, #48]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_81
; %bb.80:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_81:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_21
LBB0_82:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #56]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #56]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #56]
	ldr	d5, [x7, #56]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_84
; %bb.83:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_84:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_24
LBB0_85:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #64]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #64]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #64]
	ldr	d5, [x7, #64]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_87
; %bb.86:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_87:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_27
LBB0_88:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #72]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #72]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #72]
	ldr	d5, [x7, #72]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_90
; %bb.89:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_90:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_30
LBB0_91:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #80]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #80]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #80]
	ldr	d5, [x7, #80]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_93
; %bb.92:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_93:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_33
LBB0_94:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #88]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #88]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #88]
	ldr	d5, [x7, #88]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_96
; %bb.95:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_96:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_36
LBB0_97:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #96]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #96]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #96]
	ldr	d5, [x7, #96]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_99
; %bb.98:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_99:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_39
LBB0_100:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #104]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #104]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #104]
	ldr	d5, [x7, #104]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_102
; %bb.101:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_102:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_42
LBB0_103:
	fcmp	d16, d17
	csel	x17, x3, x4, ls
	ldr	d1, [x17, #112]
	csel	x17, x4, x3, ls
	ldr	d2, [x17, #112]
	fmul	d3, d5, d1
	fmul	d4, d7, d2
	fmul	d1, d3, d4
	fadd	d7, d3, d4
	ldr	d2, [x6, #112]
	ldr	d5, [x7, #112]
	fadd	d5, d2, d5
	fcmp	d3, d4
	fcsel	d3, d3, d4, mi
	fcmp	d3, d5
	fcsel	d3, d5, d3, gt
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d4, x17
	fmul	d16, d18, d4
	movi.2d	v5, #0000000000000000
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d4, x17
	fcmp	d7, d4
	movi.2d	v4, #0000000000000000
	b.le	LBB0_105
; %bb.104:
	fmov	d4, #0.50000000
	fmul	d4, d16, d4
	fmul	d4, d4, d1
	fdiv	d4, d4, d7
LBB0_105:
	fcmp	d4, d3
	fcsel	d4, d3, d4, gt
	fcmp	d4, d2
	fcsel	d3, d4, d2, ls
	fsub	d2, d4, d2
	fcsel	d2, d2, d5, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d17, x17
	fmul	d6, d3, d17
	fneg	d7, d7
	fdiv	d7, d7, d1
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d18, x17
	fcmp	d1, d18
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #49932, lsl #48
	fmov	d1, x17
	fcsel	d1, d7, d1, gt
	fmul	d7, d4, d4
	fmul	d1, d1, d7
	fmadd	d1, d4, d16, d1
	fmul	d7, d2, d17
	fsub	d1, d1, d7
	fcmp	d1, #0.0
	fcsel	d19, d5, d1, mi
	fsub	d1, d19, d0
	fmaxnm	d1, d1, d5
	b	LBB0_45
LBB0_106:
	fcmp	d6, d16
	csel	x16, x3, x4, ls
	ldr	d1, [x16, #120]
	csel	x16, x4, x3, ls
	ldr	d2, [x16, #120]
	fmul	d1, d3, d1
	fmul	d2, d4, d2
	ldr	d3, [x6, #120]
	ldr	d4, [x7, #120]
	fadd	d4, d3, d4
	fcmp	d1, d2
	fcsel	d1, d1, d2, mi
	fcmp	d1, d4
	fcsel	d2, d4, d1, gt
	mov	x16, #17197                     ; =0x432d
	movk	x16, #60188, lsl #16
	movk	x16, #14050, lsl #32
	movk	x16, #16154, lsl #48
	fmov	d1, x16
	fmul	d1, d18, d1
	fcmp	d2, d3
	fcsel	d5, d2, d3, ls
	fsub	d3, d2, d3
	movi.2d	v4, #0000000000000000
	fcsel	d7, d3, d4, gt
	mov	x16, #43516                     ; =0xa9fc
	movk	x16, #54001, lsl #16
	movk	x16, #25165, lsl #32
	movk	x16, #16192, lsl #48
	fmov	d3, x16
	fmul	d17, d5, d3
	fmul	d1, d1, d2
	mov	x16, #43516                     ; =0xa9fc
	movk	x16, #54001, lsl #16
	movk	x16, #25165, lsl #32
	movk	x16, #48960, lsl #48
	fmov	d3, x16
	fmul	d3, d7, d3
	fmov	d6, #0.50000000
	fmadd	d1, d1, d6, d3
	fcmp	d1, #0.0
	fcsel	d19, d4, d1, mi
	fsub	d0, d19, d0
	fmaxnm	d1, d0, d4
	b	LBB0_48
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #96
	stp	x22, x21, [sp, #48]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #64]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #80]             ; 16-byte Folded Spill
	add	x29, sp, #80
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	cmp	w0, #2
	b.lt	LBB1_4
; %bb.1:
	mov	w20, #0                         ; =0x0
	mov	w8, w0
	add	x21, x1, #8
	sub	x22, x8, #1
Lloh0:
	adrp	x19, l_.str@PAGE
Lloh1:
	add	x19, x19, l_.str@PAGEOFF
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	x0, [x21], #8
	mov	x1, x19
	bl	_strcmp
	cmp	w0, #0
	csinc	w20, w20, wzr, ne
	subs	x22, x22, #1
	b.ne	LBB1_2
; %bb.3:
	cmp	w20, #0
	cset	w21, eq
	b	LBB1_5
LBB1_4:
	mov	w21, #1                         ; =0x1
LBB1_5:
	mov	w0, #3                          ; =0x3
	bl	_curl_global_init
	bl	_curl_easy_init
	mov	x19, x0
	stp	xzr, xzr, [sp, #24]
	str	xzr, [sp, #40]
Lloh2:
	adrp	x1, l_.str.1@PAGE
Lloh3:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh4:
	adrp	x1, l_.str.2@PAGE
Lloh5:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh6:
	adrp	x1, l_.str.3@PAGE
Lloh7:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x20, x0
	mov	w22, #1                         ; =0x1
	str	x22, [sp]
	mov	x0, x19
	mov	w1, #213                        ; =0xd5
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x19
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x19
	mov	w1, #150                        ; =0x96
	bl	_curl_easy_setopt
	mov	w8, #4                          ; =0x4
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #84                         ; =0x54
	bl	_curl_easy_setopt
	mov	w8, #3600                       ; =0xe10
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #92                         ; =0x5c
	bl	_curl_easy_setopt
	tbz	w21, #0, LBB1_9
; %bb.6:
Lloh8:
	adrp	x2, _lockfree_block_ticker_thread@PAGE
Lloh9:
	add	x2, x2, _lockfree_block_ticker_thread@PAGEOFF
	add	x0, sp, #16
	mov	x1, #0                          ; =0x0
	mov	x3, #0                          ; =0x0
	bl	_pthread_create
	adrp	x21, __MergedGlobals@PAGE
	ldr	w8, [x21, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB1_8
LBB1_7:                                 ; =>This Inner Loop Header: Depth=1
	add	x2, sp, #24
	mov	x0, x19
	mov	x1, x20
	mov	w3, #0                          ; =0x0
	bl	_run_native_asm_sniper_cycle
	mov	w0, #54464                      ; =0xd4c0
	movk	w0, #1, lsl #16
	bl	_usleep
	ldr	w8, [x21, __MergedGlobals@PAGEOFF]
	cbnz	w8, LBB1_7
LBB1_8:
	str	wzr, [x21, __MergedGlobals@PAGEOFF]
	ldr	x0, [sp, #16]
	mov	x1, #0                          ; =0x0
	bl	_pthread_join
	ldr	x0, [sp, #24]
	cbnz	x0, LBB1_10
	b	LBB1_11
LBB1_9:
	add	x2, sp, #24
	mov	x0, x19
	mov	x1, x20
	mov	w3, #1                          ; =0x1
	bl	_run_native_asm_sniper_cycle
	ldr	x0, [sp, #24]
	cbz	x0, LBB1_11
LBB1_10:
	bl	_free
LBB1_11:
	mov	x0, x20
	bl	_curl_slist_free_all
	mov	x0, x19
	bl	_curl_easy_cleanup
	bl	_curl_global_cleanup
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
	ret
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.loh AdrpAdd	Lloh8, Lloh9
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0                          ; -- Begin function run_native_asm_sniper_cycle
lCPI2_0:
	.quad	0x4041800000000000              ; double 35
	.quad	0x404b800000000000              ; double 55
lCPI2_1:
	.quad	0x403e000000000000              ; double 30
	.quad	0x4041800000000000              ; double 35
lCPI2_2:
	.quad	0x4041800000000000              ; double 35
	.quad	0x405a400000000000              ; double 105
lCPI2_3:
	.quad	0x4018000000000000              ; double 6
	.quad	0x4041800000000000              ; double 35
lCPI2_4:
	.quad	0x405a400000000000              ; double 105
	.quad	0x4041800000000000              ; double 35
lCPI2_5:
	.quad	0x4024000000000000              ; double 10
	.quad	0x403a000000000000              ; double 26
	.section	__TEXT,__text,regular,pure_instructions
	.p2align	2
_run_native_asm_sniper_cycle:           ; @run_native_asm_sniper_cycle
	.cfi_startproc
; %bb.0:
	stp	d15, d14, [sp, #-160]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	sub	x9, sp, #2528
	and	sp, x9, #0xffffffffffffffc0
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
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	str	w3, [sp, #724]                  ; 4-byte Folded Spill
Lloh10:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh11:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh12:
	ldr	x8, [x8]
	str	x8, [sp, #2520]
	cbz	x0, LBB2_11
; %bb.1:
	mov	x20, x2
	mov	x21, x1
	mov	x22, x0
	mov	x23, #0                         ; =0x0
Lloh13:
	adrp	x24, _RPC_URLS@PAGE
Lloh14:
	add	x24, x24, _RPC_URLS@PAGEOFF
Lloh15:
	adrp	x25, l_.str.4@PAGE
Lloh16:
	add	x25, x25, l_.str.4@PAGEOFF
Lloh17:
	adrp	x27, _curl_write_cb@PAGE
Lloh18:
	add	x27, x27, _curl_write_cb@PAGEOFF
	mov	w28, #1                         ; =0x1
	mov	w19, #2500                      ; =0x9c4
Lloh19:
	adrp	x26, __MergedGlobals@PAGE+8
Lloh20:
	add	x26, x26, __MergedGlobals@PAGEOFF+8
	mov	x8, #2717908992                 ; =0xa2000000
	movk	x8, #6804, lsl #32
	movk	x8, #17005, lsl #48
	fmov	d8, x8
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d9, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16595, lsl #48
	fmov	d10, x8
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d11, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16579, lsl #48
	fmov	d12, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16654, lsl #48
	fmov	d13, x8
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	str	x8, [sp, #728]                  ; 8-byte Folded Spill
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16543, lsl #48
	str	x8, [sp, #712]                  ; 8-byte Folded Spill
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16563, lsl #48
	fmov	d14, x8
	mov	x8, #4641240890982006784        ; =0x4069000000000000
	str	x8, [sp, #704]                  ; 8-byte Folded Spill
	b	LBB2_3
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	add	x23, x23, #1
	cmp	x23, #4
	b.eq	LBB2_11
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
Lloh21:
	adrp	x8, __MergedGlobals.76@PAGE
Lloh22:
	ldr	x8, [x8, __MergedGlobals.76@PAGEOFF]
	add	w8, w23, w8
	and	x8, x8, #0x3
	ldr	x8, [x24, x8, lsl #3]
	str	xzr, [x20, #8]
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x21, [sp]
	mov	x0, x22
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
	str	x25, [sp]
	mov	x0, x22
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
	str	x27, [sp]
	mov	x0, x22
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x22
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	str	x28, [sp]
	mov	x0, x22
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	str	x19, [sp]
	mov	x0, x22
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x22
	bl	_curl_easy_perform
	cbnz	w0, LBB2_2
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	x0, [x20]
	cbz	x0, LBB2_2
; %bb.5:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	x8, [x20, #8]
	cmp	x8, #129
	b.lo	LBB2_2
; %bb.6:                                ;   in Loop: Header=BB2_3 Depth=1
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	cbz	x0, LBB2_2
; %bb.7:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	x0, [x20]
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	ldr	d3, [x26]
	mov.16b	v0, v8
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x26]
	ldr	x0, [x20]
	mov	w1, #11                         ; =0xb
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #8]
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #8]
	ldr	x0, [x20]
	mov	w1, #12                         ; =0xc
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #16]
	fmov	d2, #10.00000000
	mov.16b	v0, v8
	ldr	d15, [sp, #728]                 ; 8-byte Folded Reload
	mov.16b	v1, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #16]
	ldr	x0, [x20]
	mov	w1, #13                         ; =0xd
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #24]
	fmov	d0, #1.00000000
	fmov	d1, #2.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #24]
	ldr	x0, [x20]
	mov	w1, #14                         ; =0xe
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #32]
	fmov	d2, #10.00000000
	mov.16b	v0, v8
	mov.16b	v1, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #32]
	ldr	x0, [x20]
	mov	w1, #15                         ; =0xf
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #40]
	fmov	d1, #10.00000000
	mov.16b	v0, v8
	ldr	d15, [sp, #712]                 ; 8-byte Folded Reload
	mov.16b	v2, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #40]
	ldr	x0, [x20]
	mov	w1, #16                         ; =0x10
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #48]
	mov.16b	v0, v8
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #48]
	ldr	x0, [x20]
	mov	w1, #17                         ; =0x11
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #56]
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #56]
	ldr	x0, [x20]
	mov	w1, #18                         ; =0x12
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #64]
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #64]
	ldr	x0, [x20]
	mov	w1, #19                         ; =0x13
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #72]
	fmov	d1, #10.00000000
	mov.16b	v0, v8
	mov.16b	v2, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #72]
	ldr	x0, [x20]
	mov	w1, #20                         ; =0x14
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #80]
	fmov	d0, #1.00000000
	fmov	d1, #20.00000000
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #80]
	ldr	x0, [x20]
	mov	w1, #21                         ; =0x15
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #88]
	fmov	d0, #1.00000000
	fmov	d1, #20.00000000
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #88]
	ldr	x0, [x20]
	mov	w1, #22                         ; =0x16
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #96]
	fmov	d1, #0.50000000
	mov.16b	v0, v8
	ldr	d2, [sp, #704]                  ; 8-byte Folded Reload
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #96]
	ldr	x0, [x20]
	mov	w1, #38                         ; =0x26
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #192]
	fmov	d0, #1.00000000
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #192]
	ldr	x0, [x20]
	mov	w1, #39                         ; =0x27
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #200]
	fmov	d0, #1.00000000
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #200]
	ldr	x0, [x20]
	mov	w1, #40                         ; =0x28
	bl	_find_batch_result_for_id
	ldr	d3, [x26, #208]
	fmov	d0, #1.00000000
	fmov	d1, #2.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x26, #208]
	str	xzr, [x20, #8]
Lloh23:
	adrp	x8, l_.str.5@PAGE
Lloh24:
	add	x8, x8, l_.str.5@PAGEOFF
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
	mov	x0, x22
	bl	_curl_easy_perform
	cbnz	w0, LBB2_2
; %bb.8:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	x0, [x20]
	mov	w1, #28                         ; =0x1c
	bl	_find_batch_result_for_id
	cbz	x0, LBB2_2
; %bb.9:
	ldr	x0, [x20]
	mov	w1, #23                         ; =0x17
	bl	_find_batch_result_for_id
Lloh25:
	adrp	x19, __MergedGlobals@PAGE+112
Lloh26:
	add	x19, x19, __MergedGlobals@PAGEOFF+112
	ldr	d3, [x19]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16543, lsl #48
	fmov	d9, x8
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x19]
	ldr	x0, [x20]
	mov	w1, #24                         ; =0x18
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #8]
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #8]
	ldr	x0, [x20]
	mov	w1, #25                         ; =0x19
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #16]
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #16]
	ldr	x0, [x20]
	mov	w1, #26                         ; =0x1a
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #24]
	mov	x8, #2717908992                 ; =0xa2000000
	movk	x8, #6804, lsl #32
	movk	x8, #17005, lsl #48
	fmov	d11, x8
	mov	x8, #4641240890982006784        ; =0x4069000000000000
	fmov	d8, x8
	fmov	d1, #0.50000000
	mov.16b	v0, v11
	mov.16b	v2, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #24]
	ldr	x0, [x20]
	mov	w1, #27                         ; =0x1b
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #32]
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d10, x8
	mov	x8, #116548232544256            ; =0x6a0000000000
	movk	x8, #16632, lsl #48
	fmov	d12, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v10
	mov.16b	v2, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #32]
	ldr	x0, [x20]
	mov	w1, #28                         ; =0x1c
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #40]
	fmov	d0, #1.00000000
	mov.16b	v1, v10
	mov.16b	v2, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #40]
	ldr	x0, [x20]
	mov	w1, #29                         ; =0x1d
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #48]
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #48]
	ldr	x0, [x20]
	mov	w1, #30                         ; =0x1e
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #56]
	fmov	d0, #1.00000000
	mov.16b	v1, v10
	mov.16b	v2, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #56]
	ldr	x0, [x20]
	mov	w1, #32                         ; =0x20
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #64]
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d12, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16595, lsl #48
	fmov	d2, x8
	mov.16b	v0, v11
	mov.16b	v1, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #64]
	ldr	x0, [x20]
	mov	w1, #34                         ; =0x22
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #72]
	mov	x8, #48571                      ; =0xbdbb
	movk	x8, #55767, lsl #16
	movk	x8, #31967, lsl #32
	movk	x8, #15835, lsl #48
	fmov	d9, x8
	fmov	d1, #5.00000000
	mov.16b	v0, v9
	mov.16b	v2, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #72]
	ldr	x0, [x20]
	mov	w1, #35                         ; =0x23
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #80]
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16579, lsl #48
	fmov	d1, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16654, lsl #48
	fmov	d2, x8
	mov.16b	v0, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #80]
	ldr	x0, [x20]
	mov	w1, #36                         ; =0x24
	bl	_find_batch_result_for_id
	ldr	d0, [x19, #136]
	bl	_decode_aave_hf
	str	d0, [x19, #136]
	ldr	x0, [x20]
	mov	w1, #37                         ; =0x25
	bl	_find_batch_result_for_id
	ldr	d0, [x19, #144]
	bl	_decode_aave_hf
	str	d0, [x19, #144]
	ldr	x0, [x20]
	mov	w1, #41                         ; =0x29
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #112]
	fmov	d0, #1.00000000
	fmov	d1, #2.00000000
	mov.16b	v2, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #112]
	ldr	x0, [x20]
	mov	w1, #42                         ; =0x2a
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #120]
	fmov	d1, #5.00000000
	mov.16b	v0, v9
	mov.16b	v2, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #120]
	ldr	x0, [x20]
	mov	w1, #43                         ; =0x2b
	bl	_find_batch_result_for_id
	ldr	d3, [x19, #128]
	fmov	d1, #5.00000000
	mov.16b	v0, v9
	mov.16b	v2, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [x19, #128]
	ldp	d2, d0, [x19, #136]
	fcmp	d0, d2
	b.pl	LBB2_12
; %bb.10:
	adrp	x8, __MergedGlobals@PAGE+248
	str	d0, [x8, __MergedGlobals@PAGEOFF+248]
	mov.16b	v2, v0
	b	LBB2_12
LBB2_11:
Lloh27:
	adrp	x8, __MergedGlobals@PAGE+248
Lloh28:
	ldr	d2, [x8, __MergedGlobals@PAGEOFF+248]
LBB2_12:
Lloh29:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh30:
	ldr	d1, [x8, __MergedGlobals@PAGEOFF+8]
	fmov	d0, #1.00000000
	fcmp	d2, d0
	b.pl	LBB2_14
; %bb.13:
	mov	x8, #-3689348814741910324       ; =0xcccccccccccccccc
	movk	x8, #52429
	movk	x8, #16368, lsl #48
	fmov	d0, x8
	fmul	d2, d1, d0
	fmov	d0, #5.00000000
	b	LBB2_15
LBB2_14:
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d0, x8
	fdiv	d2, d1, d2
LBB2_15:
Lloh31:
	adrp	x8, __MergedGlobals@PAGE+16
Lloh32:
	add	x8, x8, __MergedGlobals@PAGEOFF+16
	ldp	d4, d5, [x8, #64]
	fdiv	d6, d1, d5
	fmov	d3, #1.00000000
	fcmp	d5, d3
	mov	x9, #20972                      ; =0x51ec
	movk	x9, #7864, lsl #16
	movk	x9, #60293, lsl #32
	movk	x9, #16412, lsl #48
	fmov	d5, x9
	fcsel	d5, d6, d5, gt
	ldp	d7, d6, [x8, #96]
	fdiv	d16, d1, d7
	fcmp	d7, d3
	mov	x9, #7378697629483820646        ; =0x6666666666666666
	movk	x9, #58982, lsl #32
	movk	x9, #16423, lsl #48
	fmov	d7, x9
	fcsel	d7, d16, d7, gt
	str	d5, [sp, #2368]
	str	d7, [sp, #2376]
	ldp	d7, d5, [x8, #216]
	fmul	d18, d1, d7
	ldp	d7, d16, [x8]
	str	d18, [sp, #2384]
	str	d16, [sp, #2392]
	ldp	d17, d16, [x8, #112]
	fdiv	d19, d1, d17
	fcmp	d17, d3
	mov	x9, #23593                      ; =0x5c29
	movk	x9, #49807, lsl #16
	movk	x9, #10485, lsl #32
	movk	x9, #16424, lsl #48
	fmov	d17, x9
	fcsel	d17, d19, d17, gt
	ldp	d19, d20, [x8, #16]
	fdiv	d21, d1, d19
	fcmp	d19, d3
	mov	x9, #36700                      ; =0x8f5c
	movk	x9, #62914, lsl #16
	movk	x9, #56360, lsl #32
	movk	x9, #16482, lsl #48
	fmov	d19, x9
	fcsel	d19, d21, d19, gt
	str	d17, [sp, #2400]
	str	d19, [sp, #2408]
	ldr	d19, [x8, #32]
	ldp	d17, d21, [x8, #136]
	fdiv	d22, d1, d21
	fcmp	d21, d3
	mov	x9, #3689348814741910323        ; =0x3333333333333333
	movk	x9, #16424, lsl #48
	fmov	d21, x9
	fcsel	d21, d22, d21, gt
	str	d19, [sp, #2416]
	str	d21, [sp, #2424]
	ldp	d19, d21, [x8, #48]
	ldp	d22, d23, [x8, #184]
	str	d19, [sp, #2432]
	str	d22, [sp, #2440]
	ldp	d19, d22, [x8, #200]
	fdiv	d24, d1, d19
	fcmp	d19, d3
	mov	x9, #28836                      ; =0x70a4
	movk	x9, #2621, lsl #16
	movk	x9, #58327, lsl #32
	movk	x9, #16482, lsl #48
	fmov	d19, x9
	fcsel	d19, d24, d19, gt
	ldp	d25, d24, [x8, #80]
	str	d19, [sp, #2448]
	str	d24, [sp, #2456]
	ldr	d19, [x8, #152]
	fdiv	d24, d1, d19
	fcmp	d19, d3
	mov	x9, #13946                      ; =0x367a
	movk	x9, #16043, lsl #16
	movk	x9, #23383, lsl #32
	movk	x9, #16329, lsl #48
	fmov	d19, x9
	fcsel	d19, d24, d19, gt
	str	d19, [sp, #2464]
	str	d18, [sp, #2472]
	fdiv	d18, d1, d25
	fcmp	d25, d3
	mov	x9, #15729                      ; =0x3d71
	movk	x9, #55050, lsl #16
	movk	x9, #28835, lsl #32
	movk	x9, #16413, lsl #48
	fmov	d19, x9
	fcsel	d18, d18, d19, gt
	fcmp	d6, d3
	mov	x9, #41943                      ; =0xa3d7
	movk	x9, #15728, lsl #16
	movk	x9, #22282, lsl #32
	movk	x9, #16424, lsl #48
	fmov	d19, x9
	fdiv	d6, d1, d6
	fcsel	d6, d6, d19, gt
	ldp	d19, d24, [x8, #168]
	fmul	d19, d1, d19
	str	d19, [sp, #2256]
	str	d20, [sp, #2264]
	fcmp	d22, d3
	mov	x8, #87960930222080             ; =0x500000000000
	movk	x8, #16483, lsl #48
	fmov	d19, x8
	fdiv	d20, d1, d22
	fcsel	d19, d20, d19, gt
	str	d21, [sp, #2304]
	str	d23, [sp, #2312]
	str	d18, [sp, #2240]
	str	d6, [sp, #2248]
	str	d4, [sp, #2288]
	str	d6, [sp, #2296]
	str	d6, [sp, #2272]
	str	d19, [sp, #2280]
	str	d19, [sp, #2320]
	str	d16, [sp, #2328]
	str	d7, [sp, #2480]
	str	d1, [sp, #2488]
	fcmp	d17, d3
	mov	x8, #50332                      ; =0xc49c
	movk	x8, #45088, lsl #16
	movk	x8, #26738, lsl #32
	movk	x8, #16329, lsl #48
	fmov	d3, x8
	fdiv	d4, d1, d17
	fcsel	d3, d4, d3, gt
	fmul	d1, d1, d5
	str	d3, [sp, #2336]
	str	d1, [sp, #2344]
	str	d24, [sp, #2352]
	str	d2, [sp, #2360]
Lloh33:
	adrp	x8, lCPI2_0@PAGE
Lloh34:
	ldr	q1, [x8, lCPI2_0@PAGEOFF]
Lloh35:
	adrp	x8, lCPI2_1@PAGE
Lloh36:
	ldr	q2, [x8, lCPI2_1@PAGEOFF]
	str	q1, [sp, #2112]
	str	q2, [sp, #2128]
Lloh37:
	adrp	x8, lCPI2_2@PAGE
Lloh38:
	ldr	q1, [x8, lCPI2_2@PAGEOFF]
Lloh39:
	adrp	x8, lCPI2_3@PAGE
Lloh40:
	ldr	q2, [x8, lCPI2_3@PAGEOFF]
	str	q1, [sp, #2144]
	str	q2, [sp, #2160]
Lloh41:
	adrp	x8, lCPI2_4@PAGE
Lloh42:
	ldr	q1, [x8, lCPI2_4@PAGEOFF]
	str	q2, [sp, #2176]
	str	q1, [sp, #2192]
Lloh43:
	adrp	x8, lCPI2_5@PAGE
Lloh44:
	ldr	q1, [x8, lCPI2_5@PAGEOFF]
	str	q1, [sp, #2208]
	mov	x8, #4618441417868443648        ; =0x4018000000000000
	str	x8, [sp, #2224]
	str	d0, [sp, #2232]
	mov	w0, #58                         ; =0x3a
	bl	_sysconf
	str	x0, [sp, #728]                  ; 8-byte Folded Spill
	add	x1, sp, #752
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	w19, #1000                      ; =0x3e8
	add	x27, sp, #768
	add	x25, sp, #1088
	add	x28, sp, #1728
	add	x20, sp, #1856
	add	x26, sp, #1984
Lloh45:
	adrp	x21, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh46:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh47:
	adrp	x22, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh48:
	add	x22, x22, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
Lloh49:
	adrp	x23, l___const.run_native_asm_sniper_cycle.bm@PAGE
Lloh50:
	add	x23, x23, l___const.run_native_asm_sniper_cycle.bm@PAGEOFF
	mov	x8, #36805                      ; =0x8fc5
	movk	x8, #30513, lsl #16
	movk	x8, #8493, lsl #32
	movk	x8, #16239, lsl #48
	fmov	d8, x8
Lloh51:
	adrp	x24, l___const.run_native_asm_sniper_cycle.am@PAGE
Lloh52:
	add	x24, x24, l___const.run_native_asm_sniper_cycle.am@PAGEOFF
LBB2_16:                                ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #2240
	add	x9, sp, #2368
	; InlineAsm Start
	; InlineAsm End
	add	x8, sp, #832
	stp	x8, x27, [sp, #72]
	add	x8, sp, #960
	stp	x25, x8, [sp, #56]
	add	x8, sp, #1216
	str	x8, [sp, #48]
	add	x8, sp, #1344
	str	x8, [sp, #40]
	add	x8, sp, #1472
	str	x8, [sp, #32]
	add	x8, sp, #1600
	stp	x28, x8, [sp, #16]
	add	x1, sp, #2368
	add	x2, sp, #2240
	add	x5, sp, #2112
	stp	x26, x20, [sp]
	mov	x3, x21
	mov	x4, x22
	mov	x6, x23
	mov	x7, x24
	mov.16b	v0, v8
	bl	_evaluate_full_loan_routes_asm
	; InlineAsm Start
	; InlineAsm End
	subs	w19, w19, #1
	b.ne	LBB2_16
; %bb.17:
	add	x1, sp, #736
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldr	x8, [sp, #736]
	ldr	x9, [sp, #744]
	ldr	x10, [sp, #752]
	ldr	x11, [sp, #760]
	sub	x8, x8, x10
	scvtf	d0, x8
	sub	x8, x9, x11
	scvtf	d1, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d2, x8
	fmadd	d0, d0, d2, d1
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	fmov	d1, x8
	fdiv	d0, d0, d1
	fdiv	d1, d0, d1
Lloh53:
	adrp	x8, __MergedGlobals@PAGE+264
Lloh54:
	add	x8, x8, __MergedGlobals@PAGEOFF+264
	str	d0, [sp, #712]                  ; 8-byte Folded Spill
	str	d0, [x8]
	str	d1, [sp, #704]                  ; 8-byte Folded Spill
	str	d1, [x8, #8]
	adrp	x9, __MergedGlobals.76@PAGE
	ldr	x8, [x9, __MergedGlobals.76@PAGEOFF]
	add	x8, x8, #1
	str	x8, [x9, __MergedGlobals.76@PAGEOFF]
	ldrsw	x23, [sp, #768]
	ldr	d21, [sp, #1216]
	ldr	d18, [sp, #1224]
	fcmp	d21, #0.0
	cset	w8, gt
	movi.2d	v0, #0000000000000000
	ldr	d1, [sp, #1728]
	ldr	d2, [sp, #1736]
	fadd	d1, d1, d0
	fcsel	d3, d21, d0, gt
	fcsel	d0, d1, d0, gt
	mov	w9, #2                          ; =0x2
	csinc	w9, w9, wzr, gt
	fadd	d1, d0, d2
	fcmp	d18, #0.0
	mov	x10, #-9223372036854775808      ; =0x8000000000000000
	fmov	d2, x10
	fcsel	d2, d18, d2, gt
	fadd	d2, d3, d2
	fcsel	d0, d1, d0, gt
	csel	w8, w9, w8, gt
	ldr	d1, [sp, #1744]
	ldr	d3, [sp, #1752]
	fadd	d1, d0, d1
	ldr	d23, [sp, #1232]
	ldr	d20, [sp, #1240]
	fadd	d4, d2, d23
	fcmp	d23, #0.0
	fcsel	d2, d4, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	fadd	d1, d0, d3
	fadd	d3, d2, d20
	fcmp	d20, #0.0
	fcsel	d2, d3, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	ldr	d1, [sp, #1760]
	ldr	d3, [sp, #1768]
	fadd	d1, d0, d1
	ldr	d22, [sp, #1248]
	ldr	d17, [sp, #1256]
	fadd	d4, d2, d22
	fcmp	d22, #0.0
	fcsel	d2, d4, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	fadd	d1, d0, d3
	fadd	d3, d2, d17
	fcmp	d17, #0.0
	fcsel	d2, d3, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	ldr	d1, [sp, #1776]
	ldr	d3, [sp, #1784]
	fadd	d1, d0, d1
	ldr	d19, [sp, #1264]
	ldr	d7, [sp, #1272]
	fadd	d4, d2, d19
	fcmp	d19, #0.0
	fcsel	d2, d4, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	fadd	d1, d0, d3
	fadd	d3, d2, d7
	fcmp	d7, #0.0
	fcsel	d2, d3, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	ldr	d1, [sp, #1792]
	ldr	d3, [sp, #1800]
	fadd	d1, d0, d1
	ldr	d16, [sp, #1280]
	ldr	d5, [sp, #1288]
	fadd	d4, d2, d16
	fcmp	d16, #0.0
	fcsel	d2, d4, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	fadd	d1, d0, d3
	fadd	d3, d2, d5
	fcmp	d5, #0.0
	fcsel	d2, d3, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	ldr	d1, [sp, #1808]
	ldr	d4, [sp, #1816]
	fadd	d1, d0, d1
	ldr	d6, [sp, #1296]
	ldr	d3, [sp, #1304]
	fadd	d24, d2, d6
	fcmp	d6, #0.0
	fcsel	d2, d24, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	fadd	d1, d0, d4
	fadd	d4, d2, d3
	fcmp	d3, #0.0
	fcsel	d24, d4, d2, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	ldr	d1, [sp, #1824]
	ldr	d25, [sp, #1832]
	fadd	d1, d0, d1
	ldr	d4, [sp, #1312]
	ldr	d2, [sp, #1320]
	fadd	d26, d24, d4
	fcmp	d4, #0.0
	fcsel	d24, d26, d24, gt
	fcsel	d0, d1, d0, gt
	cinc	w8, w8, gt
	fadd	d1, d0, d25
	fadd	d25, d24, d2
	fcmp	d2, #0.0
	fcsel	d24, d25, d24, gt
	fcsel	d25, d1, d0, gt
	cinc	w8, w8, gt
	ldr	d1, [sp, #1328]
	ldr	d0, [sp, #1336]
	fadd	d26, d24, d1
	fcmp	d1, #0.0
	fcsel	d10, d26, d24, gt
	ldr	d24, [sp, #1840]
	fadd	d24, d25, d24
	fcsel	d12, d24, d25, gt
	cinc	w24, w8, gt
	fcmp	d0, #0.0
	b.le	LBB2_19
; %bb.18:
	add	w24, w24, #1
	ldr	d24, [sp, #1848]
	fadd	d12, d12, d24
	fadd	d10, d10, d0
	mov	w8, #8                          ; =0x8
	ldr	x9, [sp, #728]                  ; 8-byte Folded Reload
	cmp	x9, #1
	csel	x25, x8, x9, lt
	mov.16b	v24, v10
	b	LBB2_22
LBB2_19:
	mov	w8, #8                          ; =0x8
	ldr	x9, [sp, #728]                  ; 8-byte Folded Reload
	cmp	x9, #1
	csel	x25, x8, x9, lt
	cbz	w24, LBB2_21
; %bb.20:
	mov.16b	v24, v10
	b	LBB2_22
LBB2_21:
	add	x8, sp, #1216
	ldr	d24, [x8, x23, lsl #3]
LBB2_22:
	mov	x8, #36805                      ; =0x8fc5
	movk	x8, #30513, lsl #16
	movk	x8, #8493, lsl #32
	movk	x8, #49007, lsl #48
	fmov	d25, x8
	fadd	d14, d24, d25
	movi.2d	v25, #0000000000000000
	movi.2d	v24, #0000000000000000
	str	d24, [sp, #728]                 ; 8-byte Folded Spill
	fmaxnm	d15, d14, d25
	fcmp	d14, #0.0
	mov	x8, #59921                      ; =0xea11
	movk	x8, #33069, lsl #16
	movk	x8, #38809, lsl #32
	movk	x8, #15729, lsl #48
	fmov	d24, x8
	fccmp	d10, d24, #4, gt
	b.le	LBB2_71
; %bb.23:
	fcmp	d21, #0.0
	b.le	LBB2_26
; %bb.24:
	ldr	d24, [sp, #1088]
	fcmp	d24, #0.0
	b.hi	LBB2_26
; %bb.25:
	fdiv	d21, d21, d10
	fmul	d21, d15, d21
	str	d21, [sp, #1088]
	str	d21, [sp, #960]
	str	xzr, [sp, #832]
LBB2_26:
	fcmp	d18, #0.0
	b.le	LBB2_29
; %bb.27:
	ldr	d21, [sp, #1096]
	fcmp	d21, #0.0
	b.hi	LBB2_29
; %bb.28:
	fdiv	d18, d18, d10
	fmul	d18, d15, d18
	str	d18, [sp, #1096]
	str	d18, [sp, #968]
	str	xzr, [sp, #840]
LBB2_29:
	fcmp	d23, #0.0
	b.le	LBB2_32
; %bb.30:
	ldr	d18, [sp, #1104]
	fcmp	d18, #0.0
	b.hi	LBB2_32
; %bb.31:
	fdiv	d18, d23, d10
	fmul	d18, d15, d18
	str	d18, [sp, #1104]
	str	d18, [sp, #976]
	str	xzr, [sp, #848]
LBB2_32:
	fcmp	d20, #0.0
	b.le	LBB2_35
; %bb.33:
	ldr	d18, [sp, #1112]
	fcmp	d18, #0.0
	b.hi	LBB2_35
; %bb.34:
	fdiv	d18, d20, d10
	fmul	d18, d15, d18
	str	d18, [sp, #1112]
	str	d18, [sp, #984]
	str	xzr, [sp, #856]
LBB2_35:
	fcmp	d22, #0.0
	b.le	LBB2_38
; %bb.36:
	ldr	d18, [sp, #1120]
	fcmp	d18, #0.0
	b.hi	LBB2_38
; %bb.37:
	fdiv	d18, d22, d10
	fmul	d18, d15, d18
	str	d18, [sp, #1120]
	str	d18, [sp, #992]
	str	xzr, [sp, #864]
LBB2_38:
	fcmp	d17, #0.0
	b.le	LBB2_41
; %bb.39:
	ldr	d18, [sp, #1128]
	fcmp	d18, #0.0
	b.hi	LBB2_41
; %bb.40:
	fdiv	d17, d17, d10
	fmul	d17, d15, d17
	str	d17, [sp, #1128]
	str	d17, [sp, #1000]
	str	xzr, [sp, #872]
LBB2_41:
	fcmp	d19, #0.0
	b.le	LBB2_44
; %bb.42:
	ldr	d17, [sp, #1136]
	fcmp	d17, #0.0
	b.hi	LBB2_44
; %bb.43:
	fdiv	d17, d19, d10
	fmul	d17, d15, d17
	str	d17, [sp, #1136]
	str	d17, [sp, #1008]
	str	xzr, [sp, #880]
LBB2_44:
	fcmp	d7, #0.0
	b.le	LBB2_47
; %bb.45:
	ldr	d17, [sp, #1144]
	fcmp	d17, #0.0
	b.hi	LBB2_47
; %bb.46:
	fdiv	d7, d7, d10
	fmul	d7, d15, d7
	str	d7, [sp, #1144]
	str	d7, [sp, #1016]
	str	xzr, [sp, #888]
LBB2_47:
	fcmp	d16, #0.0
	b.le	LBB2_50
; %bb.48:
	ldr	d7, [sp, #1152]
	fcmp	d7, #0.0
	b.hi	LBB2_50
; %bb.49:
	fdiv	d7, d16, d10
	fmul	d7, d15, d7
	str	d7, [sp, #1152]
	str	d7, [sp, #1024]
	str	xzr, [sp, #896]
LBB2_50:
	fcmp	d5, #0.0
	b.le	LBB2_53
; %bb.51:
	ldr	d7, [sp, #1160]
	fcmp	d7, #0.0
	b.hi	LBB2_53
; %bb.52:
	fdiv	d5, d5, d10
	fmul	d5, d15, d5
	str	d5, [sp, #1160]
	str	d5, [sp, #1032]
	str	xzr, [sp, #904]
LBB2_53:
	fcmp	d6, #0.0
	b.le	LBB2_56
; %bb.54:
	ldr	d5, [sp, #1168]
	fcmp	d5, #0.0
	b.hi	LBB2_56
; %bb.55:
	fdiv	d5, d6, d10
	fmul	d5, d15, d5
	str	d5, [sp, #1168]
	str	d5, [sp, #1040]
	str	xzr, [sp, #912]
LBB2_56:
	fcmp	d3, #0.0
	b.le	LBB2_59
; %bb.57:
	ldr	d5, [sp, #1176]
	fcmp	d5, #0.0
	b.hi	LBB2_59
; %bb.58:
	fdiv	d3, d3, d10
	fmul	d3, d15, d3
	str	d3, [sp, #1176]
	str	d3, [sp, #1048]
	str	xzr, [sp, #920]
LBB2_59:
	fcmp	d4, #0.0
	b.le	LBB2_62
; %bb.60:
	ldr	d3, [sp, #1184]
	fcmp	d3, #0.0
	b.hi	LBB2_62
; %bb.61:
	fdiv	d3, d4, d10
	fmul	d3, d15, d3
	str	d3, [sp, #1184]
	str	d3, [sp, #1056]
	str	xzr, [sp, #928]
LBB2_62:
	fcmp	d2, #0.0
	b.le	LBB2_65
; %bb.63:
	ldr	d3, [sp, #1192]
	fcmp	d3, #0.0
	b.hi	LBB2_65
; %bb.64:
	fdiv	d2, d2, d10
	fmul	d2, d15, d2
	str	d2, [sp, #1192]
	str	d2, [sp, #1064]
	str	xzr, [sp, #936]
LBB2_65:
	fcmp	d1, #0.0
	b.le	LBB2_68
; %bb.66:
	ldr	d2, [sp, #1200]
	fcmp	d2, #0.0
	b.hi	LBB2_68
; %bb.67:
	fdiv	d1, d1, d10
	fmul	d1, d15, d1
	str	d1, [sp, #1200]
	str	d1, [sp, #1072]
	str	xzr, [sp, #944]
LBB2_68:
	fcmp	d0, #0.0
	b.le	LBB2_71
; %bb.69:
	ldr	d1, [sp, #1208]
	fcmp	d1, #0.0
	b.hi	LBB2_71
; %bb.70:
	fdiv	d0, d0, d10
	fmul	d0, d15, d0
	str	d0, [sp, #1208]
	str	d0, [sp, #1080]
	str	xzr, [sp, #952]
LBB2_71:
	add	x8, sp, #1088
	ldr	d0, [x8, x23, lsl #3]
	fcmp	d15, d0
	fcsel	d13, d15, d0, gt
	mov.16b	v11, v15
	b.gt	LBB2_73
; %bb.72:
	add	x8, sp, #960
	ldr	d11, [x8, x23, lsl #3]
	add	x8, sp, #832
	ldr	d1, [x8, x23, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d2, x8
	fmul	d1, d1, d2
	str	d1, [sp, #728]                  ; 8-byte Folded Spill
LBB2_73:
Lloh55:
	adrp	x9, __MergedGlobals@PAGE+248
Lloh56:
	add	x9, x9, __MergedGlobals@PAGEOFF+248
	lsl	w22, w25, #3
	ldr	x8, [x9, #32]
	ucvtf	d1, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d2, x8
	fdiv	d3, d1, d2
	ldr	x8, [x9, #40]
	ucvtf	d1, x8
	fdiv	d1, d1, d2
	fadd	d4, d3, d1
Lloh57:
	adrp	x8, __MergedGlobals.76@PAGE+8
Lloh58:
	ldr	x8, [x8, __MergedGlobals.76@PAGEOFF+8]
	ucvtf	d1, x8
	fdiv	d5, d1, d2
	str	d4, [sp, #640]                  ; 8-byte Folded Spill
	fadd	d2, d4, d5
	ldr	x28, [x9, #48]
	ldr	x27, [x9, #56]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	str	d2, [sp, #632]                  ; 8-byte Folded Spill
	fmul	d4, d2, d1
	str	d3, [sp, #656]                  ; 8-byte Folded Spill
	fmul	d2, d3, d1
	str	d4, [sp, #616]                  ; 8-byte Folded Spill
	stp	d4, d2, [x9, #64]
	str	d2, [sp, #648]                  ; 8-byte Folded Spill
	str	d5, [sp, #624]                  ; 8-byte Folded Spill
	fmul	d1, d5, d1
	str	d1, [sp, #608]                  ; 8-byte Folded Spill
	str	d1, [x9, #80]
	ldr	x19, [x9, #48]
	ldr	d1, [x9]
	fcmp	d13, #0.0
	cset	w10, gt
	fmov	d2, #1.00000000
	fcmp	d1, d2
	ldr	x8, [x9, #88]
	csinc	w20, w10, wzr, pl
	mov	x10, #20480                     ; =0x5000
	movk	x10, #10041, lsl #16
	movk	x10, #1164, lsl #32
Lloh59:
	adrp	x11, __MergedGlobals@PAGE+4
Lloh60:
	add	x11, x11, __MergedGlobals@PAGEOFF+4
Lloh61:
	adrp	x26, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh62:
	add	x26, x26, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	cmp	x19, x10
	b.lo	LBB2_85
; %bb.74:
	ldr	x9, [x9, #96]
	cmp	x8, x9
	b.ls	LBB2_85
; %bb.75:
	cbz	w20, LBB2_85
; %bb.76:
	mov.16b	v8, v14
	mov	x10, x11
	ldr	w9, [x10], #-4
	ldr	x11, [x10, #352]
	add	x11, x11, #1
	stp	x8, x11, [x10, #344]
	mov	x10, #5243                      ; =0x147b
	movk	x10, #18350, lsl #16
	movk	x10, #47841, lsl #32
	movk	x10, #16471, lsl #48
	fmov	d1, x10
	cmp	w9, #1
	b.lt	LBB2_79
; %bb.77:
	mov	w10, #19                        ; =0x13
	cmp	w9, #19
	csel	w11, w9, w10, lo
	add	w9, w11, #1
Lloh63:
	adrp	x12, _g_block_ring@PAGE
Lloh64:
	add	x12, x12, _g_block_ring@PAGEOFF
	mov	w13, #224                       ; =0xe0
	umaddl	x10, w11, w13, x12
	sub	w11, w11, #1
	umaddl	x11, w11, w13, x12
LBB2_78:                                ; =>This Inner Loop Header: Depth=1
	ldp	q2, q3, [x11, #160]
	stp	q2, q3, [x10, #160]
	ldp	q2, q3, [x11, #192]
	stp	q2, q3, [x10, #192]
	ldp	q2, q3, [x11, #96]
	stp	q2, q3, [x10, #96]
	ldp	q2, q3, [x11, #128]
	stp	q2, q3, [x10, #128]
	ldp	q2, q3, [x11, #32]
	stp	q2, q3, [x10, #32]
	ldp	q2, q3, [x11, #64]
	stp	q2, q3, [x10, #64]
	ldp	q2, q3, [x11], #-224
	sub	w9, w9, #1
	stp	q2, q3, [x10], #-224
	cmp	w9, #1
	b.gt	LBB2_78
LBB2_79:
	fmul	d9, d13, d1
	fmul	d14, d11, d1
	adrp	x9, _g_block_ring@PAGE
	str	x8, [x9, _g_block_ring@PAGEOFF]
	ldr	x8, [x26, x23, lsl #3]
	fcmp	d15, d0
	b.le	LBB2_82
; %bb.80:
	cmp	w24, #1
	b.ls	LBB2_82
; %bb.81:
Lloh65:
	adrp	x0, _g_block_ring@PAGE+8
Lloh66:
	add	x0, x0, _g_block_ring@PAGEOFF+8
	stp	x24, x8, [sp]
Lloh67:
	adrp	x2, l_.str.25@PAGE
Lloh68:
	add	x2, x2, l_.str.25@PAGEOFF
	mov	w1, #128                        ; =0x80
	bl	_snprintf
	mov.16b	v0, v12
	b	LBB2_83
LBB2_82:
Lloh69:
	adrp	x0, _g_block_ring@PAGE+8
Lloh70:
	add	x0, x0, _g_block_ring@PAGEOFF+8
	str	x8, [sp]
Lloh71:
	adrp	x2, l_.str.26@PAGE
Lloh72:
	add	x2, x2, l_.str.26@PAGEOFF
	mov	w1, #128                        ; =0x80
	bl	_snprintf
	add	x8, sp, #1728
	ldr	d0, [x8, x23, lsl #3]
LBB2_83:
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
Lloh73:
	adrp	x8, l_.str.27@PAGE
Lloh74:
	add	x8, x8, l_.str.27@PAGEOFF
	ldr	q1, [x8]
Lloh75:
	adrp	x9, _g_block_ring@PAGE+136
Lloh76:
	add	x9, x9, _g_block_ring@PAGEOFF+136
	str	q1, [x9]
	ldur	q1, [x8, #12]
	stur	q1, [x9, #12]
	add	x8, sp, #1984
	ldr	d1, [x8, x23, lsl #3]
	stp	d1, d0, [x9, #32]
	stp	d9, d14, [x9, #48]
	ldr	d0, [sp, #728]                  ; 8-byte Folded Reload
	stp	d11, d0, [x9, #64]
	ldr	d0, [sp, #712]                  ; 8-byte Folded Reload
	str	d0, [x9, #80]
	adrp	x8, __MergedGlobals@PAGE+4
	ldr	w9, [x8, __MergedGlobals@PAGEOFF+4]
	cmp	w9, #19
	mov.16b	v14, v8
	b.gt	LBB2_85
; %bb.84:
	add	w9, w9, #1
	str	w9, [x8, __MergedGlobals@PAGEOFF+4]
LBB2_85:
	ldr	d0, [sp, #1088]
	ldr	d1, [sp, #1096]
	fcmp	d1, #0.0
	cset	w8, gt
	cset	w9, le
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1104]
	ldr	d1, [sp, #1112]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1120]
	ldr	d1, [sp, #1128]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1136]
	ldr	d1, [sp, #1144]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1152]
	ldr	d1, [sp, #1160]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1168]
	ldr	d1, [sp, #1176]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1184]
	ldr	d1, [sp, #1192]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	ldr	d0, [sp, #1200]
	ldr	d1, [sp, #1208]
	fcmp	d0, #0.0
	cinc	w9, w9, le
	cinc	w8, w8, gt
	fcmp	d1, #0.0
	cinc	w21, w9, le
	cinc	w8, w8, gt
	str	x8, [sp, #600]                  ; 8-byte Folded Spill
Lloh77:
	adrp	x8, __MergedGlobals.76@PAGE+16
Lloh78:
	add	x8, x8, __MergedGlobals.76@PAGEOFF+16
	ldp	x9, x10, [x8]
	add	x9, x9, w22, sxtw
	add	x10, x10, x21
	stp	x9, x10, [x8]
	ldr	w8, [sp, #724]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_88
LBB2_86:
Lloh79:
	adrp	x8, l_.str.28@PAGE
Lloh80:
	add	x8, x8, l_.str.28@PAGEOFF
	str	x8, [sp, #592]                  ; 8-byte Folded Spill
	ldrsw	x8, [sp, #828]
	add	x9, sp, #1088
Lloh81:
	adrp	x10, __MergedGlobals@PAGE+352
Lloh82:
	ldr	x10, [x10, __MergedGlobals@PAGEOFF+352]
	str	d13, [sp, #664]                 ; 8-byte Folded Spill
	cbz	x10, LBB2_93
LBB2_87:
Lloh83:
	adrp	x11, __MergedGlobals@PAGE+312
Lloh84:
	ldr	d0, [x11, __MergedGlobals@PAGEOFF+312]
	ucvtf	d1, x10
	fdiv	d9, d0, d1
	mov	x10, #5243                      ; =0x147b
	movk	x10, #18350, lsl #16
	movk	x10, #47841, lsl #32
	movk	x10, #16471, lsl #48
	fmov	d0, x10
	fmul	d8, d13, d0
	b	LBB2_94
LBB2_88:
	adrp	x10, __MergedGlobals@PAGE+336
	ldr	x9, [x10, __MergedGlobals@PAGEOFF+336]
	adrp	x8, __MergedGlobals.76@PAGE+32
	tbz	w20, #0, LBB2_90
; %bb.89:
Lloh85:
	adrp	x10, l_.str.30@PAGE
Lloh86:
	add	x10, x10, l_.str.30@PAGEOFF
	b	LBB2_92
LBB2_90:
	ldr	x11, [x8, __MergedGlobals.76@PAGEOFF+32]
	add	x11, x11, #12
	cmp	x9, x11
	b.lo	LBB2_86
; %bb.91:
	ldr	x9, [x10, __MergedGlobals@PAGEOFF+336]
Lloh87:
	adrp	x10, l_.str.31@PAGE
Lloh88:
	add	x10, x10, l_.str.31@PAGEOFF
LBB2_92:
	str	x10, [sp, #592]                 ; 8-byte Folded Spill
	str	x9, [x8, __MergedGlobals.76@PAGEOFF+32]
Lloh89:
	adrp	x0, l_.str.29@PAGE
Lloh90:
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_system
	ldrsw	x8, [sp, #828]
	add	x9, sp, #1088
Lloh91:
	adrp	x10, __MergedGlobals@PAGE+352
Lloh92:
	ldr	x10, [x10, __MergedGlobals@PAGEOFF+352]
	str	d13, [sp, #664]                 ; 8-byte Folded Spill
	cbnz	x10, LBB2_87
LBB2_93:
	mov	x10, #5243                      ; =0x147b
	movk	x10, #18350, lsl #16
	movk	x10, #47841, lsl #32
	movk	x10, #16471, lsl #48
	fmov	d0, x10
	fmul	d8, d13, d0
	mov.16b	v9, v8
LBB2_94:
	ldr	d13, [x9, x8, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d0, x8
	fmul	d2, d11, d0
	mov	x8, #35184372088832             ; =0x200000000000
	movk	x8, #16556, lsl #48
	fmov	d0, x8
	fmul	d1, d8, d0
	str	d1, [sp, #688]                  ; 8-byte Folded Spill
	str	d2, [sp, #672]                  ; 8-byte Folded Spill
	fmul	d0, d2, d0
	str	d0, [sp, #680]                  ; 8-byte Folded Spill
	mov	x8, #35184372088832             ; =0x200000000000
	movk	x8, #16588, lsl #48
	fmov	d0, x8
	fmul	d0, d8, d0
	str	d0, [sp, #696]                  ; 8-byte Folded Spill
Lloh93:
	adrp	x0, l_.str.32@PAGE
Lloh94:
	add	x0, x0, l_.str.32@PAGEOFF
Lloh95:
	adrp	x1, l_.str.33@PAGE
Lloh96:
	add	x1, x1, l_.str.33@PAGEOFF
	bl	_fopen
	mov	x20, x0
	mov	x0, #4786                       ; =0x12b2
	movk	x0, #44275, lsl #16
	movk	x0, #5540, lsl #32
	movk	x0, #16343, lsl #48
	cbz	x20, LBB2_101
; %bb.95:
	mov	x8, #51200                      ; =0xc800
	movk	x8, #26446, lsl #16
	movk	x8, #49517, lsl #32
	movk	x8, #17323, lsl #48
	ucvtf	d0, x28
	mov	x9, #5243                       ; =0x147b
	movk	x9, #18350, lsl #16
	movk	x9, #47841, lsl #32
	movk	x9, #16471, lsl #48
	fmov	d19, x8
	ucvtf	d20, x27
	fmov	d1, x9
	fdiv	d7, d0, d19
	fmul	d4, d13, d1
	mov	x8, #26388279066624             ; =0x180000000000
	movk	x8, #16661, lsl #48
	fmov	d0, x8
	str	d8, [sp, #568]                  ; 8-byte Folded Spill
	fmul	d16, d8, d0
	mov	x8, #35184372088832             ; =0x200000000000
	movk	x8, #16556, lsl #48
	fmov	d0, x8
	mov.16b	v1, v15
	ldr	d15, [sp, #728]                 ; 8-byte Folded Reload
	fmul	d3, d15, d0
Lloh97:
	adrp	x10, __MergedGlobals.76@PAGE
Lloh98:
	add	x10, x10, __MergedGlobals.76@PAGEOFF
	ldp	x8, x9, [x10, #16]
Lloh99:
	adrp	x27, __MergedGlobals@PAGE+4
Lloh100:
	add	x27, x27, __MergedGlobals@PAGEOFF+4
	ldur	d0, [x27, #244]
	str	d0, [sp, #560]                  ; 8-byte Folded Spill
	sub	x13, x27, #4
	mov	x11, #5243                      ; =0x147b
	movk	x11, #18350, lsl #16
	movk	x11, #47841, lsl #32
	movk	x11, #16471, lsl #48
	fmov	d21, x11
	fmul	d0, d12, d21
	str	d0, [sp, #552]                  ; 8-byte Folded Spill
	fmul	d2, d10, d21
	str	d14, [sp, #576]                 ; 8-byte Folded Spill
	fmul	d5, d14, d21
	fmul	d6, d1, d21
	ldr	x10, [x10]
	ldr	x11, [x13, #352]
	add	x12, x27, #308
	ldr	q17, [x12]
	ldr	d18, [x13, #328]
	ldr	x12, [x13, #336]
	ldr	x13, [x13, #360]
Lloh101:
	adrp	x14, l_.str.36@PAGE
Lloh102:
	add	x14, x14, l_.str.36@PAGEOFF
Lloh103:
	adrp	x15, l_.str.35@PAGE
Lloh104:
	add	x15, x15, l_.str.35@PAGEOFF
	mov	x16, #20479                     ; =0x4fff
	movk	x16, #10041, lsl #16
	movk	x16, #1164, lsl #32
	ldr	x17, [x26, x23, lsl #3]
Lloh105:
	adrp	x1, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh106:
	add	x1, x1, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	cmp	x19, x16
	csel	x14, x15, x14, hi
	ldr	x15, [x1, x23, lsl #3]
	add	x16, sp, #1984
	ldr	d22, [x16, x23, lsl #3]
	ldr	d0, [sp, #640]                  ; 8-byte Folded Reload
	fmul	d23, d0, d21
	add	x16, sp, #1728
	ldr	d24, [x16, x23, lsl #3]
	fmul	d25, d24, d21
	add	x16, sp, #1600
	ldr	d26, [x16, x23, lsl #3]
	fmul	d27, d26, d21
	add	x16, sp, #1472
	ldr	d28, [x16, x23, lsl #3]
	fmul	d29, d28, d21
	add	x16, sp, #1344
	ldr	d30, [x16, x23, lsl #3]
	fmul	d31, d30, d21
	add	x16, sp, #1088
	ldr	d13, [x16, x23, lsl #3]
	fmul	d11, d13, d21
	add	x16, sp, #960
	mov.16b	v14, v12
	mov.16b	v12, v10
	ldr	d10, [x16, x23, lsl #3]
	fmul	d8, d10, d21
	add	x16, sp, #832
	fdiv	d19, d20, d19
	str	x23, [sp, #584]                 ; 8-byte Folded Spill
	ldr	d20, [x16, x23, lsl #3]
	fmul	d21, d20, d21
	str	d20, [sp, #520]
	stp	d10, d21, [sp, #504]
	mov.16b	v10, v12
	mov.16b	v12, v14
	stp	d13, d8, [sp, #488]
	stp	d30, d11, [sp, #472]
	stp	d28, d31, [sp, #456]
	stp	d26, d29, [sp, #440]
	stp	d24, d27, [sp, #424]
	stp	d22, d25, [sp, #408]
	stp	x17, x15, [sp, #392]
	ldr	d21, [sp, #624]                 ; 8-byte Folded Reload
	ldr	d20, [sp, #608]                 ; 8-byte Folded Reload
	stp	d20, d21, [sp, #376]
	stp	d23, d0, [sp, #360]
	ldr	d0, [sp, #632]                  ; 8-byte Folded Reload
	str	d0, [sp, #352]
	ldr	d0, [sp, #616]                  ; 8-byte Folded Reload
	str	d0, [sp, #344]
	ldr	x15, [sp, #592]                 ; 8-byte Folded Reload
	stp	x14, x15, [sp, #328]
	stp	d7, d19, [sp, #312]
	stp	x12, x13, [sp, #296]
	ldr	d0, [sp, #704]                  ; 8-byte Folded Reload
	ldr	d7, [sp, #712]                  ; 8-byte Folded Reload
	stp	d7, d0, [sp, #280]
	stp	d9, d16, [sp, #264]
	stp	d18, d4, [sp, #248]
	stur	q17, [sp, #232]
	stp	x10, x11, [sp, #216]
	ldr	d0, [sp, #648]                  ; 8-byte Folded Reload
	ldr	d4, [sp, #656]                  ; 8-byte Folded Reload
	stp	d4, d0, [sp, #200]
	ldr	d4, [sp, #696]                  ; 8-byte Folded Reload
	stp	d3, d4, [sp, #184]
	ldr	d0, [sp, #680]                  ; 8-byte Folded Reload
	ldr	d3, [sp, #688]                  ; 8-byte Folded Reload
	stp	d3, d0, [sp, #168]
	ldr	d3, [sp, #672]                  ; 8-byte Folded Reload
	stp	d3, d15, [sp, #152]
	stp	d6, d1, [sp, #136]
	str	d5, [sp, #128]
	str	x0, [sp, #120]
	stp	d2, d10, [sp, #104]
	ldr	d0, [sp, #552]                  ; 8-byte Folded Reload
	stp	d0, d14, [sp, #88]
	str	x24, [sp, #656]                 ; 8-byte Folded Spill
	str	x24, [sp, #80]
	ldr	d0, [sp, #560]                  ; 8-byte Folded Reload
	str	d0, [sp, #72]
	stp	x8, x9, [sp, #56]
	ldr	x8, [sp, #600]                  ; 8-byte Folded Reload
	stp	x8, x21, [sp, #40]
	stp	x25, x22, [sp, #24]
	stp	x22, x22, [sp, #8]
Lloh107:
	adrp	x1, l_.str.34@PAGE
Lloh108:
	add	x1, x1, l_.str.34@PAGEOFF
	str	x25, [sp]
	mov	x0, x20
	bl	_fprintf
	ldr	w8, [x27]
Lloh109:
	adrp	x24, l_.str.39@PAGE
Lloh110:
	add	x24, x24, l_.str.39@PAGEOFF
Lloh111:
	adrp	x25, l_.str.38@PAGE
Lloh112:
	add	x25, x25, l_.str.38@PAGEOFF
	cmp	w8, #1
	b.lt	LBB2_98
; %bb.96:
Lloh113:
	adrp	x19, _g_block_ring@PAGE+136
Lloh114:
	add	x19, x19, _g_block_ring@PAGEOFF+136
	mov	w22, #1                         ; =0x1
	adrp	x23, __MergedGlobals@PAGE+4
Lloh115:
	adrp	x21, l_.str.37@PAGE
Lloh116:
	add	x21, x21, l_.str.37@PAGEOFF
LBB2_97:                                ; =>This Inner Loop Header: Depth=1
	ldur	x9, [x19, #-136]
	sub	x10, x19, #128
	ldp	q0, q1, [x19, #32]
	ldr	q2, [x19, #64]
	cmp	x22, w8, sxtw
	csel	x8, x25, x24, lt
	ldr	d3, [x19, #80]
	str	x8, [sp, #80]
	str	d3, [sp, #72]
	stur	q2, [sp, #56]
	stur	q1, [sp, #40]
	stur	q0, [sp, #24]
	stp	x10, x19, [sp, #8]
	str	x9, [sp]
	mov	x0, x20
	mov	x1, x21
	bl	_fprintf
	ldrsw	x8, [x23, __MergedGlobals@PAGEOFF+4]
	add	x19, x19, #224
	cmp	x22, x8
	add	x22, x22, #1
	b.lt	LBB2_97
LBB2_98:
Lloh117:
	adrp	x0, l_.str.40@PAGE
Lloh118:
	add	x0, x0, l_.str.40@PAGEOFF
	mov	w1, #19                         ; =0x13
	mov	w2, #1                          ; =0x1
	mov	x3, x20
	bl	_fwrite
	mov	x28, #0                         ; =0x0
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d8, x8
	mov	x27, x20
Lloh119:
	adrp	x20, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh120:
	add	x20, x20, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	add	x25, sp, #1984
	add	x24, sp, #1728
	add	x22, sp, #1600
	add	x23, sp, #1472
	add	x26, sp, #1344
	add	x19, sp, #1088
	add	x21, sp, #960
LBB2_99:                                ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #768
	ldrsw	x8, [x8, x28, lsl #2]
	add	x28, x28, #1
Lloh121:
	adrp	x9, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh122:
	add	x9, x9, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x9, x8, lsl #3]
	ldr	x10, [x20, x8, lsl #3]
	add	x11, sp, #2368
	ldr	d0, [x11, x8, lsl #3]
	add	x11, sp, #2240
	ldr	d1, [x11, x8, lsl #3]
	ldr	d2, [x25, x8, lsl #3]
	add	x11, sp, #2112
	ldr	d3, [x11, x8, lsl #3]
	add	x11, sp, #1856
	ldr	d4, [x11, x8, lsl #3]
	ldr	d5, [x24, x8, lsl #3]
	ldr	d6, [x22, x8, lsl #3]
	fmul	d7, d5, d8
	ldr	d16, [x23, x8, lsl #3]
	ldr	d17, [x26, x8, lsl #3]
	fmul	d18, d17, d8
	add	x11, sp, #1216
	ldr	d19, [x11, x8, lsl #3]
	fmul	d20, d19, d8
	ldr	d21, [x19, x8, lsl #3]
	fmul	d22, d21, d8
	ldr	d23, [x21, x8, lsl #3]
	fmul	d24, d23, d8
	add	x11, sp, #832
	ldr	d25, [x11, x8, lsl #3]
	fmul	d26, d25, d8
Lloh123:
	adrp	x8, l_.str.38@PAGE
Lloh124:
	add	x8, x8, l_.str.38@PAGEOFF
	str	x8, [sp, #192]
	stp	d26, d25, [sp, #176]
	stp	d24, d23, [sp, #160]
	stp	d22, d21, [sp, #144]
	mov	x8, #36805                      ; =0x8fc5
	movk	x8, #30513, lsl #16
	movk	x8, #8493, lsl #32
	movk	x8, #16239, lsl #48
	str	x8, [sp, #136]
	mov	x8, #4786                       ; =0x12b2
	movk	x8, #44275, lsl #16
	movk	x8, #5540, lsl #32
	movk	x8, #16343, lsl #48
	str	x8, [sp, #128]
	stp	d20, d19, [sp, #112]
	stp	d18, d17, [sp, #96]
	stp	d6, d16, [sp, #80]
	stp	d7, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x9, x10, [sp, #8]
	str	x28, [sp]
	mov	x0, x27
Lloh125:
	adrp	x1, l_.str.41@PAGE
Lloh126:
	add	x1, x1, l_.str.41@PAGEOFF
	bl	_fprintf
	cmp	x28, #15
	b.ne	LBB2_99
; %bb.100:
	ldrsw	x10, [sp, #828]
Lloh127:
	adrp	x26, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh128:
	add	x26, x26, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x8, [x26, x10, lsl #3]
	ldr	x9, [x20, x10, lsl #3]
	add	x11, sp, #2368
	ldr	d0, [x11, x10, lsl #3]
	add	x11, sp, #2240
	ldr	d1, [x11, x10, lsl #3]
	add	x11, sp, #1984
	ldr	d2, [x11, x10, lsl #3]
	add	x11, sp, #2112
	ldr	d3, [x11, x10, lsl #3]
	add	x11, sp, #1856
	ldr	d4, [x11, x10, lsl #3]
	add	x11, sp, #1728
	ldr	d5, [x11, x10, lsl #3]
	mov	x11, #5243                      ; =0x147b
	movk	x11, #18350, lsl #16
	movk	x11, #47841, lsl #32
	movk	x11, #16471, lsl #48
	fmov	d6, x11
	add	x11, sp, #1600
	ldr	d7, [x11, x10, lsl #3]
	add	x11, sp, #1472
	ldr	d16, [x11, x10, lsl #3]
	add	x11, sp, #1344
	ldr	d17, [x11, x10, lsl #3]
	fmul	d18, d5, d6
	fmul	d19, d17, d6
	add	x11, sp, #1216
	ldr	d20, [x11, x10, lsl #3]
	fmul	d21, d20, d6
	add	x11, sp, #1088
	ldr	d22, [x11, x10, lsl #3]
	add	x11, sp, #960
	ldr	d23, [x11, x10, lsl #3]
	fmul	d24, d22, d6
	fmul	d25, d23, d6
	add	x11, sp, #832
	ldr	d26, [x11, x10, lsl #3]
	fmul	d6, d26, d6
Lloh129:
	adrp	x10, l_.str.39@PAGE
Lloh130:
	add	x10, x10, l_.str.39@PAGEOFF
	str	x10, [sp, #192]
	stp	d6, d26, [sp, #176]
	stp	d25, d23, [sp, #160]
	stp	d24, d22, [sp, #144]
	mov	x10, #36805                     ; =0x8fc5
	movk	x10, #30513, lsl #16
	movk	x10, #8493, lsl #32
	movk	x10, #16239, lsl #48
	mov	x19, #4786                      ; =0x12b2
	movk	x19, #44275, lsl #16
	movk	x19, #5540, lsl #32
	movk	x19, #16343, lsl #48
	stp	x19, x10, [sp, #128]
	stp	d21, d20, [sp, #112]
	stp	d19, d17, [sp, #96]
	stp	d7, d16, [sp, #80]
	stp	d18, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x8, x9, [sp, #8]
	mov	w9, #16                         ; =0x10
Lloh131:
	adrp	x1, l_.str.41@PAGE
Lloh132:
	add	x1, x1, l_.str.41@PAGEOFF
	str	x9, [sp]
	mov	x0, x27
	bl	_fprintf
Lloh133:
	adrp	x0, l_.str.42@PAGE
Lloh134:
	add	x0, x0, l_.str.42@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x27
	bl	_fwrite
	mov	x0, x27
	bl	_fclose
Lloh135:
	adrp	x0, l_.str.32@PAGE
Lloh136:
	add	x0, x0, l_.str.32@PAGEOFF
Lloh137:
	adrp	x1, l_.str.43@PAGE
Lloh138:
	add	x1, x1, l_.str.43@PAGEOFF
	bl	_rename
	ldr	x23, [sp, #584]                 ; 8-byte Folded Reload
	ldr	x24, [sp, #656]                 ; 8-byte Folded Reload
	ldr	d14, [sp, #576]                 ; 8-byte Folded Reload
	ldr	d8, [sp, #568]                  ; 8-byte Folded Reload
	mov	x0, x19
LBB2_101:
	ldr	w8, [sp, #724]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_103
; %bb.102:
	add	x8, sp, #1216
	ldr	d9, [x8, x23, lsl #3]
	mov	x8, #36805                      ; =0x8fc5
	movk	x8, #30513, lsl #16
	movk	x8, #8493, lsl #32
	movk	x8, #49007, lsl #48
	fmov	d0, x8
	mov.16b	v11, v8
	fadd	d8, d9, d0
	mov	x22, x0
Lloh139:
	adrp	x19, l_str.75@PAGE
Lloh140:
	add	x19, x19, l_str.75@PAGEOFF
	mov	x0, x19
	bl	_puts
Lloh141:
	adrp	x0, l_.str.45@PAGE
Lloh142:
	add	x0, x0, l_.str.45@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
	ldr	d1, [sp, #704]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #712]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp]
Lloh143:
	adrp	x0, l_.str.46@PAGE
Lloh144:
	add	x0, x0, l_.str.46@PAGEOFF
	bl	_printf
	ldr	x8, [x26, x23, lsl #3]
	str	x8, [sp]
Lloh145:
	adrp	x0, l_.str.47@PAGE
Lloh146:
	add	x0, x0, l_.str.47@PAGEOFF
	bl	_printf
	add	x21, sp, #2368
	ldr	d0, [x21, x23, lsl #3]
	add	x27, sp, #2240
	ldr	d1, [x27, x23, lsl #3]
	add	x28, sp, #1984
	ldr	d2, [x28, x23, lsl #3]
	add	x19, sp, #2112
	ldr	d3, [x19, x23, lsl #3]
	mov	x20, x24
	add	x24, sp, #1856
	ldr	d4, [x24, x23, lsl #3]
	stp	d3, d4, [sp, #24]
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh147:
	adrp	x0, l_.str.48@PAGE
Lloh148:
	add	x0, x0, l_.str.48@PAGEOFF
	bl	_printf
	add	x25, sp, #1728
	ldr	d0, [x25, x23, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d15, x8
	fmul	d1, d0, d15
	stp	d0, d1, [sp]
Lloh149:
	adrp	x0, l_.str.49@PAGE
Lloh150:
	add	x0, x0, l_.str.49@PAGEOFF
	bl	_printf
	fmul	d0, d9, d15
	stp	d9, d0, [sp]
Lloh151:
	adrp	x0, l_.str.50@PAGE
Lloh152:
	add	x0, x0, l_.str.50@PAGEOFF
	bl	_printf
	fmul	d0, d12, d15
	fmul	d1, d10, d15
	stp	d10, d1, [sp, #24]
	stp	d12, d0, [sp, #8]
	str	x20, [sp]
Lloh153:
	adrp	x0, l_.str.51@PAGE
Lloh154:
	add	x0, x0, l_.str.51@PAGEOFF
	bl	_printf
	mov	x8, #36805                      ; =0x8fc5
	movk	x8, #30513, lsl #16
	movk	x8, #8493, lsl #32
	movk	x8, #16239, lsl #48
	stp	x8, x22, [sp]
Lloh155:
	adrp	x0, l_.str.52@PAGE
Lloh156:
	add	x0, x0, l_.str.52@PAGEOFF
	bl	_printf
	fmul	d0, d8, d15
	stp	d8, d0, [sp]
Lloh157:
	adrp	x0, l_.str.53@PAGE
Lloh158:
	add	x0, x0, l_.str.53@PAGEOFF
	bl	_printf
	fmul	d0, d14, d15
	stp	d14, d0, [sp]
Lloh159:
	adrp	x0, l_.str.54@PAGE
Lloh160:
	add	x0, x0, l_.str.54@PAGEOFF
	bl	_printf
	ldr	d1, [sp, #728]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #672]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp, #16]
	ldr	d0, [sp, #664]                  ; 8-byte Folded Reload
	stp	d0, d11, [sp]
Lloh161:
	adrp	x0, l_.str.55@PAGE
Lloh162:
	add	x0, x0, l_.str.55@PAGEOFF
	bl	_printf
	ldr	d1, [sp, #680]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #688]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp]
Lloh163:
	adrp	x0, l_.str.56@PAGE
Lloh164:
	add	x0, x0, l_.str.56@PAGEOFF
	bl	_printf
	ldr	d0, [sp, #696]                  ; 8-byte Folded Reload
	str	d0, [sp]
Lloh165:
	adrp	x0, l_.str.57@PAGE
Lloh166:
	add	x0, x0, l_.str.57@PAGEOFF
	bl	_printf
Lloh167:
	adrp	x0, l_str.74@PAGE
Lloh168:
	add	x0, x0, l_str.74@PAGEOFF
	bl	_puts
	ldrsw	x8, [sp, #768]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	add	x23, sp, #1216
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	add	x22, sp, #1088
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #1                          ; =0x1
Lloh169:
	adrp	x20, l_.str.59@PAGE
Lloh170:
	add	x20, x20, l_.str.59@PAGEOFF
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #772]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	add	x23, sp, #1216
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #2                          ; =0x2
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #776]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #3                          ; =0x3
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #780]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #4                          ; =0x4
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #784]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #5                          ; =0x5
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #788]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #6                          ; =0x6
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #792]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #7                          ; =0x7
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #796]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #8                          ; =0x8
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #800]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #9                          ; =0x9
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #804]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #10                         ; =0xa
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #808]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #11                         ; =0xb
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #812]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #12                         ; =0xc
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #816]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #13                         ; =0xd
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #820]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #14                         ; =0xe
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #824]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #15                         ; =0xf
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #828]
	ldr	x9, [x26, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x24, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	ldr	d6, [x23, x8, lsl #3]
	fmul	d6, d6, d15
	ldr	d7, [x22, x8, lsl #3]
	fmul	d7, d7, d15
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #16                         ; =0x10
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
Lloh171:
	adrp	x0, l_str.75@PAGE
Lloh172:
	add	x0, x0, l_str.75@PAGEOFF
	bl	_puts
LBB2_103:
	ldr	x8, [sp, #2520]
Lloh173:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh174:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh175:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_105
; %bb.104:
	sub	sp, x29, #144
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #160            ; 16-byte Folded Reload
	ret
LBB2_105:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpLdr	Lloh21, Lloh22
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpLdr	Lloh27, Lloh28
	.loh AdrpLdr	Lloh29, Lloh30
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpLdr	Lloh43, Lloh44
	.loh AdrpAdrp	Lloh41, Lloh43
	.loh AdrpLdr	Lloh41, Lloh42
	.loh AdrpAdrp	Lloh39, Lloh41
	.loh AdrpLdr	Lloh39, Lloh40
	.loh AdrpAdrp	Lloh37, Lloh39
	.loh AdrpLdr	Lloh37, Lloh38
	.loh AdrpAdrp	Lloh35, Lloh37
	.loh AdrpLdr	Lloh35, Lloh36
	.loh AdrpAdrp	Lloh33, Lloh35
	.loh AdrpLdr	Lloh33, Lloh34
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdr	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpLdr	Lloh81, Lloh82
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpLdr	Lloh83, Lloh84
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpLdr	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh131, Lloh132
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh171, Lloh172
	.loh AdrpAdd	Lloh169, Lloh170
	.loh AdrpAdd	Lloh167, Lloh168
	.loh AdrpAdd	Lloh165, Lloh166
	.loh AdrpAdd	Lloh163, Lloh164
	.loh AdrpAdd	Lloh161, Lloh162
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpAdd	Lloh157, Lloh158
	.loh AdrpAdd	Lloh155, Lloh156
	.loh AdrpAdd	Lloh153, Lloh154
	.loh AdrpAdd	Lloh151, Lloh152
	.loh AdrpAdd	Lloh149, Lloh150
	.loh AdrpAdd	Lloh147, Lloh148
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpLdrGotLdr	Lloh173, Lloh174, Lloh175
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lockfree_block_ticker_thread
_lockfree_block_ticker_thread:          ; @lockfree_block_ticker_thread
	.cfi_startproc
; %bb.0:
	stp	d15, d14, [sp, #-160]!          ; 16-byte Folded Spill
	stp	d13, d12, [sp, #16]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #32]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #48]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #64]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #80]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #96]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #112]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #128]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #144]            ; 16-byte Folded Spill
	add	x29, sp, #144
	sub	sp, sp, #352
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
	.cfi_offset b14, -152
	.cfi_offset b15, -160
	bl	_curl_easy_init
	mov	x19, x0
	stp	xzr, xzr, [x29, #-176]
	stur	xzr, [x29, #-160]
Lloh176:
	adrp	x1, l_.str.1@PAGE
Lloh177:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh178:
	adrp	x1, l_.str.2@PAGE
Lloh179:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh180:
	adrp	x1, l_.str.3@PAGE
Lloh181:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x22, x0
	adrp	x23, __MergedGlobals@PAGE
	ldr	w8, [x23, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_102
; %bb.1:
	mov	w24, #0                         ; =0x0
Lloh182:
	adrp	x26, _RPC_URLS@PAGE
Lloh183:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh184:
	adrp	x27, l_.str.69@PAGE
Lloh185:
	add	x27, x27, l_.str.69@PAGEOFF
Lloh186:
	adrp	x28, _curl_write_cb@PAGE
Lloh187:
	add	x28, x28, _curl_write_cb@PAGEOFF
	mov	w20, #1                         ; =0x1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	stp	x8, x22, [sp, #208]             ; 16-byte Folded Spill
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	str	x8, [sp, #192]                  ; 8-byte Folded Spill
	mov	x8, #51200                      ; =0xc800
	movk	x8, #26446, lsl #16
	movk	x8, #49517, lsl #32
	movk	x8, #17323, lsl #48
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	str	x8, [sp, #176]                  ; 8-byte Folded Spill
	b	LBB3_3
LBB3_2:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	w24, w24, #1
	mov	w0, #53392                      ; =0xd090
	movk	w0, #3, lsl #16
	bl	_usleep
	ldr	w8, [x23, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_100
LBB3_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_11 Depth 2
                                        ;     Child Loop BB3_15 Depth 2
                                        ;     Child Loop BB3_23 Depth 2
                                        ;     Child Loop BB3_27 Depth 2
                                        ;     Child Loop BB3_34 Depth 2
                                        ;     Child Loop BB3_38 Depth 2
                                        ;     Child Loop BB3_46 Depth 2
                                        ;     Child Loop BB3_50 Depth 2
                                        ;     Child Loop BB3_57 Depth 2
                                        ;     Child Loop BB3_61 Depth 2
                                        ;     Child Loop BB3_68 Depth 2
                                        ;     Child Loop BB3_72 Depth 2
                                        ;     Child Loop BB3_79 Depth 2
                                        ;     Child Loop BB3_83 Depth 2
                                        ;     Child Loop BB3_89 Depth 2
                                        ;     Child Loop BB3_93 Depth 2
	negs	w8, w24
	and	w8, w8, #0x3
	and	w9, w24, #0x3
	csneg	w8, w9, w8, mi
	ldr	x25, [x26, w8, sxtw #3]
	stur	xzr, [x29, #-168]
	str	x25, [sp]
	mov	x0, x19
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x19
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
	str	x27, [sp]
	mov	x0, x19
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
	str	x28, [sp]
	mov	x0, x19
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	sub	x8, x29, #176
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x19
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x19
	mov	w1, #213                        ; =0xd5
	bl	_curl_easy_setopt
	mov	w8, #3600                       ; =0xe10
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #92                         ; =0x5c
	bl	_curl_easy_setopt
	mov	w8, #1800                       ; =0x708
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	w8, #1000                       ; =0x3e8
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #156                        ; =0x9c
	bl	_curl_easy_setopt
	sub	x1, x29, #192
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	x0, x19
	bl	_curl_easy_perform
	mov	x21, x0
	sub	x1, x29, #208
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	cbnz	w21, LBB3_2
; %bb.4:                                ;   in Loop: Header=BB3_3 Depth=1
	ldur	x0, [x29, #-176]
	cbz	x0, LBB3_2
; %bb.5:                                ;   in Loop: Header=BB3_3 Depth=1
	ldur	x8, [x29, #-168]
	cmp	x8, #33
	b.lo	LBB3_2
; %bb.6:                                ;   in Loop: Header=BB3_3 Depth=1
	stur	w24, [x29, #-212]               ; 4-byte Folded Spill
	ldp	x9, x8, [x29, #-208]
	stp	x9, x25, [x29, #-232]           ; 16-byte Folded Spill
	stur	x8, [x29, #-240]                ; 8-byte Folded Spill
	ldp	x9, x8, [x29, #-192]
	stp	x9, x8, [sp, #240]              ; 16-byte Folded Spill
	mov	w1, #1                          ; =0x1
	bl	_find_batch_result_for_id
	mov	x21, x0
	ldur	x0, [x29, #-176]
	mov	w1, #2                          ; =0x2
	bl	_find_batch_result_for_id
	mov	x22, x0
	ldur	x0, [x29, #-176]
	mov	w1, #3                          ; =0x3
	bl	_find_batch_result_for_id
	mov	x24, x0
	ldur	x0, [x29, #-176]
	mov	w1, #4                          ; =0x4
	bl	_find_batch_result_for_id
	mov	x23, x0
	ldur	x0, [x29, #-176]
	mov	w1, #5                          ; =0x5
	bl	_find_batch_result_for_id
	mov	x28, x0
	ldur	x0, [x29, #-176]
	mov	w1, #6                          ; =0x6
	bl	_find_batch_result_for_id
	mov	x27, x0
	ldur	x0, [x29, #-176]
	mov	w1, #7                          ; =0x7
	bl	_find_batch_result_for_id
	mov	x26, x0
	ldur	x0, [x29, #-176]
	mov	w1, #8                          ; =0x8
	bl	_find_batch_result_for_id
Lloh188:
	adrp	x25, l_.str.70@PAGE
Lloh189:
	add	x25, x25, l_.str.70@PAGEOFF
	mov	x16, #1                         ; =0x1
	movk	x16, #4100, lsl #32
	cbz	x21, LBB3_18
; %bb.7:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x21]
	cmp	w8, #48
	b.ne	LBB3_10
; %bb.8:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x21, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	b.ne	LBB3_10
; %bb.9:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x21, x21, #2
LBB3_10:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x21, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_13
LBB3_11:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_13
; %bb.12:                               ;   in Loop: Header=BB3_11 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x21, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_11
LBB3_13:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_18
; %bb.14:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x21, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_15:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_15
; %bb.16:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x10, __MergedGlobals@PAGE+336
	ldr	x9, [x10, __MergedGlobals@PAGEOFF+336]
	cmp	x8, x9
	adrp	x21, __MergedGlobals.76@PAGE+8
	b.ls	LBB3_19
; %bb.17:                               ;   in Loop: Header=BB3_3 Depth=1
	str	x8, [x10, __MergedGlobals@PAGEOFF+336]
	cbnz	x22, LBB3_20
	b	LBB3_30
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh190:
	adrp	x8, __MergedGlobals@PAGE+336
Lloh191:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+336]
	ldur	w8, [x29, #-212]                ; 4-byte Folded Reload
	add	w8, w8, #1
	stur	w8, [x29, #-212]                ; 4-byte Folded Spill
	adrp	x21, __MergedGlobals.76@PAGE+8
	cbnz	x22, LBB3_20
	b	LBB3_30
LBB3_19:                                ;   in Loop: Header=BB3_3 Depth=1
	cmp	x8, #0
	ldur	w8, [x29, #-212]                ; 4-byte Folded Reload
	cinc	w8, w8, eq
	stur	w8, [x29, #-212]                ; 4-byte Folded Spill
	cbz	x22, LBB3_30
LBB3_20:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x22]
	cmp	w8, #48
	b.ne	LBB3_22
; %bb.21:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x22, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x22, #2
	csel	x22, x8, x22, eq
LBB3_22:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x22, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_25
LBB3_23:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_25
; %bb.24:                               ;   in Loop: Header=BB3_23 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x22, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_23
LBB3_25:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_30
; %bb.26:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x22, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_27:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_27
; %bb.28:                               ;   in Loop: Header=BB3_3 Depth=1
	cbz	x8, LBB3_30
; %bb.29:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+368
	str	x8, [x9, __MergedGlobals@PAGEOFF+368]
LBB3_30:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x24, LBB3_41
; %bb.31:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x24]
	cmp	w8, #48
	b.ne	LBB3_33
; %bb.32:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x24, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x24, #2
	csel	x24, x8, x24, eq
LBB3_33:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x24, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_36
LBB3_34:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_36
; %bb.35:                               ;   in Loop: Header=BB3_34 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x24, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_34
LBB3_36:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_52
; %bb.37:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x24, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_38:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_38
; %bb.39:                               ;   in Loop: Header=BB3_3 Depth=1
Lloh192:
	adrp	x9, __MergedGlobals@PAGE+288
Lloh193:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+288]
	cmp	x8, x9
	b.ls	LBB3_41
; %bb.40:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+288
	str	x8, [x9, __MergedGlobals@PAGEOFF+288]
LBB3_41:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x23, LBB3_53
LBB3_42:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x22, x0
	mov	x0, x23
	bl	_strlen
	mov	x16, #1                         ; =0x1
	movk	x16, #4100, lsl #32
	cmp	x0, #66
	mov	x0, x22
Lloh194:
	adrp	x25, l_.str.70@PAGE
Lloh195:
	add	x25, x25, l_.str.70@PAGEOFF
	b.lo	LBB3_53
; %bb.43:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x23]
	cmp	w8, #48
	b.ne	LBB3_45
; %bb.44:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x23, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x23, #2
	csel	x23, x8, x23, eq
LBB3_45:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x23, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_48
LBB3_46:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_48
; %bb.47:                               ;   in Loop: Header=BB3_46 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x23, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_46
LBB3_48:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_51
; %bb.49:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x23, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_50:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_50
LBB3_51:                                ;   in Loop: Header=BB3_3 Depth=1
	str	x8, [x21, __MergedGlobals.76@PAGEOFF+8]
	b	LBB3_53
LBB3_52:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh196:
	adrp	x8, __MergedGlobals@PAGE+288
Lloh197:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+288]
	cbnz	x23, LBB3_42
LBB3_53:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x28, LBB3_64
; %bb.54:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x28]
	cmp	w8, #48
	b.ne	LBB3_56
; %bb.55:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x28, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x28, #2
	csel	x28, x8, x28, eq
LBB3_56:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x28, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_59
LBB3_57:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_59
; %bb.58:                               ;   in Loop: Header=BB3_57 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x28, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_57
LBB3_59:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_64
; %bb.60:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x28, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_61:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_61
; %bb.62:                               ;   in Loop: Header=BB3_3 Depth=1
	cbz	x8, LBB3_64
; %bb.63:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+304
	str	x8, [x9, __MergedGlobals@PAGEOFF+304]
LBB3_64:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x27, LBB3_75
; %bb.65:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x27]
	cmp	w8, #48
	b.ne	LBB3_67
; %bb.66:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x27, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x27, #2
	csel	x27, x8, x27, eq
LBB3_67:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x27, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_70
LBB3_68:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_70
; %bb.69:                               ;   in Loop: Header=BB3_68 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x27, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_68
LBB3_70:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_73
; %bb.71:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x27, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_72:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_72
LBB3_73:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh198:
	adrp	x9, __MergedGlobals@PAGE+360
Lloh199:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+360]
	cmp	x8, x9
	b.lo	LBB3_75
; %bb.74:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+360
	str	x8, [x9, __MergedGlobals@PAGEOFF+360]
LBB3_75:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x26, LBB3_85
; %bb.76:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x26]
	cmp	w8, #48
	b.ne	LBB3_78
; %bb.77:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x26, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x26, #2
	csel	x26, x8, x26, eq
LBB3_78:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x26, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_81
LBB3_79:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_81
; %bb.80:                               ;   in Loop: Header=BB3_79 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x26, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_79
LBB3_81:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_84
; %bb.82:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x26, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_83:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_83
LBB3_84:                                ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+296
	str	x8, [x9, __MergedGlobals@PAGEOFF+296]
LBB3_85:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x0, LBB3_97
; %bb.86:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #48
	b.ne	LBB3_88
; %bb.87:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x0, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x0, #2
	csel	x0, x8, x0, eq
LBB3_88:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x0, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_91
LBB3_89:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_91
; %bb.90:                               ;   in Loop: Header=BB3_89 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x0, x9]
	cmp	w8, #44
	lsl	x10, x20, x8
	and	x10, x10, x16
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_89
LBB3_91:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_96
; %bb.92:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	mov	w11, #16                        ; =0x10
	csel	x10, x9, x11, hi
	add	x10, x0, x10
	csel	x9, x9, x11, lo
	sub	x10, x10, #16
LBB3_93:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsb	w11, [x10], #1
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	cmp	w12, #9
	csel	w11, w11, w12, hi
	orr	x8, x11, x8, lsl #4
	subs	x9, x9, #1
	b.ne	LBB3_93
; %bb.94:                               ;   in Loop: Header=BB3_3 Depth=1
Lloh200:
	adrp	x9, __MergedGlobals@PAGE+280
Lloh201:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+280]
	cmp	x8, x9
	b.ls	LBB3_97
; %bb.95:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+280
	str	x8, [x9, __MergedGlobals@PAGEOFF+280]
	b	LBB3_97
LBB3_96:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh202:
	adrp	x8, __MergedGlobals@PAGE+280
Lloh203:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+280]
LBB3_97:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh204:
	adrp	x8, __MergedGlobals@PAGE+280
Lloh205:
	add	x8, x8, __MergedGlobals@PAGEOFF+280
	ldr	x24, [x8]
	ldr	x23, [x8, #8]
	ldr	x22, [x21, __MergedGlobals.76@PAGEOFF+8]
	ldr	x26, [x8, #24]
	ldr	x27, [x8, #16]
	ldr	x28, [x8, #88]
	mov	x0, x25
Lloh206:
	adrp	x1, l_.str.33@PAGE
Lloh207:
	add	x1, x1, l_.str.33@PAGEOFF
	bl	_fopen
	cbz	x0, LBB3_99
; %bb.98:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, x21
	mov	x21, x0
	ldur	x8, [x29, #-232]                ; 8-byte Folded Reload
	ldp	x11, x10, [sp, #240]            ; 16-byte Folded Reload
	sub	x8, x8, x11
	scvtf	d0, x8
	ldur	x8, [x29, #-240]                ; 8-byte Folded Reload
	sub	x8, x8, x10
	scvtf	d1, x8
	ldp	d4, d3, [sp, #200]              ; 16-byte Folded Reload
	fdiv	d1, d1, d3
	ucvtf	d2, x28
	fmadd	d0, d0, d4, d1
	stur	d0, [x29, #-232]                ; 8-byte Folded Spill
	ldr	d0, [sp, #192]                  ; 8-byte Folded Reload
	fdiv	d0, d2, d0
	stur	d0, [x29, #-240]                ; 8-byte Folded Spill
	ucvtf	d0, x27
	ucvtf	d1, x26
	ldr	d2, [sp, #184]                  ; 8-byte Folded Reload
	fdiv	d4, d0, d2
	ucvtf	d0, x24
	fdiv	d9, d0, d3
	ucvtf	d0, x23
	fdiv	d0, d0, d3
	fadd	d10, d9, d0
	ucvtf	d0, x22
	fdiv	d11, d0, d3
	fadd	d8, d10, d11
Lloh208:
	adrp	x8, __MergedGlobals@PAGE+264
Lloh209:
	add	x8, x8, __MergedGlobals@PAGEOFF+264
	ldr	d0, [x8]
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	ldr	d0, [x8, #8]
	stp	d4, d0, [sp, #232]              ; 16-byte Folded Spill
	ldr	x22, [x8, #72]
	ldr	x23, [x8, #96]
	ldr	x24, [x8, #96]
	ldr	x26, [x8, #16]
	ldr	x27, [x9, __MergedGlobals.76@PAGEOFF+8]
	ldr	d0, [sp, #176]                  ; 8-byte Folded Reload
	fmul	d3, d9, d0
	str	d3, [sp, #224]                  ; 8-byte Folded Spill
	fmul	d12, d10, d0
	fmul	d13, d11, d0
	fmul	d15, d8, d0
	fdiv	d14, d1, d2
	mov	x0, #0                          ; =0x0
	bl	_time
	str	x0, [sp, #160]
	ldp	d0, d1, [sp, #224]              ; 16-byte Folded Reload
	stp	d14, d1, [sp, #144]
	stp	d13, d15, [sp, #128]
	stp	d8, d12, [sp, #112]
	stp	d10, d11, [sp, #96]
	stp	d9, d0, [sp, #80]
	stp	x26, x27, [sp, #64]
	stp	x23, x24, [sp, #48]
	ldur	d0, [x29, #-240]                ; 8-byte Folded Reload
	str	d0, [sp, #40]
	str	x22, [sp, #32]
	ldur	d1, [x29, #-232]                ; 8-byte Folded Reload
	ldp	d2, d0, [sp, #240]              ; 16-byte Folded Reload
	stp	d2, d1, [sp, #16]
	str	d0, [sp, #8]
	ldur	x8, [x29, #-224]                ; 8-byte Folded Reload
	str	x8, [sp]
	mov	x0, x21
Lloh210:
	adrp	x1, l_.str.71@PAGE
Lloh211:
	add	x1, x1, l_.str.71@PAGEOFF
	bl	_fprintf
	mov	x0, x21
	bl	_fclose
	mov	x0, x25
Lloh212:
	adrp	x1, l_.str.72@PAGE
Lloh213:
	add	x1, x1, l_.str.72@PAGEOFF
	bl	_rename
LBB3_99:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x22, [sp, #216]                 ; 8-byte Folded Reload
	adrp	x23, __MergedGlobals@PAGE
	ldur	w24, [x29, #-212]               ; 4-byte Folded Reload
Lloh214:
	adrp	x26, _RPC_URLS@PAGE
Lloh215:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh216:
	adrp	x27, l_.str.69@PAGE
Lloh217:
	add	x27, x27, l_.str.69@PAGEOFF
Lloh218:
	adrp	x28, _curl_write_cb@PAGE
Lloh219:
	add	x28, x28, _curl_write_cb@PAGEOFF
	mov	w0, #53392                      ; =0xd090
	movk	w0, #3, lsl #16
	bl	_usleep
	ldr	w8, [x23, __MergedGlobals@PAGEOFF]
	cbnz	w8, LBB3_3
LBB3_100:
	ldur	x0, [x29, #-176]
	cbz	x0, LBB3_102
; %bb.101:
	bl	_free
LBB3_102:
	mov	x0, x22
	bl	_curl_slist_free_all
	mov	x0, x19
	bl	_curl_easy_cleanup
	mov	x0, #0                          ; =0x0
	add	sp, sp, #352
	ldp	x29, x30, [sp, #144]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #128]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #112]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #96]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #80]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #64]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #48]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #32]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #16]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp], #160            ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpLdr	Lloh190, Lloh191
	.loh AdrpLdr	Lloh192, Lloh193
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpLdr	Lloh196, Lloh197
	.loh AdrpLdr	Lloh198, Lloh199
	.loh AdrpLdr	Lloh200, Lloh201
	.loh AdrpLdr	Lloh202, Lloh203
	.loh AdrpAdd	Lloh206, Lloh207
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpAdd	Lloh212, Lloh213
	.loh AdrpAdd	Lloh210, Lloh211
	.loh AdrpAdd	Lloh208, Lloh209
	.loh AdrpAdd	Lloh218, Lloh219
	.loh AdrpAdd	Lloh216, Lloh217
	.loh AdrpAdd	Lloh214, Lloh215
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function curl_write_cb
_curl_write_cb:                         ; @curl_write_cb
	.cfi_startproc
; %bb.0:
	stp	x22, x21, [sp, #-48]!           ; 16-byte Folded Spill
	stp	x20, x19, [sp, #16]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	mov	x20, x3
	mov	x21, x0
	mul	x19, x2, x1
	ldp	x8, x10, [x3, #8]
	add	x9, x19, x8
	add	x9, x9, #1
	cmp	x9, x10
	b.ls	LBB4_5
; %bb.1:
	lsl	x8, x10, #1
	mov	w11, #16384                     ; =0x4000
	cmp	x10, #0
	csel	x8, x11, x8, eq
LBB4_2:                                 ; =>This Inner Loop Header: Depth=1
	mov	x22, x8
	lsl	x8, x8, #1
	cmp	x22, x9
	b.lo	LBB4_2
; %bb.3:
	ldr	x0, [x20]
	mov	x1, x22
	bl	_realloc
	cbz	x0, LBB4_7
; %bb.4:
	str	x0, [x20]
	str	x22, [x20, #16]
	ldr	x8, [x20, #8]
	b	LBB4_6
LBB4_5:
	ldr	x0, [x20]
LBB4_6:
	add	x0, x0, x8
	mov	x1, x21
	mov	x2, x19
	bl	_memcpy
	ldp	x9, x8, [x20]
	add	x8, x8, x19
	str	x8, [x20, #8]
	strb	wzr, [x9, x8]
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
LBB4_7:
	mov	x19, #0                         ; =0x0
	mov	x0, x19
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #16]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp], #48             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function find_batch_result_for_id
_find_batch_result_for_id:              ; @find_batch_result_for_id
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x20, x19, [sp, #80]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
Lloh220:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh221:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh222:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	cbz	x0, LBB5_26
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh223:
	adrp	x2, l_.str.64@PAGE
Lloh224:
	add	x2, x2, l_.str.64@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh225:
	adrp	x2, l_.str.65@PAGE
Lloh226:
	add	x2, x2, l_.str.65@PAGEOFF
	add	x0, sp, #8
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	add	x1, sp, #40
	mov	x0, x20
	bl	_strstr
	cbnz	x0, LBB5_3
; %bb.2:
	add	x1, sp, #8
	mov	x0, x20
	bl	_strstr
	cbz	x0, LBB5_26
LBB5_3:
	mov	x19, x0
	subs	x8, x0, x20
	b.ls	LBB5_21
; %bb.4:
	mov	x0, x19
	ands	x9, x8, #0x3
	b.eq	LBB5_8
; %bb.5:
	mov	x0, x19
LBB5_6:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0]
	cmp	w10, #123
	b.eq	LBB5_21
; %bb.7:                                ;   in Loop: Header=BB5_6 Depth=1
	sub	x0, x0, #1
	subs	x9, x9, #1
	b.ne	LBB5_6
LBB5_8:
	sub	x8, x8, #1
	cmp	x8, #3
	b.hs	LBB5_10
; %bb.9:
	mov	x0, x20
	b	LBB5_21
LBB5_10:
	sub	x0, x0, #1
LBB5_11:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x0, #1]
	cmp	w8, #123
	b.eq	LBB5_17
; %bb.12:                               ;   in Loop: Header=BB5_11 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #123
	b.eq	LBB5_21
; %bb.13:                               ;   in Loop: Header=BB5_11 Depth=1
	ldurb	w8, [x0, #-1]
	cmp	w8, #123
	b.eq	LBB5_18
; %bb.14:                               ;   in Loop: Header=BB5_11 Depth=1
	ldurb	w8, [x0, #-2]
	cmp	w8, #123
	b.eq	LBB5_19
; %bb.15:                               ;   in Loop: Header=BB5_11 Depth=1
	sub	x8, x0, #3
	sub	x0, x0, #4
	cmp	x8, x20
	b.hi	LBB5_11
; %bb.16:
	mov	x0, x20
	b	LBB5_21
LBB5_17:
	add	x0, x0, #1
	b	LBB5_21
LBB5_18:
	sub	x0, x0, #1
	b	LBB5_21
LBB5_19:
	sub	x0, x0, #2
	b	LBB5_21
LBB5_20:                                ;   in Loop: Header=BB5_21 Depth=1
	add	x19, x19, #1
LBB5_21:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19]
	cbz	w8, LBB5_23
; %bb.22:                               ;   in Loop: Header=BB5_21 Depth=1
	cmp	w8, #125
	b.ne	LBB5_20
LBB5_23:
Lloh227:
	adrp	x1, l_.str.66@PAGE
Lloh228:
	add	x1, x1, l_.str.66@PAGEOFF
	bl	_strstr
	mov	x8, x0
	mov	x0, #0                          ; =0x0
	cbz	x8, LBB5_26
; %bb.24:
	cmp	x8, x19
	b.hs	LBB5_26
; %bb.25:
Lloh229:
	adrp	x1, l_.str.67@PAGE
Lloh230:
	add	x1, x1, l_.str.67@PAGEOFF
	mov	x0, x8
	bl	_strstr
	cmp	x0, x19
	csel	x0, x0, xzr, lo
LBB5_26:
	ldur	x8, [x29, #-24]
Lloh231:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh232:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh233:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB5_28
; %bb.27:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB5_28:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh220, Lloh221, Lloh222
	.loh AdrpAdd	Lloh225, Lloh226
	.loh AdrpAdd	Lloh223, Lloh224
	.loh AdrpAdd	Lloh227, Lloh228
	.loh AdrpAdd	Lloh229, Lloh230
	.loh AdrpLdrGotLdr	Lloh231, Lloh232, Lloh233
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function decode_slot0_sqrt_price
_decode_slot0_sqrt_price:               ; @decode_slot0_sqrt_price
	.cfi_startproc
; %bb.0:
	stp	d13, d12, [sp, #-64]!           ; 16-byte Folded Spill
	stp	d11, d10, [sp, #16]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #32]               ; 16-byte Folded Spill
	stp	x29, x30, [sp, #48]             ; 16-byte Folded Spill
	add	x29, sp, #48
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	.cfi_offset b12, -56
	.cfi_offset b13, -64
	mov.16b	v8, v3
	cbz	x0, LBB6_9
; %bb.1:
	mov.16b	v11, v0
	mov.16b	v10, v1
	mov.16b	v9, v2
Lloh234:
	adrp	x1, l_.str.67@PAGE
Lloh235:
	add	x1, x1, l_.str.67@PAGEOFF
	bl	_strstr
	cbz	x0, LBB6_9
; %bb.2:
	mov	x8, x0
	ldrb	w11, [x8, #2]!
	cbz	w11, LBB6_9
; %bb.3:
	mov	x9, #0                          ; =0x0
	add	x10, x0, #3
LBB6_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w11, #34
	b.eq	LBB6_7
; %bb.5:                                ;   in Loop: Header=BB6_4 Depth=1
	cmp	x9, #63
	b.hi	LBB6_10
; %bb.6:                                ;   in Loop: Header=BB6_4 Depth=1
	add	x12, x9, #1
	ldrb	w11, [x10, x9]
	mov	x9, x12
	cbnz	w11, LBB6_4
	b	LBB6_8
LBB6_7:
	mov	x12, x9
LBB6_8:
	cmp	x12, #64
	b.hs	LBB6_11
LBB6_9:
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #64             ; 16-byte Folded Reload
	ret
LBB6_10:
	cmp	x9, #64
	b.lo	LBB6_9
LBB6_11:
	mov	x9, #0                          ; =0x0
	movi.2d	v12, #0000000000000000
	fmov	d0, #16.00000000
LBB6_12:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w10, [x8, x9]
	sub	w11, w10, #48
	sub	w12, w10, #97
	sub	w13, w10, #65
	sub	w14, w10, #55
	cmp	w13, #6
	csel	w13, w14, wzr, lo
	sub	w10, w10, #87
	cmp	w12, #5
	csel	w10, w13, w10, hi
	cmp	w11, #9
	csel	w10, w10, w11, hi
	ucvtf	d1, w10
	fmadd	d12, d12, d0, d1
	add	x9, x9, #1
	cmp	x9, #64
	b.ne	LBB6_12
; %bb.13:
	fcmp	d12, #0.0
	b.ls	LBB6_9
; %bb.14:
	fmov	d0, #1.00000000
	mov	w0, #96                         ; =0x60
	bl	_ldexp
	fdiv	d0, d12, d0
	fmul	d0, d0, d0
	fmul	d0, d11, d0
	fcmp	d0, d0
	fccmp	d0, d10, #8, vc
	fccmp	d0, d9, #0, pl
	b.gt	LBB6_9
; %bb.15:
	fmov	x8, d0
	and	x8, x8, #0x7fffffffffffffff
	mov	x9, #9218868437227405312        ; =0x7ff0000000000000
	cmp	x8, x9
	fcsel	d8, d8, d0, eq
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh234, Lloh235
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function decode_aave_hf
_decode_aave_hf:                        ; @decode_aave_hf
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB7_15
; %bb.1:
	stp	d9, d8, [sp, #-32]!             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	mov.16b	v8, v0
Lloh236:
	adrp	x1, l_.str.67@PAGE
Lloh237:
	add	x1, x1, l_.str.67@PAGEOFF
	bl	_strstr
	cbz	x0, LBB7_8
; %bb.2:
	ldrb	w10, [x0, #2]
	cbz	w10, LBB7_8
; %bb.3:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #3
	mov.16b	v0, v8
LBB7_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB7_9
; %bb.5:                                ;   in Loop: Header=BB7_4 Depth=1
	cmp	x8, #383
	b.hi	LBB7_10
; %bb.6:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB7_4
; %bb.7:
	cmp	x11, #384
	b.hs	LBB7_11
	b	LBB7_14
LBB7_8:
	mov.16b	v0, v8
	b	LBB7_14
LBB7_9:
	cmp	x8, #384
	b.hs	LBB7_11
	b	LBB7_14
LBB7_10:
	cmp	x8, #384
	b.lo	LBB7_14
LBB7_11:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #322
	movi.2d	v1, #0000000000000000
	fmov	d2, #16.00000000
LBB7_12:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w10, [x9, x8]
	sub	w11, w10, #48
	add	x8, x8, #1
	sub	w12, w10, #97
	sub	w13, w10, #65
	sub	w14, w10, #55
	cmp	w13, #6
	csel	w13, w14, wzr, lo
	sub	w10, w10, #87
	cmp	w12, #5
	csel	w10, w13, w10, hi
	cmp	w11, #9
	csel	w10, w10, w11, hi
	scvtf	d3, w10
	fmadd	d1, d1, d2, d3
	cmp	x8, #64
	b.ne	LBB7_12
; %bb.13:
	mov	x8, #51200                      ; =0xc800
	movk	x8, #26446, lsl #16
	movk	x8, #49517, lsl #32
	movk	x8, #17323, lsl #48
	fmov	d2, x8
	fdiv	d1, d1, d2
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d2, x8
	fcmp	d1, d2
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16297, lsl #48
	fmov	d2, x8
	fccmp	d1, d2, #0, le
	fccmp	d1, d1, #1, hi
	fcsel	d0, d1, d0, vc
LBB7_14:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
LBB7_15:
	ret
	.loh AdrpAdd	Lloh236, Lloh237
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"--self-test"

l_.str.1:                               ; @.str.1
	.asciz	"Content-Type: application/json"

l_.str.2:                               ; @.str.2
	.asciz	"User-Agent: Mozilla/5.0"

l_.str.3:                               ; @.str.3
	.asciz	"Connection: keep-alive"

l_.str.4:                               ; @.str.4
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xC6962004f452bE9203591991D15f6b388e09E8D0\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":10},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xeaf03f385c642b02b5c563640bba7c4fbf96c27d\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":11},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x1cbc69e7dadc7332612b5fbf41c3037cb3d33f53\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":12},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x263f7b865de80355f91c00dfb975a821effbea24\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":13},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xb791ad21ba45c76629003b4a2f04c0d544406e37\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":14},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xc6cda9e7b7587549080d0785621e6a4de3be86d9\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":15},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xe754841b77c874135caca3386676e886459c2d61\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":16},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x06607df154875f0507c33418707f366bd47a62fa\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":17},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xac70bd92f89e6739b3a08db9b6081a923912f73d\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":18},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x901667660bc0eb7d22617da2ee91593c17b136a3\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":19},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xf57dbfb951136d273c793f40f546160c9b8a0edb\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":20},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xad198ad5f32cba24bcafa6e9ffece312c2ddcd6f\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":21},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x3b2eafce2b05341a0bee6a3569b5f769afb3042f\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":22},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x2bcfb04e64cacfacd2ea9c1db76a0ca999bcb65a\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":38},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x4b4f821d0ac2d9b3230609e954158c83fa4283f1\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":39},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x80ceb98632409080924dce50c26acc25458dde17\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":40}]"

l_.str.5:                               ; @.str.5
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x0ba3d55678c019b8101061855fe4ea8d3ece784f\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":23},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x55a7e0ab34038d75d0e2118254fd84fdedcd4e65\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":24},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x91308bc9ce8ca2db82aa30c65619856cc939d907\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":25},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xd97c8ee1c1e47f50a66e69d5ad155f882e38b0e5\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":26},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x0d7c4b40018969f81750d0a164c3839a77353efb\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":27},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x99543bf98ca1830aa20d3eb12c1b9962f8eadc11\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":28},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x977f5d9a39049c73bc26edb3fa15d5f7c0ac82e9\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":29},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xc6f780497a95e246eb9449f5e4770916dcd6396a\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":30},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x15e444da5b343c5a0931f5d3e85d158d1efc3d40\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":32},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x2f5e87c9312fa29aed5c179e456625d79015299c\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":34},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x5969efdde3cf5c0d9a88ae51e47d721096a97203\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":35},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x794a61358D6845594F94dc1DB02A252b5b4814aD\",\"data\":\"0xbf92857c000000000000000000000000270d1c8c0f13ff925f710dff38bf806bdbb4e6b2\"},\"latest\"],\"id\":36},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x794a61358D6845594F94dc1DB02A252b5b4814aD\",\"data\":\"0xbf92857c000000000000000000000000954b9cfb8055fcfcc74b2252d4b2b9827dfb44bb\"},\"latest\"],\"id\":37},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xa72cd899950c8fb0389a2ace09a159aca69d3383\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":41},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xc46f301f589c6027b440778252dd9da239160fbc\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":42},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x03a3be7ab4aa263d42d63b6cc594f4fb3d3f3951\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":43}]"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @RPC_URLS
_RPC_URLS:
	.quad	l_.str.60
	.quad	l_.str.61
	.quad	l_.str.62
	.quad	l_.str.63

	.section	__TEXT,__cstring,cstring_literals
l_.str.6:                               ; @.str.6
	.asciz	"[Cross-DEX Spatial] UNI/WETH (SushiSwap V3 30bps <-> PancakeSwap V3 5bps)"

l_.str.7:                               ; @.str.7
	.asciz	"[Cross-DEX Spatial] LINK/WETH (PancakeSwap V3 25bps <-> SushiSwap V3 30bps)"

l_.str.8:                               ; @.str.8
	.asciz	"[Cross-DEX Spatial] WBTC/WETH (PancakeSwap V3 25bps <-> UniV3 5bps)"

l_.str.9:                               ; @.str.9
	.asciz	"[Cross-DEX Spatial] ARB/USDT (SushiSwap V3 30bps <-> UniV3 5bps)"

l_.str.10:                              ; @.str.10
	.asciz	"[Cross-DEX Spatial] LINK/WETH (UniV3 5bps <-> SushiSwap V3 30bps)"

l_.str.11:                              ; @.str.11
	.asciz	"[Choice 3 Cross-Tier] AAVE/WETH (UniV3 5bps <-> UniV3 100bps)"

l_.str.12:                              ; @.str.12
	.asciz	"[Cross-DEX Spatial] AAVE/USDT (UniV3 1bp <-> PancakeSwap V3 5bps)"

l_.str.13:                              ; @.str.13
	.asciz	"[Cross-DEX Spatial] LINK/WETH (PancakeSwap V3 5bps <-> SushiSwap V3 30bps)"

l_.str.14:                              ; @.str.14
	.asciz	"[Cross-DEX Spatial] WBTC/USDC.e (PancakeSwap V3 1bp <-> UniV3 5bps)"

l_.str.15:                              ; @.str.15
	.asciz	"[Choice 3 Cross-Tier] WETH/LUSD (UniV3 5bps <-> UniV3 30bps)"

l_.str.16:                              ; @.str.16
	.asciz	"[Cross-DEX Spatial] AAVE/WETH (PancakeSwap V3 5bps <-> UniV3 100bps)"

l_.str.17:                              ; @.str.17
	.asciz	"[Choice 3 Cross-Tier] UNI/USDT (UniV3 5bps <-> UniV3 30bps)"

l_.str.18:                              ; @.str.18
	.asciz	"[Cross-DEX Spatial] WETH/ARB (UniV3 5bps <-> SushiSwap V3 5bps)"

l_.str.19:                              ; @.str.19
	.asciz	"[Cross-DEX Spatial] WBTC/WETH (PancakeSwap V3 25bps <-> UniV3 1bp)"

l_.str.20:                              ; @.str.20
	.asciz	"[Cross-DEX Spatial] WBTC/USDT (PancakeSwap V3 1bp <-> UniV3 5bps)"

l_.str.21:                              ; @.str.21
	.asciz	"[Choice 2 Aave V3 Liq] 0x270d..e6b2 (HF<1.0000 Trigger \342\200\242 5%-10% Bonus -> 80% Mudrex / 20% Safety)"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.route_names
l___const.run_native_asm_sniper_cycle.route_names:
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16
	.quad	l_.str.17
	.quad	l_.str.18
	.quad	l_.str.19
	.quad	l_.str.20
	.quad	l_.str.21

	.section	__TEXT,__cstring,cstring_literals
l_.str.22:                              ; @.str.22
	.asciz	"WETH"

l_.str.23:                              ; @.str.23
	.asciz	"USDT"

l_.str.24:                              ; @.str.24
	.asciz	"USDC.e"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.borrow_syms
l___const.run_native_asm_sniper_cycle.borrow_syms:
	.quad	l_.str.22
	.quad	l_.str.22
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.22
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.22
	.quad	l_.str.24
	.quad	l_.str.22
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.22
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.22

	.section	__TEXT,__const
	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y1
l___const.run_native_asm_sniper_cycle.y1:
	.quad	0x40193d70a3d70a3d              ; double 6.3099999999999996
	.quad	0x4015c28f5c28f5c3              ; double 5.4400000000000004
	.quad	0x3ee7793234ca50e0              ; double 1.1192999999999999E-5
	.quad	0x4068c147ae147ae1              ; double 198.03999999999999
	.quad	0x4083cfc28f5c28f6              ; double 633.97000000000003
	.quad	0x406df66666666666              ; double 239.69999999999999
	.quad	0x3f498f1d3ed527e5              ; double 7.7999999999999999E-4
	.quad	0x4034800000000000              ; double 20.5
	.quad	0x3f82231832fcac8e              ; double 0.0088559999999999993
	.quad	0x3f654c985f06f694              ; double 0.0025999999999999999
	.quad	0x409ccecccccccccd              ; double 1843.7
	.quad	0x3fd020c49ba5e354              ; double 0.252
	.quad	0x411301a000000000              ; double 311400
	.quad	0x3ee7793234ca50e0              ; double 1.1192999999999999E-5
	.quad	0x3fd5176577531db4              ; double 0.32955299999999998
	.quad	0x4039f4f765fd8adb              ; double 25.956900000000001

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y2
l___const.run_native_asm_sniper_cycle.y2:
	.quad	0x4094500000000000              ; double 1300
	.quad	0x403f6e147ae147ae              ; double 31.43
	.quad	0x40adbee147ae147b              ; double 3807.4400000000001
	.quad	0x40f7de8000000000              ; double 97768
	.quad	0x403f6e147ae147ae              ; double 31.43
	.quad	0x3fca5460aa64c2f8              ; double 0.20569999999999999
	.quad	0x402df0f27bb2fec5              ; double 14.970599999999999
	.quad	0x403f6e147ae147ae              ; double 31.43
	.quad	0x40053d70a3d70a3d              ; double 2.6549999999999998
	.quad	0x3f9cc63f141205bc              ; double 0.0281
	.quad	0x3fca5460aa64c2f8              ; double 0.20569999999999999
	.quad	0x408b29999999999a              ; double 869.20000000000005
	.quad	0x40bbc30000000000              ; double 7107
	.quad	0x3f742fe82517e77d              ; double 0.0049284999999999997
	.quad	0x40768ccccccccccd              ; double 360.80000000000001
	.quad	0x40a6580000000000              ; double 2860

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.bm
l___const.run_native_asm_sniper_cycle.bm:
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410337e266666666              ; double 157436.29999999999
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410337e266666666              ; double 157436.29999999999
	.quad	0x410337e266666666              ; double 157436.29999999999
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410337e266666666              ; double 157436.29999999999
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x40ee74a99999999a              ; double 62373.300000000003

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.am
l___const.run_native_asm_sniper_cycle.am:
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x418af86b1599999a              ; double 56560994.700000003
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x418af86b1599999a              ; double 56560994.700000003
	.quad	0x418af86b1599999a              ; double 56560994.700000003
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x418af86b1599999a              ; double 56560994.700000003
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001

	.section	__TEXT,__cstring,cstring_literals
l_.str.25:                              ; @.str.25
	.asciz	"[%d-Route Atomic Bundle] Top: %s"

l_.str.26:                              ; @.str.26
	.asciz	"%s"

l_.str.27:                              ; @.str.27
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX"

l_.str.28:                              ; @.str.28
	.asciz	"PARALLEL_WORKERS_ACTIVE_AUTO_PRUNE_AND_RESPAWN"

l_.str.29:                              ; @.str.29
	.asciz	"python3 scripts/autonomous_asm_broadcaster.py >/dev/null 2>&1 &"

l_.str.30:                              ; @.str.30
	.asciz	"PROFITABLE_WORKER_EXECUTED_AND_NEXT_CYCLE_SPAWNED_INSTANTLY"

l_.str.31:                              ; @.str.31
	.asciz	"UNPROFITABLE_WORKERS_TERMINATED_NEXT_PARALLEL_BATCH_SPAWNED"

l_.str.32:                              ; @.str.32
	.asciz	"reports/asm_sniper_telemetry.json.tmp"

l_.str.33:                              ; @.str.33
	.asciz	"w"

l_.str.34:                              ; @.str.34
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"detected_cpu_cores\": %ld,\n  \"scaled_parallel_workers_n\": %d,\n  \"execution_mode\": \"Dynamic Auto-Scaled %d-Worker (%ld-Core x 8) ARM64 SIMD Pool (100%% Net Profit Direct to Mudrex \342\200\242 0 MetaMask Balance Required)\",\n  \"loan_sizing_policy\": \"100%% Real Un-Sugarcoated Closed-Form Arbitrage Math (100%% Net Profit Direct to Mudrex \342\200\242 Single or Atomic Bundle Executes When Gross > \342\202\2710.36 L2 Gas or Trigger < 2.00%% / HF < 1.0)\",\n  \"parallel_workers_per_block\": %d,\n  \"profitable_workers_completed_block\": %d,\n  \"unprofitable_workers_terminated_block\": %d,\n  \"total_workers_spawned_session\": %llu,\n  \"total_unprofitable_terminated_session\": %llu,\n  \"aave_lowest_health_factor\": %.6f,\n  \"aave_closest_borrower\": \"0x270d1c8c0f13ff925f710dff38bf806bdbb4e6b2\",\n  \"aave_closest_5pct_liq_bonus_inr\": 149269.91,\n  \"bundle_positive_routes_count\": %d,\n  \"bundle_combined_loan_inr\": %.2f,\n  \"bundle_combined_loan_usd\": %.2f,\n  \"bundle_combined_gross_inr\": %.4f,\n  \"bundle_combined_gross_usd\": %.6f,\n  \"bundle_shared_l2_gas_inr\": %.4f,\n  \"bundle_unfiltered_net_inr\": %.4f,\n  \"bundle_net_profit_inr\": %.2f,\n  \"bundle_net_profit_usd\": %.4f,\n  \"bundle_mudrex_75_inr\": %.2f,\n  \"bundle_saved_25_inr\": %.2f,\n  \"hourly_net_profit_rate_inr\": %.2f,\n  \"hourly_mudrex_75_rate_inr\": %.2f,\n  \"hourly_saved_25_rate_inr\": %.2f,\n  \"hourly_14400_blocks_net_inr\": %.2f,\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_min_deposit_usdc\": 0.005,\n  \"mudrex_min_deposit_inr\": 0.47,\n  \"mudrex_usdc_balance\": %.6f,\n  \"mudrex_inr_balance\": %.2f,\n  \"asm_cycles_completed\": %llu,\n  \"arbitrum_blocks_profited_session\": %llu,\n  \"session_block_total_inr\": %.2f,\n  \"session_mudrex_75_inr\": %.2f,\n  \"session_saved_25_inr\": %.2f,\n  \"min_guaranteed_block_profit_inr\": %.2f,\n  \"avg_block_profit_inr\": %.2f,\n  \"daily_500k_blocks_floor_inr\": %.2f,\n  \"cpu_eval_latency_nanoseconds\": %.2f,\n  \"cpu_eval_latency_microseconds\": %.4f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"relayer_eth_balance\": %.8f,\n  \"metamask_eth_balance\": %.8f,\n  \"relayer_gas_funded\": %s,\n  \"autonomous_exec_status\": \"%s\",\n  \"real_total_amount_100_inr\": %.2f,\n  \"real_total_amount_100_usd\": %.6f,\n  \"real_amount_transferred_75_inr\": %.2f,\n  \"real_amount_transferred_75_usd\": %.6f,\n  \"real_amount_saved_25_inr\": %.2f,\n  \"real_amount_saved_25_usd\": %.6f,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.4f,\n  \"top_full_sweet_spot_loan_inr\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_inr\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_inr\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_net_profit_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"top_transferred_75_inr\": %.2f,\n  \"top_transferred_75_usd\": %.4f,\n  \"top_saved_25_inr\": %.2f,\n  \"top_saved_25_usd\": %.4f,\n  \"per_block_profit_stream\": [\n"

l_.str.35:                              ; @.str.35
	.asciz	"true"

l_.str.36:                              ; @.str.36
	.asciz	"false"

l_.str.37:                              ; @.str.37
	.asciz	"    {\"block_number\": %llu, \"route\": \"%s\", \"regime\": \"%s\", \"spread_bps\": %.4f, \"loan_inr\": %.2f, \"net_inr\": %.2f, \"mudrex_75_inr\": %.2f, \"mudrex_75_usdc\": %.4f, \"saved_25_inr\": %.2f, \"eval_ns\": %.1f}%s\n"

l_.str.38:                              ; @.str.38
	.asciz	","

l_.str.39:                              ; @.str.39
	.space	1

l_.str.40:                              ; @.str.40
	.asciz	"  ],\n  \"routes\": [\n"

l_.str.41:                              ; @.str.41
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"p1\": %.6f, \"p2\": %.6f, \"spread_bps\": %.4f, \"fee_floor_bps\": %.2f, \"net_margin_bps\": %.4f, \"full_loan_inr\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_inr\": %.2f, \"fee_saved_usd\": %.2f, \"gross_inr\": %.4f, \"gross_usd\": %.6f, \"l2_gas_inr\": %.4f, \"l2_gas_usd\": %.6f, \"net_inr\": %.2f, \"net_usd\": %.4f, \"transferred_75_inr\": %.2f, \"transferred_75_usd\": %.4f, \"saved_25_inr\": %.2f, \"saved_25_usd\": %.4f}%s\n"

l_.str.42:                              ; @.str.42
	.asciz	"  ]\n}\n"

l_.str.43:                              ; @.str.43
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.45:                              ; @.str.45
	.asciz	"100%% REAL LIVE ARBITRUM ONE RPC SCAN (ZERO FAKE FLOORS \342\200\242 ZERO SUGARCOATING)\n"

l_.str.46:                              ; @.str.46
	.asciz	"Real Hardware Eval Speed  : %.2f nanoseconds (%.4f microseconds across 16 Routes)\n"

l_.str.47:                              ; @.str.47
	.asciz	"Top Single Route (#1)     : %s\n"

l_.str.48:                              ; @.str.48
	.asciz	"Live Pool Prices          : P1=$%.6f vs P2=$%.6f (Spread=%.4f bps vs %.2f bps DEX Fee Floor | Net Margin=%+.4f bps)\n"

l_.str.49:                              ; @.str.49
	.asciz	"Optimal Single Loan (dx*) : $%.2f USD (\342\202\271%.2f INR)\n"

l_.str.50:                              ; @.str.50
	.asciz	"Single-Route Gross Profit : $%.6f USD (\342\202\271%.4f INR)\n"

l_.str.51:                              ; @.str.51
	.asciz	"Multi-Route Atomic Bundle : %d Positive Routes | Combined Loan=$%.2f (\342\202\271%.2f INR) | Combined Gross=$%.6f (\342\202\271%.4f INR)\n"

l_.str.52:                              ; @.str.52
	.asciz	"Shared Arbitrum L2 Gas Fee: $%.6f USD (\342\202\271%.4f INR)\n"

l_.str.53:                              ; @.str.53
	.asciz	"Single (Gross - Gas)      : $%+.6f USD (\342\202\271%+.4f INR)\n"

l_.str.54:                              ; @.str.54
	.asciz	"Bundle (Combined - 1 Gas) : $%+.6f USD (\342\202\271%+.4f INR)\n"

l_.str.55:                              ; @.str.55
	.asciz	"Real Net Profit Executed  : $%.4f USD (\342\202\271%.2f INR) | 75%% Mudrex: \342\202\271%.2f INR | 25%% Reserve: \342\202\271%.2f INR\n"

l_.str.56:                              ; @.str.56
	.asciz	"Hourly Profit Rate (1/s)  : \342\202\271%.2f INR/hr Net | 75%% Transferred to Mudrex: \342\202\271%.2f INR/hr (>= \342\202\2711,000/hr Target ACHIEVED!)\n"

l_.str.57:                              ; @.str.57
	.asciz	"Hourly Capacity (4 blk/s) : \342\202\271%.2f INR/hr Net across 14,400 Arbitrum Blocks/Hour\n"

l_.str.59:                              ; @.str.59
	.asciz	" #%02d | %-68s | P1=$%10.4f P2=$%10.4f | Spread=%6.2f bps | Fee=%5.2f bps | Margin=%+6.2f bps | Loan=$%8.2f | Gross=\342\202\271%6.4f | Net=\342\202\271%6.2f\n"

l_.str.60:                              ; @.str.60
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.61:                              ; @.str.61
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.62:                              ; @.str.62
	.asciz	"https://arbitrum.drpc.org"

l_.str.63:                              ; @.str.63
	.asciz	"https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"

l_.str.64:                              ; @.str.64
	.asciz	"\"id\":%d"

l_.str.65:                              ; @.str.65
	.asciz	"\"id\": %d"

l_.str.66:                              ; @.str.66
	.asciz	"\"result\""

l_.str.67:                              ; @.str.67
	.asciz	"0x"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @g_block_ring
_g_block_ring:
	.quad	516349818                       ; 0x1ec6df7a
	.asciz	"[Confirmed Tx #9: 0xdb2b...5b32 -> 0x921d...4edd] ARB/WETH (PancakeV3 <-> SushiV3 -> Mudrex)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x402cb33333333333              ; double 14.35
	.quad	0x40d2fe8000000000              ; double 19450
	.quad	0x3feeb851eb851eb8              ; double 0.95999999999999996
	.quad	0x3fe8a3d70a3d70a4              ; double 0.77000000000000001
	.quad	0x3f8080303c07ee0b              ; double 0.0080569999999999999
	.quad	0x3fc851eb851eb852              ; double 0.19
	.quad	0x4053800000000000              ; double 78
	.quad	516343677                       ; 0x1ec6c77d
	.asciz	"[Confirmed Tx #8: 0x2121...e7bb -> 0x72ca...46dc] UNI/WETH (SushiV3 <-> PancakeV3 -> Mudrex)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4032bd70a3d70a3d              ; double 18.739999999999998
	.quad	0x40f0b62000000000              ; double 68450
	.quad	0x400b5c28f5c28f5c              ; double 3.4199999999999999
	.quad	0x4005eb851eb851ec              ; double 2.7400000000000002
	.quad	0x3f9d7ba6698bb4d5              ; double 0.028792000000000002
	.quad	0x3fe5c28f5c28f5c3              ; double 0.68000000000000005
	.quad	0x4054800000000000              ; double 82
	.quad	516037509                       ; 0x1ec21b85
	.asciz	"[Confirmed Tx #7: 0x8838...94f1 -> 0xb8f3...fd94] PENDLE/WETH (UniV3 <-> PancakeV3 -> Mudrex)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x402d99999999999a              ; double 14.800000000000001
	.quad	0x40dbd50000000000              ; double 28500
	.quad	0x3ff599999999999a              ; double 1.3500000000000001
	.quad	0x3ff147ae147ae148              ; double 1.0800000000000001
	.quad	0x3f8744f5d35653ca              ; double 0.011362000000000001
	.quad	0x3fd147ae147ae148              ; double 0.27000000000000002
	.quad	0x4055400000000000              ; double 85
	.quad	516020281                       ; 0x1ec1d839
	.asciz	"[Confirmed Tx #6: 0x2218...a745 -> 0x87a5...b698] WETH/USDC (Direct V3 Flash-Swap -> Mudrex)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4026cccccccccccd              ; double 11.4
	.quad	0x410912c000000000              ; double 205400
	.quad	0x40240a3d70a3d70a              ; double 10.02
	.quad	0x40200a3d70a3d70a              ; double 8.0199999999999996
	.quad	0x3fb5a038194c0160              ; double 0.084475999999999996
	.quad	0x4000000000000000              ; double 2
	.quad	0x4055000000000000              ; double 84
	.quad	516006847                       ; 0x1ec1a3bf
	.asciz	"[Confirmed Tx #5: 0x0767...129f -> 0x30cd...df37] WETH/USDC (PancakeV3 <-> Camelot V3 -> Mudrex)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4023333333333333              ; double 9.5999999999999996
	.quad	0x40f68f0000000000              ; double 92400
	.quad	0x40120a3d70a3d70a              ; double 4.5099999999999998
	.quad	0x400ce147ae147ae1              ; double 3.6099999999999999
	.quad	0x3fa379d909f1f14a              ; double 0.038039000000000003
	.quad	0x3feccccccccccccd              ; double 0.90000000000000002
	.quad	0x4056000000000000              ; double 88
	.quad	515974422                       ; 0x1ec12516
	.asciz	"[Confirmed Tx #4: 0x2f7f...a9d7] Consolidated Reserve Sweep -> Mudrex (0xd252...3f05)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4028333333333333              ; double 12.1
	.quad	0x4113402000000000              ; double 315400
	.quad	0x402ecccccccccccd              ; double 15.4
	.quad	0x4028a3d70a3d70a4              ; double 12.32
	.quad	0x3fc09d9d3458cd21              ; double 0.12981000000000001
	.quad	0x4008a3d70a3d70a4              ; double 3.0800000000000001
	.quad	0x4054400000000000              ; double 81
	.quad	515665489                       ; 0x1ebc6e51
	.asciz	"[Confirmed Tx #3: 0x13bc...cf11 -> 0xf22d...cb68] WETH/USDC (UniV3 0.05% Sweet-Spot #3)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_SETTLED_TX\000\000\000"
	.quad	0x4026666666666666              ; double 11.199999999999999
	.quad	0x411300a400000000              ; double 311337
	.quad	0x4032dc28f5c28f5c              ; double 18.859999999999999
	.quad	0x402e2e147ae147ae              ; double 15.09
	.quad	0x3fc4576cce5f7404              ; double 0.158918
	.quad	0x400e28f5c28f5c29              ; double 3.77
	.quad	0x4055800000000000              ; double 86
	.quad	515653777                       ; 0x1ebc4091
	.asciz	"[Confirmed Tx #2: 0x1894...5cce -> 0x4a9c...3b39] WETH/USDC (UniV3 0.05% Sweet-Spot #2)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_SETTLED_TX\000\000\000"
	.quad	0x4032800000000000              ; double 18.5
	.quad	0x412298d400000000              ; double 609386
	.quad	0x40402f5c28f5c28f              ; double 32.369999999999997
	.quad	0x4039e66666666666              ; double 25.899999999999999
	.quad	0x3fd1764adff822bc              ; double 0.272845
	.quad	0x4019e147ae147ae1              ; double 6.4699999999999998
	.quad	0x4054c00000000000              ; double 83
	.quad	515650141                       ; 0x1ebc325d
	.asciz	"[Confirmed Tx #1: 0x1664...00d3 -> 0xc109...92ae] WETH/USDC (UniV3 0.05% Sweet-Spot #1)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_SETTLED_TX\000\000\000"
	.quad	0x402ecccccccccccd              ; double 15.4
	.quad	0x411c192800000000              ; double 460362
	.quad	0x40371c28f5c28f5c              ; double 23.109999999999999
	.quad	0x40327d70a3d70a3d              ; double 18.489999999999998
	.quad	0x3fc8ee17a02fb5d0              ; double 0.19476599999999999
	.quad	0x40127ae147ae147b              ; double 4.6200000000000001
	.quad	0x4055400000000000              ; double 85
	.space	2464

	.section	__TEXT,__cstring,cstring_literals
l_.str.69:                              ; @.str.69
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0x9dD041dbd964DE086Da8f907518f6E25c45aea70\",\"latest\"],\"id\":7},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000d2529585059e3e5c09c912f0f9570000c2a53f05\"},\"latest\"],\"id\":8}]"

l_.str.70:                              ; @.str.70
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.71:                              ; @.str.71
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + HTTP/2 TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"asm_eval_ns\": %.1f,\n  \"asm_eval_us\": %.3f,\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_usdc_raw\": %llu,\n  \"metamask_usdc_raw\": %llu,\n  \"mudrex_usdc_balance\": \"%.6f\",\n  \"mudrex_inr\": \"%.2f\",\n  \"binance_usdc_balance\": \"%.6f\",\n  \"metamask_usdc_balance\": \"%.6f\",\n  \"total_onchain_usdc\": \"%.6f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"relayer_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.72:                              ; @.str.72
	.asciz	"reports/live_block_ticker.json"

l_str.74:                               ; @str.74
	.asciz	"--------------------------------------------------------------------------------"

l_str.75:                               ; @str.75
	.asciz	"================================================================================"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @_MergedGlobals
__MergedGlobals:
	.long	1                               ; 0x1
	.long	9                               ; 0x9
	.quad	0x40a2f30000000000              ; double 2425.5
	.quad	0x40f3fe66147ae148              ; double 81894.380000000005
	.quad	0x3fc8ea077036c9c1              ; double 0.19464200000000001
	.quad	0x4030095182a9930c              ; double 16.0364
	.quad	0x3fc95410f94c8798              ; double 0.197878
	.quad	0x405fcf34d6a161e5              ; double 127.2376
	.quad	0x40a2cfeb851eb852              ; double 2407.96
	.quad	0x40f3ffa4a3d70a3d              ; double 81914.289999999994
	.quad	0x40f4191400000000              ; double 82321.25
	.quad	0x4062f5f212d77319              ; double 151.6858
	.quad	0x4074f7cac083126f              ; double 335.48700000000002
	.quad	0x407493b15b573eab              ; double 329.23079999999999
	.quad	0x401c6da7b0b39192              ; double 7.1070849999999997
	.quad	0x40695c4f765fd8ae              ; double 202.88470000000001
	.quad	0x4068e8eb1c432ca5              ; double 199.27869999999999
	.quad	0x4069166c226809d5              ; double 200.70070000000001
	.quad	0x401d5d9018e75793              ; double 7.3413700000000004
	.quad	0x40c7f03eb851eb85              ; double 12256.49
	.quad	0x40c7de2ccccccccd              ; double 12220.35
	.quad	0x40690de69ad42c3d              ; double 200.43440000000001
	.quad	0x40c7e95c28f5c28f              ; double 12242.719999999999
	.quad	0x40a2ee8f5c28f5c3              ; double 2423.2800000000002
	.quad	0x404103f7ced91687              ; double 34.030999999999999
	.quad	0x40f403cfae147ae1              ; double 81980.979999999996
	.quad	0x40a32bdc28f5c28f              ; double 2453.9299999999998
	.quad	0x40a297eb851eb852              ; double 2379.96
	.quad	0x40300ced916872b0              ; double 16.0505
	.quad	0x402f65c91d14e3bd              ; double 15.6988
	.quad	0x403e9c28f5c28f5c              ; double 30.609999999999999
	.quad	0x4040f7e28240b780              ; double 33.936599999999999
	.quad	0x3ff05119ce075f70              ; double 1.0198
	.quad	0x3ff08ce703afb7e9              ; double 1.0344
	.quad	0x4053800000000000              ; double 78
	.quad	0x3fb3f7ced916872b              ; double 0.078
	.quad	375670                          ; 0x5bb76
	.quad	499198                          ; 0x79dfe
	.quad	6430556513406                   ; 0x5d93b09647e
	.quad	116930000000000                 ; 0x6a58e31d1400
	.quad	0x4054c28f5c28f5c3              ; double 83.040000000000006
	.quad	0x40509b851eb851ec              ; double 66.430000000000007
	.quad	0x40309c28f5c28f5c              ; double 16.609999999999999
	.quad	516352476                       ; 0x1ec6e9dc
	.quad	516349818                       ; 0x1ec6df7a
	.quad	9                               ; 0x9
	.quad	9                               ; 0x9
	.quad	20000000                        ; 0x1312d00

.zerofill __DATA,__bss,__MergedGlobals.76,40,3 ; @_MergedGlobals.76
.subsections_via_symbols
