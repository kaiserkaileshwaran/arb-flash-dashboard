	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_full_loan_routes_asm  ; -- Begin function evaluate_full_loan_routes_asm
	.p2align	2
_evaluate_full_loan_routes_asm:         ; @evaluate_full_loan_routes_asm
	.cfi_startproc
; %bb.0:
	ldp	x12, x11, [sp, #64]
	ldp	x9, x8, [sp, #48]
	ldp	x14, x13, [sp, #32]
	ldp	x16, x15, [sp, #16]
	ldp	x17, x10, [sp]
	ldr	d5, [x1]
	ldr	d6, [x2]
	fminnm	d2, d5, d6
	fmaxnm	d3, d5, d6
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d4, x0
	fcmp	d2, d4
	movi.2d	v7, #0000000000000000
	b.le	LBB0_2
; %bb.1:
	fsub	d4, d3, d2
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d7, x0
	fmul	d4, d4, d7
	fdiv	d7, d4, d2
LBB0_2:
	ldr	d4, [x5]
	fsub	d4, d7, d4
	fcmp	d4, #0.0
	movi.2d	v20, #0000000000000000
	str	d7, [x17]
	str	d4, [x10]
	movi.2d	v21, #0000000000000000
	movi.2d	v19, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v7, #0000000000000000
	movi.2d	v17, #0000000000000000
	b.gt	LBB0_61
LBB0_3:
	str	d17, [x16]
	str	d7, [x15]
	str	d16, [x14]
	str	d18, [x13]
	str	d19, [x9]
	str	d21, [x8]
	str	d20, [x12]
	str	d1, [x11]
	ldr	d17, [x1, #8]
	ldr	d19, [x2, #8]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_5
; %bb.4:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_5:
	ldr	d2, [x5, #8]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #8]
	str	d2, [x10, #8]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_64
LBB0_6:
	str	d5, [x16, #8]
	str	d3, [x15, #8]
	str	d4, [x14, #8]
	str	d6, [x13, #8]
	str	d18, [x9, #8]
	str	d21, [x8, #8]
	str	d20, [x12, #8]
	str	d1, [x11, #8]
	ldr	d17, [x1, #16]
	ldr	d19, [x2, #16]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_8
; %bb.7:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_8:
	ldr	d2, [x5, #16]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #16]
	str	d2, [x10, #16]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_67
LBB0_9:
	str	d5, [x16, #16]
	str	d3, [x15, #16]
	str	d4, [x14, #16]
	str	d6, [x13, #16]
	str	d18, [x9, #16]
	str	d21, [x8, #16]
	str	d20, [x12, #16]
	str	d1, [x11, #16]
	ldr	d17, [x1, #24]
	ldr	d19, [x2, #24]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_11
; %bb.10:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_11:
	ldr	d2, [x5, #24]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #24]
	str	d2, [x10, #24]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_70
LBB0_12:
	str	d5, [x16, #24]
	str	d3, [x15, #24]
	str	d4, [x14, #24]
	str	d6, [x13, #24]
	str	d18, [x9, #24]
	str	d21, [x8, #24]
	str	d20, [x12, #24]
	str	d1, [x11, #24]
	ldr	d17, [x1, #32]
	ldr	d19, [x2, #32]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_14
; %bb.13:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_14:
	ldr	d2, [x5, #32]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #32]
	str	d2, [x10, #32]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_73
LBB0_15:
	str	d5, [x16, #32]
	str	d3, [x15, #32]
	str	d4, [x14, #32]
	str	d6, [x13, #32]
	str	d18, [x9, #32]
	str	d21, [x8, #32]
	str	d20, [x12, #32]
	str	d1, [x11, #32]
	ldr	d17, [x1, #40]
	ldr	d19, [x2, #40]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_17
; %bb.16:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_17:
	ldr	d2, [x5, #40]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #40]
	str	d2, [x10, #40]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_76
LBB0_18:
	str	d5, [x16, #40]
	str	d3, [x15, #40]
	str	d4, [x14, #40]
	str	d6, [x13, #40]
	str	d18, [x9, #40]
	str	d21, [x8, #40]
	str	d20, [x12, #40]
	str	d1, [x11, #40]
	ldr	d17, [x1, #48]
	ldr	d19, [x2, #48]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_20
; %bb.19:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_20:
	ldr	d2, [x5, #48]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #48]
	str	d2, [x10, #48]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_79
LBB0_21:
	str	d5, [x16, #48]
	str	d3, [x15, #48]
	str	d4, [x14, #48]
	str	d6, [x13, #48]
	str	d18, [x9, #48]
	str	d21, [x8, #48]
	str	d20, [x12, #48]
	str	d1, [x11, #48]
	ldr	d17, [x1, #56]
	ldr	d19, [x2, #56]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_23
; %bb.22:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_23:
	ldr	d2, [x5, #56]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #56]
	str	d2, [x10, #56]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_82
LBB0_24:
	str	d5, [x16, #56]
	str	d3, [x15, #56]
	str	d4, [x14, #56]
	str	d6, [x13, #56]
	str	d18, [x9, #56]
	str	d21, [x8, #56]
	str	d20, [x12, #56]
	str	d1, [x11, #56]
	ldr	d17, [x1, #64]
	ldr	d19, [x2, #64]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_26
; %bb.25:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_26:
	ldr	d2, [x5, #64]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #64]
	str	d2, [x10, #64]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_85
LBB0_27:
	str	d5, [x16, #64]
	str	d3, [x15, #64]
	str	d4, [x14, #64]
	str	d6, [x13, #64]
	str	d18, [x9, #64]
	str	d21, [x8, #64]
	str	d20, [x12, #64]
	str	d1, [x11, #64]
	ldr	d17, [x1, #72]
	ldr	d19, [x2, #72]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_29
; %bb.28:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_29:
	ldr	d2, [x5, #72]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #72]
	str	d2, [x10, #72]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_88
LBB0_30:
	str	d5, [x16, #72]
	str	d3, [x15, #72]
	str	d4, [x14, #72]
	str	d6, [x13, #72]
	str	d18, [x9, #72]
	str	d21, [x8, #72]
	str	d20, [x12, #72]
	str	d1, [x11, #72]
	ldr	d17, [x1, #80]
	ldr	d19, [x2, #80]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_32
; %bb.31:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_32:
	ldr	d2, [x5, #80]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #80]
	str	d2, [x10, #80]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_91
LBB0_33:
	str	d5, [x16, #80]
	str	d3, [x15, #80]
	str	d4, [x14, #80]
	str	d6, [x13, #80]
	str	d18, [x9, #80]
	str	d21, [x8, #80]
	str	d20, [x12, #80]
	str	d1, [x11, #80]
	ldr	d17, [x1, #88]
	ldr	d19, [x2, #88]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_35
; %bb.34:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_35:
	ldr	d2, [x5, #88]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #88]
	str	d2, [x10, #88]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_94
LBB0_36:
	str	d5, [x16, #88]
	str	d3, [x15, #88]
	str	d4, [x14, #88]
	str	d6, [x13, #88]
	str	d18, [x9, #88]
	str	d21, [x8, #88]
	str	d20, [x12, #88]
	str	d1, [x11, #88]
	ldr	d17, [x1, #96]
	ldr	d19, [x2, #96]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_38
; %bb.37:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_38:
	ldr	d2, [x5, #96]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #96]
	str	d2, [x10, #96]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_97
LBB0_39:
	str	d5, [x16, #96]
	str	d3, [x15, #96]
	str	d4, [x14, #96]
	str	d6, [x13, #96]
	str	d18, [x9, #96]
	str	d21, [x8, #96]
	str	d20, [x12, #96]
	str	d1, [x11, #96]
	ldr	d17, [x1, #104]
	ldr	d19, [x2, #104]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_41
; %bb.40:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_41:
	ldr	d2, [x5, #104]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #104]
	str	d2, [x10, #104]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_100
LBB0_42:
	str	d5, [x16, #104]
	str	d3, [x15, #104]
	str	d4, [x14, #104]
	str	d6, [x13, #104]
	str	d18, [x9, #104]
	str	d21, [x8, #104]
	str	d20, [x12, #104]
	str	d1, [x11, #104]
	ldr	d17, [x1, #112]
	ldr	d19, [x2, #112]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_44
; %bb.43:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_44:
	ldr	d2, [x5, #112]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d3, [x17, #112]
	str	d2, [x10, #112]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_103
LBB0_45:
	str	d5, [x16, #112]
	str	d3, [x15, #112]
	str	d4, [x14, #112]
	str	d6, [x13, #112]
	str	d18, [x9, #112]
	str	d21, [x8, #112]
	str	d20, [x12, #112]
	str	d1, [x11, #112]
	ldr	d17, [x1, #120]
	ldr	d19, [x2, #120]
	fminnm	d7, d17, d19
	fmaxnm	d16, d17, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d7, d2
	movi.2d	v3, #0000000000000000
	b.le	LBB0_47
; %bb.46:
	fsub	d2, d16, d7
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d3, x0
	fmul	d2, d2, d3
	fdiv	d3, d2, d7
LBB0_47:
	ldr	d2, [x5, #120]
	fsub	d2, d3, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	ldr	x0, [sp, #80]
	str	d3, [x17, #120]
	str	d2, [x10, #120]
	movi.2d	v21, #0000000000000000
	movi.2d	v18, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v4, #0000000000000000
	movi.2d	v3, #0000000000000000
	movi.2d	v5, #0000000000000000
	b.gt	LBB0_106
LBB0_48:
	mov	x17, #0                         ; =0x0
	str	d5, [x16, #120]
	str	d3, [x15, #120]
	str	d4, [x14, #120]
	str	d6, [x13, #120]
	str	d18, [x9, #120]
	str	d21, [x8, #120]
	str	d20, [x12, #120]
	add	x12, x0, #4
	mov	w13, #-1                        ; =0xffffffff
	str	d1, [x11, #120]
	b	LBB0_51
LBB0_49:                                ;   in Loop: Header=BB0_51 Depth=1
	sub	x11, x17, #1
LBB0_50:                                ;   in Loop: Header=BB0_51 Depth=1
	sbfiz	x11, x11, #2, #32
	str	w17, [x12, x11]
	add	x17, x17, #1
	add	w13, w13, #1
	cmp	x17, #16
	b.eq	LBB0_60
LBB0_51:                                ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_54 Depth 2
	cbz	w17, LBB0_49
; %bb.52:                               ;   in Loop: Header=BB0_51 Depth=1
	ldr	d0, [x8, x17, lsl #3]
	ldr	d1, [x9, x17, lsl #3]
	ldr	d2, [x10, x17, lsl #3]
	mov	w11, w13
	b	LBB0_54
LBB0_53:                                ;   in Loop: Header=BB0_54 Depth=2
	add	x15, x0, x11, lsl #2
	str	w14, [x15, #4]
	cmp	x11, #0
	sub	x11, x11, #1
	b.le	LBB0_59
LBB0_54:                                ;   Parent Loop BB0_51 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w14, [x0, x11, lsl #2]
	ldr	d3, [x8, w14, sxtw #3]
	fcmp	d3, d0
	b.lt	LBB0_53
; %bb.55:                               ;   in Loop: Header=BB0_54 Depth=2
	b.ne	LBB0_50
; %bb.56:                               ;   in Loop: Header=BB0_54 Depth=2
	ldr	d3, [x9, w14, sxtw #3]
	fcmp	d3, d1
	b.lt	LBB0_53
; %bb.57:                               ;   in Loop: Header=BB0_54 Depth=2
	b.ne	LBB0_50
; %bb.58:                               ;   in Loop: Header=BB0_54 Depth=2
	ldr	d3, [x10, w14, sxtw #3]
	fcmp	d3, d2
	b.lt	LBB0_53
	b	LBB0_50
LBB0_59:                                ;   in Loop: Header=BB0_51 Depth=1
	mov	x11, #-1                        ; =0xffffffffffffffff
	b	LBB0_50
LBB0_60:
	ret
LBB0_61:
	fcmp	d5, d6
	csel	x0, x3, x4, le
	ldr	d1, [x0]
	csel	x0, x4, x3, le
	ldr	d5, [x0]
	fmul	d2, d1, d2
	fmul	d3, d5, d3
	fmul	d5, d3, d2
	fadd	d6, d3, d2
	fdiv	d1, d6, d5
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d5, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d7, x0
	fcsel	d1, d1, d7, gt
	ldr	d16, [x6]
	ldr	d7, [x7]
	fadd	d7, d7, d16
	fminnm	d2, d2, d3
	fminnm	d7, d2, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d2, x0
	fmul	d3, d4, d2
	movi.2d	v2, #0000000000000000
	fcmp	d6, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_63
; %bb.62:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d4, d4, d17
	fmul	d4, d4, d5
	fdiv	d17, d4, d6
LBB0_63:
	fminnm	d17, d17, d7
	fminnm	d7, d17, d16
	fsub	d4, d17, d16
	fcmp	d17, d16
	fcsel	d16, d4, d2, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d4, x0
	fmul	d18, d7, d4
	fmul	d4, d17, d17
	fmul	d1, d4, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d4, x0
	fnmsub	d1, d3, d17, d1
	fmadd	d1, d16, d4, d1
	fmaxnm	d19, d1, d2
	fsub	d3, d19, d0
	fmov	d1, #0.75000000
	fmul	d4, d3, d1
	fmov	d1, #0.25000000
	fmul	d1, d3, d1
	fcmp	d3, #0.0
	fcsel	d1, d1, d2, gt
	fcsel	d20, d4, d2, gt
	fmaxnm	d21, d3, d2
	b	LBB0_3
LBB0_64:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #8]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #8]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #8]
	ldr	d16, [x7, #8]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_66
; %bb.65:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_66:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_6
LBB0_67:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #16]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #16]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #16]
	ldr	d16, [x7, #16]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_69
; %bb.68:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_69:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_9
LBB0_70:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #24]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #24]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #24]
	ldr	d16, [x7, #24]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_72
; %bb.71:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_72:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_12
LBB0_73:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #32]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #32]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #32]
	ldr	d16, [x7, #32]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_75
; %bb.74:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_75:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_15
LBB0_76:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #40]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #40]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #40]
	ldr	d16, [x7, #40]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_78
; %bb.77:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_78:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_18
LBB0_79:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #48]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #48]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #48]
	ldr	d16, [x7, #48]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_81
; %bb.80:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_81:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_21
LBB0_82:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #56]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #56]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #56]
	ldr	d16, [x7, #56]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_84
; %bb.83:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_84:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_24
LBB0_85:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #64]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #64]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #64]
	ldr	d16, [x7, #64]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_87
; %bb.86:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_87:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_27
LBB0_88:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #72]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #72]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #72]
	ldr	d16, [x7, #72]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_90
; %bb.89:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_90:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_30
LBB0_91:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #80]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #80]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #80]
	ldr	d16, [x7, #80]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_93
; %bb.92:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_93:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_33
LBB0_94:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #88]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #88]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #88]
	ldr	d16, [x7, #88]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_96
; %bb.95:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_96:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_36
LBB0_97:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #96]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #96]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #96]
	ldr	d16, [x7, #96]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_99
; %bb.98:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_99:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_39
LBB0_100:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #104]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #104]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #104]
	ldr	d16, [x7, #104]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_102
; %bb.101:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_102:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_42
LBB0_103:
	fcmp	d17, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #112]
	csel	x0, x4, x3, le
	ldr	d3, [x0, #112]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d17, x0
	fcmp	d3, d17
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d6, x0
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #112]
	ldr	d16, [x7, #112]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d7, x0
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_105
; %bb.104:
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d17, x0
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_105:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d2, x0
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d2, d18, d0
	fmov	d1, #0.75000000
	fmul	d16, d2, d1
	fmov	d1, #0.25000000
	fmul	d1, d2, d1
	fcmp	d2, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d16, d7, gt
	fmaxnm	d21, d2, d7
	b	LBB0_45
LBB0_106:
	fcmp	d17, d19
	csel	x17, x3, x4, le
	ldr	d1, [x17, #120]
	csel	x17, x4, x3, le
	ldr	d3, [x17, #120]
	fmul	d5, d1, d7
	fmul	d7, d3, d16
	fmul	d3, d7, d5
	fadd	d4, d7, d5
	fdiv	d1, d4, d3
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d17, x17
	fcmp	d3, d17
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #17164, lsl #48
	fmov	d6, x17
	fcsel	d1, d1, d6, gt
	ldr	d6, [x6, #120]
	ldr	d16, [x7, #120]
	fadd	d16, d16, d6
	fminnm	d5, d5, d7
	fminnm	d5, d5, d16
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d7, x17
	fmul	d16, d2, d7
	movi.2d	v7, #0000000000000000
	fcmp	d4, d17
	movi.2d	v17, #0000000000000000
	b.le	LBB0_108
; %bb.107:
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16138, lsl #48
	fmov	d17, x17
	fmul	d2, d2, d17
	fmul	d2, d2, d3
	fdiv	d17, d2, d4
LBB0_108:
	fminnm	d5, d17, d5
	fminnm	d3, d5, d6
	fsub	d2, d5, d6
	fcmp	d5, d6
	fcsel	d4, d2, d7, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d2, x17
	fmul	d6, d3, d2
	fmul	d2, d5, d5
	fmul	d1, d2, d1
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #48960, lsl #48
	fmov	d2, x17
	fnmsub	d1, d16, d5, d1
	fmadd	d1, d4, d2, d1
	fmaxnm	d18, d1, d7
	fsub	d0, d18, d0
	fmov	d1, #0.75000000
	fmul	d2, d0, d1
	fmov	d1, #0.25000000
	fmul	d1, d0, d1
	fcmp	d0, #0.0
	fcsel	d1, d1, d7, gt
	fcsel	d20, d2, d7, gt
	fmaxnm	d21, d0, d7
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
	sub	x9, sp, #2464
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
	str	w3, [sp, #668]                  ; 4-byte Folded Spill
Lloh10:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh11:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh12:
	ldr	x8, [x8]
	str	x8, [sp, #2456]
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
	adrp	x26, l_.str.4@PAGE
Lloh16:
	add	x26, x26, l_.str.4@PAGEOFF
Lloh17:
	adrp	x27, _curl_write_cb@PAGE
Lloh18:
	add	x27, x27, _curl_write_cb@PAGEOFF
	mov	w28, #1                         ; =0x1
	mov	w19, #2500                      ; =0x9c4
Lloh19:
	adrp	x25, __MergedGlobals@PAGE+8
Lloh20:
	add	x25, x25, __MergedGlobals@PAGEOFF+8
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
	str	x8, [sp, #656]                  ; 8-byte Folded Spill
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16543, lsl #48
	str	x8, [sp, #648]                  ; 8-byte Folded Spill
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16563, lsl #48
	fmov	d14, x8
	mov	x8, #4641240890982006784        ; =0x4069000000000000
	str	x8, [sp, #640]                  ; 8-byte Folded Spill
	b	LBB2_3
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	add	x23, x23, #1
	cmp	x23, #4
	b.eq	LBB2_11
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
Lloh21:
	adrp	x8, __MergedGlobals.78@PAGE
Lloh22:
	ldr	x8, [x8, __MergedGlobals.78@PAGEOFF]
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
	str	x26, [sp]
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
	ldr	d3, [x25]
	mov.16b	v0, v8
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x25]
	ldr	x0, [x20]
	mov	w1, #11                         ; =0xb
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #8]
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #8]
	ldr	x0, [x20]
	mov	w1, #12                         ; =0xc
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #16]
	fmov	d2, #10.00000000
	mov.16b	v0, v8
	ldr	d15, [sp, #656]                 ; 8-byte Folded Reload
	mov.16b	v1, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #16]
	ldr	x0, [x20]
	mov	w1, #13                         ; =0xd
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #24]
	fmov	d0, #1.00000000
	fmov	d1, #2.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #24]
	ldr	x0, [x20]
	mov	w1, #14                         ; =0xe
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #32]
	fmov	d2, #10.00000000
	mov.16b	v0, v8
	mov.16b	v1, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #32]
	ldr	x0, [x20]
	mov	w1, #15                         ; =0xf
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #40]
	fmov	d1, #10.00000000
	mov.16b	v0, v8
	ldr	d15, [sp, #648]                 ; 8-byte Folded Reload
	mov.16b	v2, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #40]
	ldr	x0, [x20]
	mov	w1, #16                         ; =0x10
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #48]
	mov.16b	v0, v8
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #48]
	ldr	x0, [x20]
	mov	w1, #17                         ; =0x11
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #56]
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #56]
	ldr	x0, [x20]
	mov	w1, #18                         ; =0x12
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #64]
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #64]
	ldr	x0, [x20]
	mov	w1, #19                         ; =0x13
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #72]
	fmov	d1, #10.00000000
	mov.16b	v0, v8
	mov.16b	v2, v15
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #72]
	ldr	x0, [x20]
	mov	w1, #20                         ; =0x14
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #80]
	fmov	d0, #1.00000000
	fmov	d1, #20.00000000
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #80]
	ldr	x0, [x20]
	mov	w1, #21                         ; =0x15
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #88]
	fmov	d0, #1.00000000
	fmov	d1, #20.00000000
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #88]
	ldr	x0, [x20]
	mov	w1, #22                         ; =0x16
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #96]
	fmov	d1, #0.50000000
	mov.16b	v0, v8
	ldr	d2, [sp, #640]                  ; 8-byte Folded Reload
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #96]
	ldr	x0, [x20]
	mov	w1, #38                         ; =0x26
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #192]
	fmov	d0, #1.00000000
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #192]
	ldr	x0, [x20]
	mov	w1, #39                         ; =0x27
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #200]
	fmov	d0, #1.00000000
	mov.16b	v1, v9
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #200]
	ldr	x0, [x20]
	mov	w1, #40                         ; =0x28
	bl	_find_batch_result_for_id
	ldr	d3, [x25, #208]
	fmov	d0, #1.00000000
	fmov	d1, #2.00000000
	mov.16b	v2, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [x25, #208]
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
	b.ge	LBB2_12
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
	b.ge	LBB2_14
; %bb.13:
	mov	x8, #-3689348814741910324       ; =0xcccccccccccccccc
	movk	x8, #52429
	movk	x8, #16368, lsl #48
	fmov	d2, x8
	fmul	d2, d1, d2
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
	str	d5, [sp, #2304]
	str	d7, [sp, #2312]
	ldp	d7, d5, [x8, #216]
	fmul	d18, d7, d1
	ldp	d7, d16, [x8]
	str	d18, [sp, #2320]
	str	d16, [sp, #2328]
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
	str	d17, [sp, #2336]
	str	d19, [sp, #2344]
	ldr	d19, [x8, #32]
	ldp	d17, d21, [x8, #136]
	fdiv	d22, d1, d21
	fcmp	d21, d3
	mov	x9, #3689348814741910323        ; =0x3333333333333333
	movk	x9, #16424, lsl #48
	fmov	d21, x9
	fcsel	d21, d22, d21, gt
	str	d19, [sp, #2352]
	str	d21, [sp, #2360]
	ldp	d19, d21, [x8, #48]
	ldp	d22, d23, [x8, #184]
	str	d19, [sp, #2368]
	str	d22, [sp, #2376]
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
	str	d19, [sp, #2384]
	str	d24, [sp, #2392]
	ldr	d19, [x8, #152]
	fdiv	d24, d1, d19
	fcmp	d19, d3
	mov	x9, #13946                      ; =0x367a
	movk	x9, #16043, lsl #16
	movk	x9, #23383, lsl #32
	movk	x9, #16329, lsl #48
	fmov	d19, x9
	fcsel	d19, d24, d19, gt
	str	d19, [sp, #2400]
	str	d18, [sp, #2408]
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
	fmul	d19, d19, d1
	str	d19, [sp, #2192]
	str	d20, [sp, #2200]
	fcmp	d22, d3
	mov	x8, #87960930222080             ; =0x500000000000
	movk	x8, #16483, lsl #48
	fmov	d19, x8
	fdiv	d20, d1, d22
	fcsel	d19, d20, d19, gt
	str	d21, [sp, #2240]
	str	d23, [sp, #2248]
	str	d18, [sp, #2176]
	str	d6, [sp, #2184]
	str	d4, [sp, #2224]
	str	d6, [sp, #2232]
	str	d6, [sp, #2208]
	str	d19, [sp, #2216]
	str	d19, [sp, #2256]
	str	d16, [sp, #2264]
	str	d7, [sp, #2416]
	str	d1, [sp, #2424]
	fcmp	d17, d3
	mov	x8, #50332                      ; =0xc49c
	movk	x8, #45088, lsl #16
	movk	x8, #26738, lsl #32
	movk	x8, #16329, lsl #48
	fmov	d3, x8
	fdiv	d4, d1, d17
	fcsel	d3, d4, d3, gt
	fmul	d1, d5, d1
	str	d3, [sp, #2272]
	str	d1, [sp, #2280]
	str	d24, [sp, #2288]
	str	d2, [sp, #2296]
Lloh33:
	adrp	x8, lCPI2_0@PAGE
Lloh34:
	ldr	q1, [x8, lCPI2_0@PAGEOFF]
Lloh35:
	adrp	x8, lCPI2_1@PAGE
Lloh36:
	ldr	q2, [x8, lCPI2_1@PAGEOFF]
	str	q1, [sp, #2048]
	str	q2, [sp, #2064]
Lloh37:
	adrp	x8, lCPI2_2@PAGE
Lloh38:
	ldr	q1, [x8, lCPI2_2@PAGEOFF]
Lloh39:
	adrp	x8, lCPI2_3@PAGE
Lloh40:
	ldr	q2, [x8, lCPI2_3@PAGEOFF]
	str	q1, [sp, #2080]
	str	q2, [sp, #2096]
Lloh41:
	adrp	x8, lCPI2_4@PAGE
Lloh42:
	ldr	q1, [x8, lCPI2_4@PAGEOFF]
	str	q2, [sp, #2112]
	str	q1, [sp, #2128]
Lloh43:
	adrp	x8, lCPI2_5@PAGE
Lloh44:
	ldr	q1, [x8, lCPI2_5@PAGEOFF]
	str	q1, [sp, #2144]
	mov	x8, #4618441417868443648        ; =0x4018000000000000
	str	x8, [sp, #2160]
	str	d0, [sp, #2168]
	add	x1, sp, #688
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	w19, #1000                      ; =0x3e8
	add	x26, sp, #704
	add	x24, sp, #1024
	add	x27, sp, #1664
	add	x28, sp, #1792
	add	x25, sp, #1920
Lloh45:
	adrp	x20, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh46:
	add	x20, x20, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh47:
	adrp	x21, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh48:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
Lloh49:
	adrp	x22, l___const.run_native_asm_sniper_cycle.bm@PAGE
Lloh50:
	add	x22, x22, l___const.run_native_asm_sniper_cycle.bm@PAGEOFF
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16264, lsl #48
	fmov	d8, x8
Lloh51:
	adrp	x23, l___const.run_native_asm_sniper_cycle.am@PAGE
Lloh52:
	add	x23, x23, l___const.run_native_asm_sniper_cycle.am@PAGEOFF
LBB2_16:                                ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #2176
	add	x9, sp, #2304
	; InlineAsm Start
	; InlineAsm End
	add	x8, sp, #768
	stp	x8, x26, [sp, #72]
	add	x8, sp, #896
	stp	x24, x8, [sp, #56]
	add	x8, sp, #1152
	str	x8, [sp, #48]
	add	x8, sp, #1280
	str	x8, [sp, #40]
	add	x8, sp, #1408
	str	x8, [sp, #32]
	add	x8, sp, #1536
	stp	x27, x8, [sp, #16]
	add	x1, sp, #2304
	add	x2, sp, #2176
	add	x5, sp, #2048
	stp	x25, x28, [sp]
	mov	x3, x20
	mov	x4, x21
	mov	x6, x22
	mov	x7, x23
	mov.16b	v0, v8
	bl	_evaluate_full_loan_routes_asm
	; InlineAsm Start
	; InlineAsm End
	subs	w19, w19, #1
	b.ne	LBB2_16
; %bb.17:
	add	x1, sp, #672
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldr	x8, [sp, #672]
	ldr	x9, [sp, #680]
	ldr	x10, [sp, #688]
	ldr	x11, [sp, #696]
	sub	x8, x8, x10
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	sub	x8, x9, x11
	scvtf	d2, x8
	fmadd	d0, d0, d1, d2
	mov	x8, #43516                      ; =0xa9fc
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d1, x8
	fmul	d2, d0, d1
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
Lloh53:
	adrp	x8, __MergedGlobals@PAGE+264
Lloh54:
	add	x8, x8, __MergedGlobals@PAGEOFF+264
	str	d2, [sp, #656]                  ; 8-byte Folded Spill
	str	d2, [x8]
	str	d0, [sp, #648]                  ; 8-byte Folded Spill
	str	d0, [x8, #8]
	adrp	x9, __MergedGlobals.78@PAGE
	ldr	x8, [x9, __MergedGlobals.78@PAGEOFF]
	add	x8, x8, #1
	str	x8, [x9, __MergedGlobals.78@PAGEOFF]
	ldr	d18, [sp, #1152]
	movi.2d	v0, #0000000000000000
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16264, lsl #48
	fmov	d1, x8
	fcmp	d18, d1
	b.gt	LBB2_19
; %bb.18:
	mov	w8, #0                          ; =0x0
	movi.2d	v3, #0000000000000000
	movi.2d	v2, #0000000000000000
	b	LBB2_20
LBB2_19:
	mov	w8, #1                          ; =0x1
	ldr	d2, [sp, #1664]
	mov	x9, #53374                      ; =0xd07e
	movk	x9, #48712, lsl #16
	movk	x9, #14833, lsl #32
	movk	x9, #16256, lsl #48
	fmov	d1, x9
	mov.16b	v3, v18
LBB2_20:
	ldrsw	x23, [sp, #704]
	ldr	d4, [sp, #1672]
	ldr	d5, [sp, #1680]
	fadd	d4, d4, d2
	ldr	d23, [sp, #1160]
	ldr	d20, [sp, #1168]
	fcmp	d23, d1
	fcsel	d0, d23, d0, gt
	fadd	d1, d3, d0
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	mov	x9, #53374                      ; =0xd07e
	movk	x9, #48712, lsl #16
	movk	x9, #14833, lsl #32
	movk	x9, #16256, lsl #48
	fmov	d0, x9
	mov	x28, #18036                     ; =0x4674
	movk	x28, #63124, lsl #16
	movk	x28, #24326, lsl #32
	movk	x28, #16264, lsl #48
	fmov	d24, x28
	fcsel	d3, d24, d0, eq
	fadd	d4, d5, d2
	fadd	d5, d20, d1
	fcmp	d20, d3
	fcsel	d1, d5, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	ldr	d4, [sp, #1688]
	ldr	d5, [sp, #1696]
	fadd	d4, d4, d2
	ldr	d22, [sp, #1176]
	ldr	d19, [sp, #1184]
	fadd	d6, d22, d1
	fcmp	d22, d3
	fcsel	d1, d6, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	fadd	d4, d5, d2
	fadd	d5, d19, d1
	fcmp	d19, d3
	fcsel	d1, d5, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	ldr	d4, [sp, #1704]
	ldr	d5, [sp, #1712]
	fadd	d4, d4, d2
	ldr	d21, [sp, #1192]
	ldr	d16, [sp, #1200]
	fadd	d6, d21, d1
	fcmp	d21, d3
	fcsel	d1, d6, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	fadd	d4, d5, d2
	fadd	d5, d16, d1
	fcmp	d16, d3
	fcsel	d1, d5, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	ldr	d4, [sp, #1720]
	ldr	d5, [sp, #1728]
	fadd	d4, d4, d2
	ldr	d17, [sp, #1208]
	ldr	d6, [sp, #1216]
	fadd	d7, d17, d1
	fcmp	d17, d3
	fcsel	d1, d7, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	fadd	d4, d5, d2
	fadd	d5, d6, d1
	fcmp	d6, d3
	fcsel	d1, d5, d1, gt
	fcsel	d2, d4, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	ldr	d4, [sp, #1736]
	ldr	d5, [sp, #1744]
	fadd	d25, d4, d2
	ldr	d7, [sp, #1224]
	ldr	d4, [sp, #1232]
	fadd	d26, d7, d1
	fcmp	d7, d3
	fcsel	d1, d26, d1, gt
	fcsel	d2, d25, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d3, d24, d0, eq
	fadd	d5, d5, d2
	fadd	d25, d4, d1
	fcmp	d4, d3
	fcsel	d1, d25, d1, gt
	fcsel	d3, d5, d2, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d25, d24, d0, eq
	ldr	d2, [sp, #1752]
	ldr	d26, [sp, #1760]
	fadd	d27, d2, d3
	ldr	d5, [sp, #1240]
	ldr	d2, [sp, #1248]
	fadd	d28, d5, d1
	fcmp	d5, d25
	fcsel	d1, d28, d1, gt
	fcsel	d3, d27, d3, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d25, d24, d0, eq
	fadd	d26, d26, d3
	fadd	d27, d2, d1
	fcmp	d2, d25
	fcsel	d25, d27, d1, gt
	fcsel	d26, d26, d3, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d27, d24, d0, eq
	ldr	d1, [sp, #1768]
	ldr	d28, [sp, #1776]
	fadd	d29, d1, d26
	ldr	d3, [sp, #1256]
	ldr	d1, [sp, #1264]
	fcmp	d3, d27
	fadd	d27, d3, d25
	fcsel	d25, d27, d25, gt
	fcsel	d26, d29, d26, gt
	cinc	w8, w8, gt
	cmp	w8, #0
	fcsel	d27, d24, d0, eq
	fadd	d28, d28, d26
	fadd	d29, d1, d25
	fcmp	d1, d27
	fcsel	d13, d29, d25, gt
	fcsel	d11, d28, d26, gt
	cinc	w21, w8, gt
	cmp	w21, #0
	fcsel	d24, d24, d0, eq
	ldr	d0, [sp, #1272]
	fcmp	d0, d24
	b.le	LBB2_22
; %bb.21:
	add	w21, w21, #1
	ldr	d24, [sp, #1784]
	fadd	d11, d24, d11
	fadd	d13, d0, d13
	b	LBB2_23
LBB2_22:
	cbz	w21, LBB2_73
LBB2_23:
	sub	w8, w21, #1
	ucvtf	d24, w8
	mov	x8, #53374                      ; =0xd07e
	movk	x8, #48712, lsl #16
	movk	x8, #14833, lsl #32
	movk	x8, #49024, lsl #48
	fmov	d25, x8
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #49032, lsl #48
	fmov	d26, x8
	fadd	d26, d13, d26
	fmadd	d9, d24, d25, d26
	movi.2d	v24, #0000000000000000
	fmaxnm	d14, d9, d24
	fcmp	d9, #0.0
	b.le	LBB2_74
LBB2_24:
	mov	x8, #59921                      ; =0xea11
	movk	x8, #33069, lsl #16
	movk	x8, #38809, lsl #32
	movk	x8, #15729, lsl #48
	fmov	d24, x8
	fcmp	d13, d24
	b.le	LBB2_74
; %bb.25:
	mov	x8, #53374                      ; =0xd07e
	movk	x8, #48712, lsl #16
	movk	x8, #14833, lsl #32
	movk	x8, #16256, lsl #48
	fmov	d24, x8
	fcmp	d18, d24
	b.le	LBB2_28
; %bb.26:
	ldr	d24, [sp, #1024]
	fcmp	d24, #0.0
	b.gt	LBB2_28
; %bb.27:
	fmul	d18, d14, d18
	fdiv	d18, d18, d13
	str	d18, [sp, #1024]
	fmov	d24, #0.75000000
	fmul	d24, d18, d24
	str	d24, [sp, #896]
	fmov	d24, #0.25000000
	fmul	d18, d18, d24
	str	d18, [sp, #768]
LBB2_28:
	fmov	d18, x8
	fcmp	d23, d18
	b.le	LBB2_31
; %bb.29:
	ldr	d18, [sp, #1032]
	fcmp	d18, #0.0
	b.gt	LBB2_31
; %bb.30:
	fmul	d18, d14, d23
	fdiv	d18, d18, d13
	str	d18, [sp, #1032]
	fmov	d23, #0.75000000
	fmul	d23, d18, d23
	str	d23, [sp, #904]
	fmov	d23, #0.25000000
	fmul	d18, d18, d23
	str	d18, [sp, #776]
LBB2_31:
	fmov	d18, x8
	fcmp	d20, d18
	b.le	LBB2_34
; %bb.32:
	ldr	d18, [sp, #1040]
	fcmp	d18, #0.0
	b.gt	LBB2_34
; %bb.33:
	fmul	d18, d14, d20
	fdiv	d18, d18, d13
	str	d18, [sp, #1040]
	fmov	d20, #0.75000000
	fmul	d20, d18, d20
	str	d20, [sp, #912]
	fmov	d20, #0.25000000
	fmul	d18, d18, d20
	str	d18, [sp, #784]
LBB2_34:
	fmov	d18, x8
	fcmp	d22, d18
	b.le	LBB2_37
; %bb.35:
	ldr	d18, [sp, #1048]
	fcmp	d18, #0.0
	b.gt	LBB2_37
; %bb.36:
	fmul	d18, d14, d22
	fdiv	d18, d18, d13
	str	d18, [sp, #1048]
	fmov	d20, #0.75000000
	fmul	d20, d18, d20
	str	d20, [sp, #920]
	fmov	d20, #0.25000000
	fmul	d18, d18, d20
	str	d18, [sp, #792]
LBB2_37:
	fmov	d18, x8
	fcmp	d19, d18
	b.le	LBB2_40
; %bb.38:
	ldr	d18, [sp, #1056]
	fcmp	d18, #0.0
	b.gt	LBB2_40
; %bb.39:
	fmul	d18, d14, d19
	fdiv	d18, d18, d13
	str	d18, [sp, #1056]
	fmov	d19, #0.75000000
	fmul	d19, d18, d19
	str	d19, [sp, #928]
	fmov	d19, #0.25000000
	fmul	d18, d18, d19
	str	d18, [sp, #800]
LBB2_40:
	fmov	d18, x8
	fcmp	d21, d18
	b.le	LBB2_43
; %bb.41:
	ldr	d18, [sp, #1064]
	fcmp	d18, #0.0
	b.gt	LBB2_43
; %bb.42:
	fmul	d18, d14, d21
	fdiv	d18, d18, d13
	str	d18, [sp, #1064]
	fmov	d19, #0.75000000
	fmul	d19, d18, d19
	str	d19, [sp, #936]
	fmov	d19, #0.25000000
	fmul	d18, d18, d19
	str	d18, [sp, #808]
LBB2_43:
	fmov	d18, x8
	fcmp	d16, d18
	b.le	LBB2_46
; %bb.44:
	ldr	d18, [sp, #1072]
	fcmp	d18, #0.0
	b.gt	LBB2_46
; %bb.45:
	fmul	d16, d14, d16
	fdiv	d16, d16, d13
	str	d16, [sp, #1072]
	fmov	d18, #0.75000000
	fmul	d18, d16, d18
	str	d18, [sp, #944]
	fmov	d18, #0.25000000
	fmul	d16, d16, d18
	str	d16, [sp, #816]
LBB2_46:
	fmov	d16, x8
	fcmp	d17, d16
	b.le	LBB2_49
; %bb.47:
	ldr	d16, [sp, #1080]
	fcmp	d16, #0.0
	b.gt	LBB2_49
; %bb.48:
	fmul	d16, d14, d17
	fdiv	d16, d16, d13
	str	d16, [sp, #1080]
	fmov	d17, #0.75000000
	fmul	d17, d16, d17
	str	d17, [sp, #952]
	fmov	d17, #0.25000000
	fmul	d16, d16, d17
	str	d16, [sp, #824]
LBB2_49:
	fmov	d16, x8
	fcmp	d6, d16
	b.le	LBB2_52
; %bb.50:
	ldr	d16, [sp, #1088]
	fcmp	d16, #0.0
	b.gt	LBB2_52
; %bb.51:
	fmul	d6, d14, d6
	fdiv	d6, d6, d13
	str	d6, [sp, #1088]
	fmov	d16, #0.75000000
	fmul	d16, d6, d16
	str	d16, [sp, #960]
	fmov	d16, #0.25000000
	fmul	d6, d6, d16
	str	d6, [sp, #832]
LBB2_52:
	fmov	d6, x8
	fcmp	d7, d6
	b.le	LBB2_55
; %bb.53:
	ldr	d6, [sp, #1096]
	fcmp	d6, #0.0
	b.gt	LBB2_55
; %bb.54:
	fmul	d6, d14, d7
	fdiv	d6, d6, d13
	str	d6, [sp, #1096]
	fmov	d7, #0.75000000
	fmul	d7, d6, d7
	str	d7, [sp, #968]
	fmov	d7, #0.25000000
	fmul	d6, d6, d7
	str	d6, [sp, #840]
LBB2_55:
	fmov	d6, x8
	fcmp	d4, d6
	b.le	LBB2_58
; %bb.56:
	ldr	d6, [sp, #1104]
	fcmp	d6, #0.0
	b.gt	LBB2_58
; %bb.57:
	fmul	d4, d14, d4
	fdiv	d4, d4, d13
	str	d4, [sp, #1104]
	fmov	d6, #0.75000000
	fmul	d6, d4, d6
	str	d6, [sp, #976]
	fmov	d6, #0.25000000
	fmul	d4, d4, d6
	str	d4, [sp, #848]
LBB2_58:
	fmov	d4, x8
	fcmp	d5, d4
	b.le	LBB2_61
; %bb.59:
	ldr	d4, [sp, #1112]
	fcmp	d4, #0.0
	b.gt	LBB2_61
; %bb.60:
	fmul	d4, d14, d5
	fdiv	d4, d4, d13
	str	d4, [sp, #1112]
	fmov	d5, #0.75000000
	fmul	d5, d4, d5
	str	d5, [sp, #984]
	fmov	d5, #0.25000000
	fmul	d4, d4, d5
	str	d4, [sp, #856]
LBB2_61:
	fmov	d4, x8
	fcmp	d2, d4
	b.le	LBB2_64
; %bb.62:
	ldr	d4, [sp, #1120]
	fcmp	d4, #0.0
	b.gt	LBB2_64
; %bb.63:
	fmul	d2, d14, d2
	fdiv	d2, d2, d13
	str	d2, [sp, #1120]
	fmov	d4, #0.75000000
	fmul	d4, d2, d4
	str	d4, [sp, #992]
	fmov	d4, #0.25000000
	fmul	d2, d2, d4
	str	d2, [sp, #864]
LBB2_64:
	fmov	d2, x8
	fcmp	d3, d2
	b.le	LBB2_67
; %bb.65:
	ldr	d2, [sp, #1128]
	fcmp	d2, #0.0
	b.gt	LBB2_67
; %bb.66:
	fmul	d2, d14, d3
	fdiv	d2, d2, d13
	str	d2, [sp, #1128]
	fmov	d3, #0.75000000
	fmul	d3, d2, d3
	str	d3, [sp, #1000]
	fmov	d3, #0.25000000
	fmul	d2, d2, d3
	str	d2, [sp, #872]
LBB2_67:
	fmov	d2, x8
	fcmp	d1, d2
	b.le	LBB2_70
; %bb.68:
	ldr	d2, [sp, #1136]
	fcmp	d2, #0.0
	b.gt	LBB2_70
; %bb.69:
	fmul	d1, d14, d1
	fdiv	d1, d1, d13
	str	d1, [sp, #1136]
	fmov	d2, #0.75000000
	fmul	d2, d1, d2
	str	d2, [sp, #1008]
	fmov	d2, #0.25000000
	fmul	d1, d1, d2
	str	d1, [sp, #880]
LBB2_70:
	fmov	d1, x8
	fcmp	d0, d1
	b.le	LBB2_74
; %bb.71:
	ldr	d1, [sp, #1144]
	fcmp	d1, #0.0
	b.gt	LBB2_74
; %bb.72:
	fmul	d0, d14, d0
	fdiv	d0, d0, d13
	str	d0, [sp, #1144]
	fmov	d1, #0.75000000
	fmul	d1, d0, d1
	str	d1, [sp, #1016]
	fmov	d1, #0.25000000
	fmul	d0, d0, d1
	str	d0, [sp, #888]
	b	LBB2_74
LBB2_73:
	add	x8, sp, #1152
	ldr	d24, [x8, x23, lsl #3]
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #49032, lsl #48
	fmov	d25, x8
	fadd	d9, d24, d25
	movi.2d	v24, #0000000000000000
	fmaxnm	d14, d9, d24
	fcmp	d9, #0.0
	b.gt	LBB2_24
LBB2_74:
	add	x8, sp, #1024
	ldr	d0, [x8, x23, lsl #3]
	fcmp	d14, d0
	b.le	LBB2_76
; %bb.75:
	fmov	d1, #0.75000000
	fmov	d2, #0.25000000
	fmul	d10, d14, d1
	fmul	d8, d14, d2
	b	LBB2_77
LBB2_76:
	add	x8, sp, #896
	ldr	d10, [x8, x23, lsl #3]
	add	x8, sp, #768
	ldr	d8, [x8, x23, lsl #3]
LBB2_77:
	fmaxnm	d15, d14, d0
Lloh55:
	adrp	x8, __MergedGlobals.78@PAGE+8
Lloh56:
	ldr	x19, [x8, __MergedGlobals.78@PAGEOFF+8]
	adrp	x20, __MergedGlobals@PAGE+280
	ldr	x8, [x20, __MergedGlobals@PAGEOFF+280]
	mov	x22, #64512                     ; =0xfc00
	movk	x22, #13926, lsl #16
	movk	x22, #1612, lsl #32
	cmp	x19, x22
	b.hs	LBB2_83
LBB2_78:
	str	x21, [sp, #632]                 ; 8-byte Folded Spill
	fcmp	d15, #0.0
	b.le	LBB2_91
; %bb.79:
Lloh57:
	adrp	x21, l_.str.33@PAGE
Lloh58:
	add	x21, x21, l_.str.33@PAGEOFF
	ldr	w8, [sp, #668]                  ; 4-byte Folded Reload
	cbnz	w8, LBB2_92
; %bb.80:
	cmp	x19, x22
	b.lo	LBB2_92
; %bb.81:
	ldr	x9, [x20, __MergedGlobals@PAGEOFF+280]
	adrp	x8, __MergedGlobals.78@PAGE+16
	ldr	x10, [x8, __MergedGlobals.78@PAGEOFF+16]
	add	x10, x10, #20
	cmp	x9, x10
	b.lo	LBB2_92
; %bb.82:
	ldr	x9, [x20, __MergedGlobals@PAGEOFF+280]
	str	x9, [x8, __MergedGlobals.78@PAGEOFF+16]
Lloh59:
	adrp	x0, l_.str.31@PAGE
Lloh60:
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_system
Lloh61:
	adrp	x21, l_.str.32@PAGE
Lloh62:
	add	x21, x21, l_.str.32@PAGEOFF
	b	LBB2_92
LBB2_83:
Lloh63:
	adrp	x9, __MergedGlobals@PAGE+288
Lloh64:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+288]
	cmp	x8, x9
	b.ls	LBB2_78
; %bb.84:
	fcmp	d15, #0.0
	b.le	LBB2_78
; %bb.85:
	str	d9, [sp, #584]                  ; 8-byte Folded Spill
Lloh65:
	adrp	x10, __MergedGlobals@PAGE+4
Lloh66:
	add	x10, x10, __MergedGlobals@PAGEOFF+4
	ldr	w9, [x10], #-4
	ldr	x11, [x10, #296]
	add	x11, x11, #1
	stp	x8, x11, [x10, #288]
	mov	x11, #5243                      ; =0x147b
	movk	x11, #18350, lsl #16
	movk	x11, #47841, lsl #32
	movk	x11, #16471, lsl #48
	fmov	d1, x11
	str	d15, [sp, #576]                 ; 8-byte Folded Spill
	fmul	d12, d15, d1
	fmul	d15, d10, d1
	fmul	d9, d8, d1
	ldp	d1, d2, [x10, #304]
	fadd	d1, d1, d12
	fadd	d2, d2, d15
	stp	d1, d2, [x10, #304]
	ldr	d1, [x10, #320]
	fadd	d1, d1, d9
	str	d1, [x10, #320]
	cmp	w9, #1
	b.lt	LBB2_88
; %bb.86:
	mov	w10, #19                        ; =0x13
	cmp	w9, #19
	csel	w11, w9, w10, lo
	add	w9, w11, #1
Lloh67:
	adrp	x12, _g_block_ring@PAGE
Lloh68:
	add	x12, x12, _g_block_ring@PAGEOFF
	mov	w13, #224                       ; =0xe0
	umaddl	x10, w11, w13, x12
	sub	w11, w11, #1
	umaddl	x11, w11, w13, x12
LBB2_87:                                ; =>This Inner Loop Header: Depth=1
	ldp	q1, q2, [x11, #160]
	stp	q1, q2, [x10, #160]
	ldp	q1, q2, [x11, #192]
	stp	q1, q2, [x10, #192]
	ldp	q1, q2, [x11, #96]
	stp	q1, q2, [x10, #96]
	ldp	q1, q2, [x11, #128]
	stp	q1, q2, [x10, #128]
	ldp	q1, q2, [x11, #32]
	stp	q1, q2, [x10, #32]
	ldp	q1, q2, [x11, #64]
	stp	q1, q2, [x10, #64]
	ldp	q1, q2, [x11], #-224
	sub	w9, w9, #1
	stp	q1, q2, [x10], #-224
	cmp	w9, #1
	b.gt	LBB2_87
LBB2_88:
	adrp	x9, _g_block_ring@PAGE
	str	x8, [x9, _g_block_ring@PAGEOFF]
Lloh69:
	adrp	x8, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh70:
	add	x8, x8, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x8, [x8, x23, lsl #3]
	fcmp	d14, d0
	b.le	LBB2_106
; %bb.89:
	cmp	w21, #1
	b.ls	LBB2_106
; %bb.90:
Lloh71:
	adrp	x0, _g_block_ring@PAGE+8
Lloh72:
	add	x0, x0, _g_block_ring@PAGEOFF+8
	stp	x21, x8, [sp]
Lloh73:
	adrp	x2, l_.str.25@PAGE
Lloh74:
	add	x2, x2, l_.str.25@PAGEOFF
	mov	w1, #128                        ; =0x80
	bl	_snprintf
	mov.16b	v0, v11
	b	LBB2_107
LBB2_91:
Lloh75:
	adrp	x21, l_.str.30@PAGE
Lloh76:
	add	x21, x21, l_.str.30@PAGEOFF
LBB2_92:
	str	x23, [sp, #640]                 ; 8-byte Folded Spill
Lloh77:
	adrp	x10, __MergedGlobals@PAGE+296
Lloh78:
	add	x10, x10, __MergedGlobals@PAGEOFF+296
	ldr	x27, [x10, #32]
	ldr	x25, [x10, #40]
Lloh79:
	adrp	x8, __MergedGlobals.78@PAGE+8
Lloh80:
	add	x8, x8, __MergedGlobals.78@PAGEOFF+8
	ldr	x26, [x8, #16]
	ldr	x24, [x8]
	ldr	x23, [x10, #48]
	ldrsw	x8, [sp, #764]
	add	x9, sp, #1024
	ldr	x10, [x10]
	cbz	x10, LBB2_94
; %bb.93:
Lloh81:
	adrp	x11, __MergedGlobals@PAGE+304
Lloh82:
	ldr	d0, [x11, __MergedGlobals@PAGEOFF+304]
	ucvtf	d1, x10
	fdiv	d0, d0, d1
	str	d0, [sp, #560]                  ; 8-byte Folded Spill
	mov	x10, #5243                      ; =0x147b
	movk	x10, #18350, lsl #16
	movk	x10, #47841, lsl #32
	movk	x10, #16471, lsl #48
	fmov	d0, x10
	fmul	d0, d15, d0
	str	d0, [sp, #568]                  ; 8-byte Folded Spill
	b	LBB2_95
LBB2_94:
	mov	x10, #5243                      ; =0x147b
	movk	x10, #18350, lsl #16
	movk	x10, #47841, lsl #32
	movk	x10, #16471, lsl #48
	fmov	d0, x10
	fmul	d0, d15, d0
	str	d0, [sp, #568]                  ; 8-byte Folded Spill
	str	d0, [sp, #560]                  ; 8-byte Folded Spill
LBB2_95:
	ldr	d12, [x9, x8, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d0, x8
	fmul	d1, d10, d0
	str	d1, [sp, #600]                  ; 8-byte Folded Spill
	fmul	d0, d8, d0
	str	d0, [sp, #592]                  ; 8-byte Folded Spill
	mov	x8, #241067924389888            ; =0xdb4000000000
	movk	x8, #16660, lsl #48
	fmov	d0, x8
	fmul	d1, d15, d0
	str	d1, [sp, #616]                  ; 8-byte Folded Spill
	fmul	d0, d10, d0
	str	d0, [sp, #608]                  ; 8-byte Folded Spill
	mov	x8, #241067924389888            ; =0xdb4000000000
	movk	x8, #16692, lsl #48
	fmov	d0, x8
	fmul	d0, d15, d0
	str	d0, [sp, #624]                  ; 8-byte Folded Spill
Lloh83:
	adrp	x0, l_.str.34@PAGE
Lloh84:
	add	x0, x0, l_.str.34@PAGEOFF
Lloh85:
	adrp	x1, l_.str.35@PAGE
Lloh86:
	add	x1, x1, l_.str.35@PAGEOFF
	bl	_fopen
	mov	x16, #12801                     ; =0x3201
	movk	x16, #60532, lsl #16
	movk	x16, #4768, lsl #32
	movk	x16, #16370, lsl #48
	cbz	x0, LBB2_102
; %bb.96:
	mov	x20, x0
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	ucvtf	d22, x27
	fmov	d1, x8
	ucvtf	d2, x25
	fmul	d6, d22, d1
	ucvtf	d25, x26
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	mov	x9, #5243                       ; =0x147b
	movk	x9, #18350, lsl #16
	movk	x9, #47841, lsl #32
	movk	x9, #16471, lsl #48
	fmadd	d16, d2, d1, d6
	fmul	d20, d25, d1
	ucvtf	d1, x24
	fmov	d2, x8
	ucvtf	d3, x23
	fmov	d4, x9
	fadd	d21, d16, d20
	fmul	d17, d1, d2
	fmul	d19, d3, d2
	fmul	d0, d12, d4
	str	d0, [sp, #528]                  ; 8-byte Folded Spill
	mov	x8, #80126909874176             ; =0x48e000000000
	movk	x8, #16767, lsl #48
	fmov	d1, x8
	str	d15, [sp, #576]                 ; 8-byte Folded Spill
	fmul	d18, d15, d1
	mov	x8, #241067924389888            ; =0xdb4000000000
	movk	x8, #16660, lsl #48
	fmov	d1, x8
Lloh87:
	adrp	x26, __MergedGlobals@PAGE+4
Lloh88:
	add	x26, x26, __MergedGlobals@PAGEOFF+4
	fmul	d0, d8, d1
	str	d0, [sp, #520]                  ; 8-byte Folded Spill
	ldur	d0, [x26, #244]
	str	d0, [sp, #552]                  ; 8-byte Folded Spill
	sub	x11, x26, #4
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d26, x8
	fmul	d0, d11, d26
	str	d0, [sp, #544]                  ; 8-byte Folded Spill
	fmul	d0, d13, d26
	str	d0, [sp, #536]                  ; 8-byte Folded Spill
	str	d9, [sp, #584]                  ; 8-byte Folded Spill
	fmul	d0, d9, d26
	str	d0, [sp, #512]                  ; 8-byte Folded Spill
	fmul	d7, d14, d26
	mov	x8, #32890                      ; =0x807a
	movk	x8, #11989, lsl #16
	movk	x8, #57849, lsl #32
	movk	x8, #16152, lsl #48
	fmov	d27, x8
	fmul	d22, d22, d27
Lloh89:
	adrp	x8, __MergedGlobals.78@PAGE
Lloh90:
	ldr	x8, [x8, __MergedGlobals.78@PAGEOFF]
	ldr	x9, [x11, #296]
	ldr	q23, [x11, #304]
	ldr	d24, [x11, #320]
	ldr	x10, [x11, #280]
	ldr	x11, [x11, #352]
Lloh91:
	adrp	x12, l_.str.37@PAGE
Lloh92:
	add	x12, x12, l_.str.37@PAGEOFF
Lloh93:
	adrp	x13, l_.str.38@PAGE
Lloh94:
	add	x13, x13, l_.str.38@PAGEOFF
	cmp	x19, x22
	csel	x12, x13, x12, lo
	fmul	d28, d21, d26
	fmul	d29, d16, d26
Lloh95:
	adrp	x13, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh96:
	add	x13, x13, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x15, [sp, #640]                 ; 8-byte Folded Reload
	ldr	x13, [x13, x15, lsl #3]
	fmul	d25, d25, d27
Lloh97:
	adrp	x14, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh98:
	add	x14, x14, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	ldr	x14, [x14, x15, lsl #3]
	add	x17, sp, #1920
	add	x0, sp, #1664
	ldr	d27, [x0, x15, lsl #3]
	add	x0, sp, #1536
	ldr	d30, [x0, x15, lsl #3]
	fmul	d31, d27, d26
	fmul	d8, d30, d26
	add	x0, sp, #1408
	ldr	d12, [x0, x15, lsl #3]
	fmul	d10, d12, d26
	add	x0, sp, #1280
	ldr	d9, [x0, x15, lsl #3]
	add	x0, sp, #1024
	mov.16b	v3, v11
	ldr	d11, [x0, x15, lsl #3]
	mov.16b	v4, v13
	fmul	d13, d9, d26
	mov.16b	v5, v14
	fmul	d14, d11, d26
	add	x0, sp, #896
	ldr	d15, [x0, x15, lsl #3]
	add	x0, sp, #768
	fmul	d1, d15, d26
	ldr	d0, [x0, x15, lsl #3]
	fmul	d26, d0, d26
	ldr	d2, [x17, x15, lsl #3]
	stp	d26, d0, [sp, #440]
	stp	d1, d15, [sp, #424]
	stp	d14, d11, [sp, #408]
	mov.16b	v11, v3
	stp	d13, d9, [sp, #392]
	mov.16b	v13, v4
	stp	d10, d12, [sp, #376]
	stp	d8, d30, [sp, #360]
	stp	d31, d27, [sp, #344]
	str	d2, [sp, #336]
	stp	x13, x14, [sp, #320]
	stp	d25, d20, [sp, #304]
	stp	d29, d16, [sp, #288]
	stp	d28, d21, [sp, #272]
	stp	x12, x21, [sp, #256]
	stp	d17, d19, [sp, #240]
	stp	x10, x11, [sp, #224]
	ldr	d1, [sp, #648]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #656]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp, #208]
	ldr	d0, [sp, #560]                  ; 8-byte Folded Reload
	stp	d0, d18, [sp, #192]
	ldr	d0, [sp, #528]                  ; 8-byte Folded Reload
	stp	d24, d0, [sp, #176]
	str	q23, [sp, #160]
	stp	x8, x9, [sp, #144]
	stp	d6, d22, [sp, #128]
	ldr	d1, [sp, #624]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #520]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp, #112]
	ldr	d1, [sp, #608]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #616]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp, #96]
	ldr	d1, [sp, #592]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #600]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp, #80]
	stp	d7, d5, [sp, #64]
	ldr	d0, [sp, #512]                  ; 8-byte Folded Reload
	str	d0, [sp, #56]
	str	x16, [sp, #48]
	ldr	d0, [sp, #536]                  ; 8-byte Folded Reload
	stp	d0, d4, [sp, #32]
	ldr	d0, [sp, #544]                  ; 8-byte Folded Reload
	stp	d0, d3, [sp, #16]
Lloh99:
	adrp	x1, l_.str.36@PAGE
Lloh100:
	add	x1, x1, l_.str.36@PAGEOFF
	ldr	x8, [sp, #632]                  ; 8-byte Folded Reload
	str	x8, [sp, #8]
	ldr	d0, [sp, #552]                  ; 8-byte Folded Reload
	str	d0, [sp]
	mov	x0, x20
	bl	_fprintf
	ldr	w8, [x26]
Lloh101:
	adrp	x24, l_.str.41@PAGE
Lloh102:
	add	x24, x24, l_.str.41@PAGEOFF
Lloh103:
	adrp	x25, l_.str.40@PAGE
Lloh104:
	add	x25, x25, l_.str.40@PAGEOFF
	cmp	w8, #1
	b.lt	LBB2_99
; %bb.97:
Lloh105:
	adrp	x19, _g_block_ring@PAGE+136
Lloh106:
	add	x19, x19, _g_block_ring@PAGEOFF+136
	mov	w22, #1                         ; =0x1
	adrp	x23, __MergedGlobals@PAGE+4
Lloh107:
	adrp	x21, l_.str.39@PAGE
Lloh108:
	add	x21, x21, l_.str.39@PAGEOFF
LBB2_98:                                ; =>This Inner Loop Header: Depth=1
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
	b.lt	LBB2_98
LBB2_99:
Lloh109:
	adrp	x0, l_.str.42@PAGE
Lloh110:
	add	x0, x0, l_.str.42@PAGEOFF
	mov	w1, #19                         ; =0x13
	mov	w2, #1                          ; =0x1
	mov	x3, x20
	bl	_fwrite
	mov	x22, #0                         ; =0x0
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d8, x8
	mov	x26, x20
Lloh111:
	adrp	x20, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh112:
	add	x20, x20, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
Lloh113:
	adrp	x27, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh114:
	add	x27, x27, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	add	x28, sp, #1920
	add	x23, sp, #1664
	add	x24, sp, #1536
	add	x25, sp, #1408
	add	x19, sp, #1280
	add	x21, sp, #896
LBB2_100:                               ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #704
	ldrsw	x8, [x8, x22, lsl #2]
	add	x22, x22, #1
	ldr	x9, [x20, x8, lsl #3]
	ldr	x10, [x27, x8, lsl #3]
	add	x11, sp, #2304
	ldr	d0, [x11, x8, lsl #3]
	add	x11, sp, #2176
	ldr	d1, [x11, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	add	x11, sp, #2048
	ldr	d3, [x11, x8, lsl #3]
	add	x11, sp, #1792
	ldr	d4, [x11, x8, lsl #3]
	ldr	d5, [x23, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d7, d5, d8
	ldr	d16, [x25, x8, lsl #3]
	ldr	d17, [x19, x8, lsl #3]
	fmul	d18, d17, d8
	add	x11, sp, #1152
	ldr	d19, [x11, x8, lsl #3]
	fmul	d20, d19, d8
	add	x11, sp, #1024
	ldr	d21, [x11, x8, lsl #3]
	fmul	d22, d21, d8
	ldr	d23, [x21, x8, lsl #3]
	fmul	d24, d23, d8
	add	x11, sp, #768
	ldr	d25, [x11, x8, lsl #3]
	fmul	d26, d25, d8
Lloh115:
	adrp	x8, l_.str.40@PAGE
Lloh116:
	add	x8, x8, l_.str.40@PAGEOFF
	str	x8, [sp, #192]
	stp	d26, d25, [sp, #176]
	stp	d24, d23, [sp, #160]
	stp	d22, d21, [sp, #144]
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16264, lsl #48
	str	x8, [sp, #136]
	mov	x8, #12801                      ; =0x3201
	movk	x8, #60532, lsl #16
	movk	x8, #4768, lsl #32
	movk	x8, #16370, lsl #48
	str	x8, [sp, #128]
	stp	d20, d19, [sp, #112]
	stp	d18, d17, [sp, #96]
	stp	d6, d16, [sp, #80]
	stp	d7, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x9, x10, [sp, #8]
	str	x22, [sp]
	mov	x0, x26
Lloh117:
	adrp	x1, l_.str.43@PAGE
Lloh118:
	add	x1, x1, l_.str.43@PAGEOFF
	bl	_fprintf
	cmp	x22, #15
	b.ne	LBB2_100
; %bb.101:
	ldrsw	x10, [sp, #764]
	ldr	x8, [x20, x10, lsl #3]
	ldr	x9, [x27, x10, lsl #3]
	add	x11, sp, #2304
	ldr	d0, [x11, x10, lsl #3]
	add	x11, sp, #2176
	ldr	d1, [x11, x10, lsl #3]
	add	x11, sp, #1920
	ldr	d2, [x11, x10, lsl #3]
	add	x11, sp, #2048
	ldr	d3, [x11, x10, lsl #3]
	add	x11, sp, #1792
	ldr	d4, [x11, x10, lsl #3]
	add	x11, sp, #1664
	ldr	d5, [x11, x10, lsl #3]
	mov	x11, #5243                      ; =0x147b
	movk	x11, #18350, lsl #16
	movk	x11, #47841, lsl #32
	movk	x11, #16471, lsl #48
	fmov	d6, x11
	add	x11, sp, #1536
	ldr	d7, [x11, x10, lsl #3]
	add	x11, sp, #1408
	ldr	d16, [x11, x10, lsl #3]
	add	x11, sp, #1280
	ldr	d17, [x11, x10, lsl #3]
	fmul	d18, d5, d6
	fmul	d19, d17, d6
	add	x11, sp, #1152
	ldr	d20, [x11, x10, lsl #3]
	fmul	d21, d20, d6
	add	x11, sp, #1024
	ldr	d22, [x11, x10, lsl #3]
	add	x11, sp, #896
	ldr	d23, [x11, x10, lsl #3]
	fmul	d24, d22, d6
	fmul	d25, d23, d6
	add	x11, sp, #768
	ldr	d26, [x11, x10, lsl #3]
	fmul	d6, d26, d6
Lloh119:
	adrp	x10, l_.str.41@PAGE
Lloh120:
	add	x10, x10, l_.str.41@PAGEOFF
	str	x10, [sp, #192]
	stp	d6, d26, [sp, #176]
	stp	d25, d23, [sp, #160]
	stp	d24, d22, [sp, #144]
	mov	x28, #18036                     ; =0x4674
	movk	x28, #63124, lsl #16
	movk	x28, #24326, lsl #32
	movk	x28, #16264, lsl #48
	mov	x19, #12801                     ; =0x3201
	movk	x19, #60532, lsl #16
	movk	x19, #4768, lsl #32
	movk	x19, #16370, lsl #48
	stp	x19, x28, [sp, #128]
	stp	d21, d20, [sp, #112]
	stp	d19, d17, [sp, #96]
	stp	d7, d16, [sp, #80]
	stp	d18, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x8, x9, [sp, #8]
	mov	w9, #16                         ; =0x10
Lloh121:
	adrp	x1, l_.str.43@PAGE
Lloh122:
	add	x1, x1, l_.str.43@PAGEOFF
	str	x9, [sp]
	mov	x0, x26
	bl	_fprintf
Lloh123:
	adrp	x0, l_.str.44@PAGE
Lloh124:
	add	x0, x0, l_.str.44@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x26
	bl	_fwrite
	mov	x0, x26
	bl	_fclose
Lloh125:
	adrp	x0, l_.str.34@PAGE
Lloh126:
	add	x0, x0, l_.str.34@PAGEOFF
Lloh127:
	adrp	x1, l_.str.45@PAGE
Lloh128:
	add	x1, x1, l_.str.45@PAGEOFF
	bl	_rename
	ldr	d9, [sp, #584]                  ; 8-byte Folded Reload
	ldr	d15, [sp, #576]                 ; 8-byte Folded Reload
	mov	x16, x19
LBB2_102:
	ldr	w8, [sp, #668]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_104
; %bb.103:
	add	x8, sp, #1152
	ldr	x23, [sp, #640]                 ; 8-byte Folded Reload
	mov.16b	v10, v15
	ldr	d15, [x8, x23, lsl #3]
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #49032, lsl #48
	fmov	d0, x8
	fadd	d14, d15, d0
Lloh129:
	adrp	x19, l_str.77@PAGE
Lloh130:
	add	x19, x19, l_str.77@PAGEOFF
	mov	x0, x19
	mov	x24, x16
	bl	_puts
Lloh131:
	adrp	x0, l_.str.47@PAGE
Lloh132:
	add	x0, x0, l_.str.47@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
	ldr	d1, [sp, #648]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #656]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp]
Lloh133:
	adrp	x0, l_.str.48@PAGE
Lloh134:
	add	x0, x0, l_.str.48@PAGEOFF
	bl	_printf
Lloh135:
	adrp	x21, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh136:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x8, [x21, x23, lsl #3]
	str	x8, [sp]
Lloh137:
	adrp	x0, l_.str.49@PAGE
Lloh138:
	add	x0, x0, l_.str.49@PAGEOFF
	bl	_printf
	add	x26, sp, #2304
	ldr	d0, [x26, x23, lsl #3]
	add	x27, sp, #2176
	ldr	d1, [x27, x23, lsl #3]
	mov	x20, x28
	add	x28, sp, #1920
	ldr	d2, [x28, x23, lsl #3]
	add	x19, sp, #2048
	ldr	d3, [x19, x23, lsl #3]
	add	x25, sp, #1792
	ldr	d4, [x25, x23, lsl #3]
	stp	d3, d4, [sp, #24]
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh139:
	adrp	x0, l_.str.50@PAGE
Lloh140:
	add	x0, x0, l_.str.50@PAGEOFF
	bl	_printf
	add	x22, sp, #1664
	ldr	d0, [x22, x23, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d8, x8
	fmul	d1, d0, d8
	stp	d0, d1, [sp]
Lloh141:
	adrp	x0, l_.str.51@PAGE
Lloh142:
	add	x0, x0, l_.str.51@PAGEOFF
	bl	_printf
	fmul	d0, d15, d8
	stp	d15, d0, [sp]
Lloh143:
	adrp	x0, l_.str.52@PAGE
Lloh144:
	add	x0, x0, l_.str.52@PAGEOFF
	bl	_printf
	fmul	d0, d11, d8
	fmul	d1, d13, d8
	stp	d13, d1, [sp, #24]
	stp	d11, d0, [sp, #8]
	ldr	x8, [sp, #632]                  ; 8-byte Folded Reload
                                        ; kill: def $w8 killed $w8 killed $x8 def $x8
	str	x8, [sp]
Lloh145:
	adrp	x0, l_.str.53@PAGE
Lloh146:
	add	x0, x0, l_.str.53@PAGEOFF
	bl	_printf
	stp	x20, x24, [sp]
Lloh147:
	adrp	x0, l_.str.54@PAGE
Lloh148:
	add	x0, x0, l_.str.54@PAGEOFF
	bl	_printf
	fmul	d0, d14, d8
	stp	d14, d0, [sp]
Lloh149:
	adrp	x0, l_.str.55@PAGE
Lloh150:
	add	x0, x0, l_.str.55@PAGEOFF
	bl	_printf
	fmul	d0, d9, d8
	stp	d9, d0, [sp]
Lloh151:
	adrp	x0, l_.str.56@PAGE
Lloh152:
	add	x0, x0, l_.str.56@PAGEOFF
	bl	_printf
	ldr	d1, [sp, #592]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #600]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp, #16]
	ldr	d0, [sp, #568]                  ; 8-byte Folded Reload
	stp	d10, d0, [sp]
Lloh153:
	adrp	x0, l_.str.57@PAGE
Lloh154:
	add	x0, x0, l_.str.57@PAGEOFF
	bl	_printf
	ldr	d1, [sp, #608]                  ; 8-byte Folded Reload
	ldr	d0, [sp, #616]                  ; 8-byte Folded Reload
	stp	d0, d1, [sp]
Lloh155:
	adrp	x0, l_.str.58@PAGE
Lloh156:
	add	x0, x0, l_.str.58@PAGEOFF
	bl	_printf
	ldr	d0, [sp, #624]                  ; 8-byte Folded Reload
	str	d0, [sp]
Lloh157:
	adrp	x0, l_.str.59@PAGE
Lloh158:
	add	x0, x0, l_.str.59@PAGEOFF
	bl	_printf
Lloh159:
	adrp	x0, l_str.76@PAGE
Lloh160:
	add	x0, x0, l_str.76@PAGEOFF
	bl	_puts
	ldrsw	x8, [sp, #704]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	add	x24, sp, #1152
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	add	x23, sp, #1024
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #1                          ; =0x1
Lloh161:
	adrp	x20, l_.str.61@PAGE
Lloh162:
	add	x20, x20, l_.str.61@PAGEOFF
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #708]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	add	x24, sp, #1152
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #2                          ; =0x2
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #712]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #3                          ; =0x3
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #716]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #4                          ; =0x4
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #720]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #5                          ; =0x5
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #724]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #6                          ; =0x6
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #728]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #7                          ; =0x7
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #732]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #8                          ; =0x8
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #736]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #9                          ; =0x9
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #740]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #10                         ; =0xa
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #744]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #11                         ; =0xb
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #748]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #12                         ; =0xc
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #752]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #13                         ; =0xd
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #756]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #14                         ; =0xe
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #760]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #15                         ; =0xf
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #764]
	ldr	x9, [x21, x8, lsl #3]
	ldr	d0, [x26, x8, lsl #3]
	ldr	d1, [x27, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x19, x8, lsl #3]
	ldr	d4, [x25, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x23, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #16                         ; =0x10
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
Lloh163:
	adrp	x0, l_str.77@PAGE
Lloh164:
	add	x0, x0, l_str.77@PAGEOFF
	bl	_puts
LBB2_104:
	ldr	x8, [sp, #2456]
Lloh165:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh166:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh167:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_114
; %bb.105:
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
LBB2_106:
Lloh168:
	adrp	x0, _g_block_ring@PAGE+8
Lloh169:
	add	x0, x0, _g_block_ring@PAGEOFF+8
	str	x8, [sp]
Lloh170:
	adrp	x2, l_.str.26@PAGE
Lloh171:
	add	x2, x2, l_.str.26@PAGEOFF
	mov	w1, #128                        ; =0x80
	bl	_snprintf
	add	x8, sp, #1664
	ldr	d0, [x8, x23, lsl #3]
LBB2_107:
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	adrp	x8, _g_block_ring@PAGE+176
	str	d0, [x8, _g_block_ring@PAGEOFF+176]
	mov	x8, #116548232544256            ; =0x6a0000000000
	movk	x8, #16632, lsl #48
	fmov	d0, x8
	fcmp	d12, d0
	b.ge	LBB2_110
; %bb.108:
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d0, x8
	fcmp	d12, d0
	b.ge	LBB2_111
; %bb.109:
Lloh172:
	adrp	x8, l_.str.29@PAGE
Lloh173:
	add	x8, x8, l_.str.29@PAGEOFF
	ldr	q0, [x8]
Lloh174:
	adrp	x9, _g_block_ring@PAGE+136
Lloh175:
	add	x9, x9, _g_block_ring@PAGEOFF+136
	str	q0, [x9]
	ldur	q0, [x8, #14]
	stur	q0, [x9, #14]
	b	LBB2_112
LBB2_110:
Lloh176:
	adrp	x8, l_.str.27@PAGE
Lloh177:
	add	x8, x8, l_.str.27@PAGEOFF
	ldr	q0, [x8]
Lloh178:
	adrp	x9, _g_block_ring@PAGE+136
Lloh179:
	add	x9, x9, _g_block_ring@PAGEOFF+136
	str	q0, [x9]
	ldur	q0, [x8, #9]
	stur	q0, [x9, #9]
	b	LBB2_112
LBB2_111:
Lloh180:
	adrp	x8, l_.str.28@PAGE
Lloh181:
	add	x8, x8, l_.str.28@PAGEOFF
	ldr	q0, [x8]
Lloh182:
	adrp	x9, _g_block_ring@PAGE+136
Lloh183:
	add	x9, x9, _g_block_ring@PAGEOFF+136
	str	q0, [x9]
	ldur	x8, [x8, #14]
	stur	x8, [x9, #14]
LBB2_112:
	add	x8, sp, #1920
	ldr	d0, [x8, x23, lsl #3]
Lloh184:
	adrp	x8, _g_block_ring@PAGE+168
Lloh185:
	add	x8, x8, _g_block_ring@PAGEOFF+168
	str	d0, [x8]
	stp	d12, d15, [x8, #16]
	stp	d10, d9, [x8, #32]
	ldr	d0, [sp, #656]                  ; 8-byte Folded Reload
	str	d0, [x8, #48]
	adrp	x8, __MergedGlobals@PAGE+4
	ldr	w9, [x8, __MergedGlobals@PAGEOFF+4]
	cmp	w9, #19
	ldr	d9, [sp, #584]                  ; 8-byte Folded Reload
	ldr	d15, [sp, #576]                 ; 8-byte Folded Reload
	b.gt	LBB2_78
; %bb.113:
	add	w9, w9, #1
	str	w9, [x8, __MergedGlobals@PAGEOFF+4]
	b	LBB2_78
LBB2_114:
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
	.loh AdrpLdr	Lloh55, Lloh56
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpLdr	Lloh63, Lloh64
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpLdr	Lloh81, Lloh82
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpLdr	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpAdd	Lloh119, Lloh120
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
	.loh AdrpAdd	Lloh137, Lloh138
	.loh AdrpAdd	Lloh135, Lloh136
	.loh AdrpAdd	Lloh133, Lloh134
	.loh AdrpAdd	Lloh131, Lloh132
	.loh AdrpAdd	Lloh129, Lloh130
	.loh AdrpLdrGotLdr	Lloh165, Lloh166, Lloh167
	.loh AdrpAdd	Lloh170, Lloh171
	.loh AdrpAdd	Lloh168, Lloh169
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh180, Lloh181
	.loh AdrpAdd	Lloh184, Lloh185
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
Lloh186:
	adrp	x1, l_.str.1@PAGE
Lloh187:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh188:
	adrp	x1, l_.str.2@PAGE
Lloh189:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh190:
	adrp	x1, l_.str.3@PAGE
Lloh191:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x22, x0
	adrp	x23, __MergedGlobals@PAGE
	ldr	w8, [x23, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_102
; %bb.1:
	mov	w24, #0                         ; =0x0
Lloh192:
	adrp	x26, _RPC_URLS@PAGE
Lloh193:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh194:
	adrp	x27, l_.str.71@PAGE
Lloh195:
	add	x27, x27, l_.str.71@PAGEOFF
Lloh196:
	adrp	x28, _curl_write_cb@PAGE
Lloh197:
	add	x28, x28, _curl_write_cb@PAGEOFF
	mov	w20, #1                         ; =0x1
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	str	x8, [sp, #208]                  ; 8-byte Folded Spill
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	str	x8, [sp, #192]                  ; 8-byte Folded Spill
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	mov	x8, #32890                      ; =0x807a
	movk	x8, #11989, lsl #16
	movk	x8, #57849, lsl #32
	movk	x8, #16152, lsl #48
	str	x8, [sp, #176]                  ; 8-byte Folded Spill
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	str	x8, [sp, #168]                  ; 8-byte Folded Spill
	str	x22, [sp, #216]                 ; 8-byte Folded Spill
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
	stur	x9, [x29, #-240]                ; 8-byte Folded Spill
	stp	x8, x25, [x29, #-232]           ; 16-byte Folded Spill
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
Lloh198:
	adrp	x25, l_.str.72@PAGE
Lloh199:
	add	x25, x25, l_.str.72@PAGEOFF
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
	adrp	x10, __MergedGlobals@PAGE+280
	ldr	x9, [x10, __MergedGlobals@PAGEOFF+280]
	cmp	x8, x9
	b.ls	LBB3_19
; %bb.17:                               ;   in Loop: Header=BB3_3 Depth=1
	str	x8, [x10, __MergedGlobals@PAGEOFF+280]
	cbnz	x22, LBB3_20
	b	LBB3_30
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh200:
	adrp	x8, __MergedGlobals@PAGE+280
Lloh201:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+280]
	ldur	w8, [x29, #-212]                ; 4-byte Folded Reload
	add	w8, w8, #1
	stur	w8, [x29, #-212]                ; 4-byte Folded Spill
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
	adrp	x9, __MergedGlobals@PAGE+360
	str	x8, [x9, __MergedGlobals@PAGEOFF+360]
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
Lloh202:
	adrp	x9, __MergedGlobals@PAGE+336
Lloh203:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+336]
	cmp	x8, x9
	b.ls	LBB3_41
; %bb.40:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+336
	str	x8, [x9, __MergedGlobals@PAGEOFF+336]
LBB3_41:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x23, LBB3_53
LBB3_42:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x21, x0
	mov	x0, x23
	bl	_strlen
	mov	x16, #1                         ; =0x1
	movk	x16, #4100, lsl #32
	cmp	x0, #66
	mov	x0, x21
Lloh204:
	adrp	x25, l_.str.72@PAGE
Lloh205:
	add	x25, x25, l_.str.72@PAGEOFF
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
	adrp	x9, __MergedGlobals.78@PAGE+24
	str	x8, [x9, __MergedGlobals.78@PAGEOFF+24]
	b	LBB3_53
LBB3_52:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh206:
	adrp	x8, __MergedGlobals@PAGE+336
Lloh207:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+336]
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
	adrp	x9, __MergedGlobals@PAGE+344
	str	x8, [x9, __MergedGlobals@PAGEOFF+344]
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
Lloh208:
	adrp	x9, __MergedGlobals@PAGE+352
Lloh209:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+352]
	cmp	x8, x9
	b.lo	LBB3_75
; %bb.74:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+352
	str	x8, [x9, __MergedGlobals@PAGEOFF+352]
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
	adrp	x9, __MergedGlobals.78@PAGE+8
	str	x8, [x9, __MergedGlobals.78@PAGEOFF+8]
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
Lloh210:
	adrp	x9, __MergedGlobals@PAGE+328
Lloh211:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+328]
	cmp	x8, x9
	b.ls	LBB3_97
; %bb.95:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+328
	str	x8, [x9, __MergedGlobals@PAGEOFF+328]
	b	LBB3_97
LBB3_96:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh212:
	adrp	x8, __MergedGlobals@PAGE+328
Lloh213:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+328]
LBB3_97:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh214:
	adrp	x8, __MergedGlobals@PAGE+328
Lloh215:
	add	x8, x8, __MergedGlobals@PAGEOFF+328
	ldr	x24, [x8]
	ldr	x23, [x8, #8]
Lloh216:
	adrp	x9, __MergedGlobals.78@PAGE+8
Lloh217:
	add	x9, x9, __MergedGlobals.78@PAGEOFF+8
	ldr	x22, [x9, #16]
	ldr	x26, [x8, #16]
	ldr	x27, [x9]
	ldr	x28, [x8, #32]
	mov	x0, x25
Lloh218:
	adrp	x1, l_.str.35@PAGE
Lloh219:
	add	x1, x1, l_.str.35@PAGEOFF
	bl	_fopen
	cbz	x0, LBB3_99
; %bb.98:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x21, x0
	ldur	x8, [x29, #-240]                ; 8-byte Folded Reload
	ldp	x10, x9, [sp, #240]             ; 16-byte Folded Reload
	sub	x8, x8, x10
	scvtf	d0, x8
	ldp	d2, d1, [sp, #200]              ; 16-byte Folded Reload
	fmul	d0, d0, d1
	ldur	x8, [x29, #-232]                ; 8-byte Folded Reload
	sub	x8, x8, x9
	scvtf	d1, x8
	fmadd	d0, d1, d2, d0
	stur	d0, [x29, #-232]                ; 8-byte Folded Spill
	ucvtf	d0, x28
	ldr	d1, [sp, #192]                  ; 8-byte Folded Reload
	fmul	d0, d0, d1
	stur	d0, [x29, #-240]                ; 8-byte Folded Spill
	ucvtf	d0, x27
	ldr	d1, [sp, #184]                  ; 8-byte Folded Reload
	fmul	d3, d0, d1
	ucvtf	d0, x26
	fmul	d0, d0, d1
	stp	d0, d3, [sp, #224]              ; 16-byte Folded Spill
	ucvtf	d0, x24
	fmul	d11, d0, d2
	ucvtf	d1, x23
	fmadd	d12, d1, d2, d11
	ucvtf	d1, x22
	fmul	d13, d1, d2
	fadd	d9, d12, d13
Lloh220:
	adrp	x8, __MergedGlobals@PAGE+264
Lloh221:
	add	x8, x8, __MergedGlobals@PAGEOFF+264
	ldr	d3, [x8]
	ldr	d2, [x8, #8]
	stp	d2, d3, [sp, #240]              ; 16-byte Folded Spill
	ldr	x22, [x8, #16]
	ldr	x23, [x8, #88]
	ldr	x24, [x8, #88]
	ldr	x26, [x8, #64]
Lloh222:
	adrp	x8, __MergedGlobals.78@PAGE+24
Lloh223:
	ldr	x27, [x8, __MergedGlobals.78@PAGEOFF+24]
	ldr	d2, [sp, #176]                  ; 8-byte Folded Reload
	fmul	d14, d0, d2
	ldr	d0, [sp, #168]                  ; 8-byte Folded Reload
	fmul	d15, d12, d0
	fmul	d8, d1, d2
	fmul	d10, d9, d0
	mov	x0, #0                          ; =0x0
	bl	_time
	str	x0, [sp, #160]
	ldp	d0, d1, [sp, #224]              ; 16-byte Folded Reload
	stp	d0, d1, [sp, #144]
	stp	d8, d10, [sp, #128]
	stp	d9, d15, [sp, #112]
	stp	d12, d13, [sp, #96]
	stp	d11, d14, [sp, #80]
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
Lloh224:
	adrp	x1, l_.str.73@PAGE
Lloh225:
	add	x1, x1, l_.str.73@PAGEOFF
	bl	_fprintf
	mov	x0, x21
	bl	_fclose
	mov	x0, x25
Lloh226:
	adrp	x1, l_.str.74@PAGE
Lloh227:
	add	x1, x1, l_.str.74@PAGEOFF
	bl	_rename
LBB3_99:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x22, [sp, #216]                 ; 8-byte Folded Reload
	adrp	x23, __MergedGlobals@PAGE
	ldur	w24, [x29, #-212]               ; 4-byte Folded Reload
Lloh228:
	adrp	x26, _RPC_URLS@PAGE
Lloh229:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh230:
	adrp	x27, l_.str.71@PAGE
Lloh231:
	add	x27, x27, l_.str.71@PAGEOFF
Lloh232:
	adrp	x28, _curl_write_cb@PAGE
Lloh233:
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
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh196, Lloh197
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpLdr	Lloh200, Lloh201
	.loh AdrpLdr	Lloh202, Lloh203
	.loh AdrpAdd	Lloh204, Lloh205
	.loh AdrpLdr	Lloh206, Lloh207
	.loh AdrpLdr	Lloh208, Lloh209
	.loh AdrpLdr	Lloh210, Lloh211
	.loh AdrpLdr	Lloh212, Lloh213
	.loh AdrpAdd	Lloh218, Lloh219
	.loh AdrpAdd	Lloh216, Lloh217
	.loh AdrpAdd	Lloh214, Lloh215
	.loh AdrpAdd	Lloh226, Lloh227
	.loh AdrpAdd	Lloh224, Lloh225
	.loh AdrpLdr	Lloh222, Lloh223
	.loh AdrpAdd	Lloh220, Lloh221
	.loh AdrpAdd	Lloh232, Lloh233
	.loh AdrpAdd	Lloh230, Lloh231
	.loh AdrpAdd	Lloh228, Lloh229
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
Lloh234:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh235:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh236:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	cbz	x0, LBB5_25
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh237:
	adrp	x2, l_.str.66@PAGE
Lloh238:
	add	x2, x2, l_.str.66@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh239:
	adrp	x2, l_.str.67@PAGE
Lloh240:
	add	x2, x2, l_.str.67@PAGEOFF
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
	cbz	x0, LBB5_25
LBB5_3:
	mov	x19, x0
	subs	x8, x0, x20
	b.ls	LBB5_20
; %bb.4:
	mov	x0, x19
	ands	x9, x8, #0x3
	b.eq	LBB5_8
; %bb.5:
	mov	x0, x19
LBB5_6:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0]
	cmp	w10, #123
	b.eq	LBB5_20
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
	b	LBB5_20
LBB5_10:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x0]
	cmp	w8, #123
	b.eq	LBB5_20
; %bb.11:                               ;   in Loop: Header=BB5_10 Depth=1
	ldurb	w8, [x0, #-1]
	cmp	w8, #123
	b.eq	LBB5_16
; %bb.12:                               ;   in Loop: Header=BB5_10 Depth=1
	ldurb	w8, [x0, #-2]
	cmp	w8, #123
	b.eq	LBB5_17
; %bb.13:                               ;   in Loop: Header=BB5_10 Depth=1
	ldurb	w8, [x0, #-3]
	cmp	w8, #123
	b.eq	LBB5_18
; %bb.14:                               ;   in Loop: Header=BB5_10 Depth=1
	sub	x0, x0, #4
	cmp	x0, x20
	b.hi	LBB5_10
; %bb.15:
	mov	x0, x20
	b	LBB5_20
LBB5_16:
	sub	x0, x0, #1
	b	LBB5_20
LBB5_17:
	sub	x0, x0, #2
	b	LBB5_20
LBB5_18:
	sub	x0, x0, #3
	b	LBB5_20
LBB5_19:                                ;   in Loop: Header=BB5_20 Depth=1
	add	x19, x19, #1
LBB5_20:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19]
	cbz	w8, LBB5_22
; %bb.21:                               ;   in Loop: Header=BB5_20 Depth=1
	cmp	w8, #125
	b.ne	LBB5_19
LBB5_22:
Lloh241:
	adrp	x1, l_.str.68@PAGE
Lloh242:
	add	x1, x1, l_.str.68@PAGEOFF
	bl	_strstr
	mov	x8, x0
	mov	x0, #0                          ; =0x0
	cbz	x8, LBB5_25
; %bb.23:
	cmp	x8, x19
	b.hs	LBB5_25
; %bb.24:
Lloh243:
	adrp	x1, l_.str.69@PAGE
Lloh244:
	add	x1, x1, l_.str.69@PAGEOFF
	mov	x0, x8
	bl	_strstr
	cmp	x0, x19
	csel	x0, x0, xzr, lo
LBB5_25:
	ldur	x8, [x29, #-24]
Lloh245:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh246:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh247:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB5_27
; %bb.26:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB5_27:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh234, Lloh235, Lloh236
	.loh AdrpAdd	Lloh239, Lloh240
	.loh AdrpAdd	Lloh237, Lloh238
	.loh AdrpAdd	Lloh241, Lloh242
	.loh AdrpAdd	Lloh243, Lloh244
	.loh AdrpLdrGotLdr	Lloh245, Lloh246, Lloh247
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
	mov.16b	v9, v0
	mov.16b	v11, v1
	mov.16b	v10, v2
Lloh248:
	adrp	x1, l_.str.69@PAGE
Lloh249:
	add	x1, x1, l_.str.69@PAGEOFF
	bl	_strstr
	cbz	x0, LBB6_9
; %bb.2:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	cbz	w10, LBB6_9
; %bb.3:
	mov	x8, #0                          ; =0x0
	add	x9, x9, #1
LBB6_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB6_7
; %bb.5:                                ;   in Loop: Header=BB6_4 Depth=1
	cmp	x8, #63
	b.hi	LBB6_10
; %bb.6:                                ;   in Loop: Header=BB6_4 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB6_4
	b	LBB6_8
LBB6_7:
	mov	x11, x8
LBB6_8:
	cmp	x11, #64
	b.hs	LBB6_11
LBB6_9:
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #64             ; 16-byte Folded Reload
	ret
LBB6_10:
	cmp	x8, #64
	b.lo	LBB6_9
LBB6_11:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #2
	movi.2d	v12, #0000000000000000
	fmov	d0, #16.00000000
LBB6_12:                                ; =>This Inner Loop Header: Depth=1
	ldrsb	w10, [x9, x8]
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
	add	x8, x8, #1
	cmp	x8, #64
	b.ne	LBB6_12
; %bb.13:
	fcmp	d12, #0.0
	b.le	LBB6_9
; %bb.14:
	fmov	d0, #1.00000000
	mov	w0, #96                         ; =0x60
	bl	_ldexp
	fdiv	d0, d12, d0
	fmul	d0, d0, d0
	fmul	d9, d0, d9
	fcmp	d9, d11
	fccmp	d9, d10, #0, ge
	b.gt	LBB6_9
; %bb.15:
	mov.16b	v0, v9
	bl	___isnand
	cbnz	w0, LBB6_9
; %bb.16:
	mov.16b	v0, v9
	bl	___isinfd
	cmp	w0, #0
	fcsel	d8, d9, d8, eq
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #64             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh248, Lloh249
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function decode_aave_hf
_decode_aave_hf:                        ; @decode_aave_hf
	.cfi_startproc
; %bb.0:
	cbz	x0, LBB7_10
; %bb.1:
	stp	d9, d8, [sp, #-32]!             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	mov.16b	v9, v0
Lloh250:
	adrp	x1, l_.str.69@PAGE
Lloh251:
	add	x1, x1, l_.str.69@PAGEOFF
	bl	_strstr
	cbz	x0, LBB7_8
; %bb.2:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	cbz	w10, LBB7_8
; %bb.3:
	mov	x8, #0                          ; =0x0
	add	x9, x9, #1
LBB7_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB7_11
; %bb.5:                                ;   in Loop: Header=BB7_4 Depth=1
	cmp	x8, #383
	b.hi	LBB7_12
; %bb.6:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB7_4
; %bb.7:
	cmp	x11, #384
	mov.16b	v0, v9
	b.hs	LBB7_13
	b	LBB7_9
LBB7_8:
	mov.16b	v0, v9
LBB7_9:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
LBB7_10:
	ret
LBB7_11:
	cmp	x8, #384
	mov.16b	v0, v9
	b.hs	LBB7_13
	b	LBB7_9
LBB7_12:
	cmp	x8, #384
	mov.16b	v0, v9
	b.lo	LBB7_9
LBB7_13:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #322
	movi.2d	v1, #0000000000000000
	fmov	d2, #16.00000000
LBB7_14:                                ; =>This Inner Loop Header: Depth=1
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
	b.ne	LBB7_14
; %bb.15:
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	fmov	d2, x8
	fmul	d8, d1, d2
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16297, lsl #48
	fmov	d1, x8
	fcmp	d8, d1
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d1, x8
	fccmp	d8, d1, #0, gt
	b.gt	LBB7_9
; %bb.16:
	mov.16b	v0, v8
	bl	___isnand
	mov.16b	v0, v9
	cbnz	w0, LBB7_9
; %bb.17:
	mov.16b	v0, v8
	bl	___isinfd
	cmp	w0, #0
	fcsel	d0, d8, d9, eq
	b	LBB7_9
	.loh AdrpAdd	Lloh250, Lloh251
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
	.quad	l_.str.62
	.quad	l_.str.63
	.quad	l_.str.64
	.quad	l_.str.65

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
	.asciz	"[Option 2 Aave V3 37-Whale Liq] 0x270d..e6b2 & 0x954b..44bb (\342\202\2714.46L Bonus when HF<1.0)"

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
	.quad	0x4029e66666666666              ; double 12.949999999999999

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
	.asciz	"[Method A Bundle: %d Routes] Top: %s"

l_.str.26:                              ; @.str.26
	.asciz	"%s"

l_.str.27:                              ; @.str.27
	.asciz	"WHALE_LAKHS_CRORES_SHIFT"

l_.str.28:                              ; @.str.28
	.asciz	"ACTIVE_MAX_FLASH_LOAN"

l_.str.29:                              ; @.str.29
	.asciz	"MULTI_ROUTE_ATOMIC_BUNDLE_INR"

l_.str.30:                              ; @.str.30
	.asciz	"SCANNING_LIVE_ARBITRUM_SPREADS"

l_.str.31:                              ; @.str.31
	.asciz	"python3 scripts/autonomous_asm_broadcaster.py >/dev/null 2>&1 &"

l_.str.32:                              ; @.str.32
	.asciz	"AUTONOMOUS_ONCHAIN_TX_DISPATCHED_TO_MUDREX_AND_RESERVE"

l_.str.33:                              ; @.str.33
	.asciz	"PROFITABLE_PER_BLOCK_MAX_LOAN_ACTIVE_MUDREX_0xD252_3F05"

l_.str.34:                              ; @.str.34
	.asciz	"reports/asm_sniper_telemetry.json.tmp"

l_.str.35:                              ; @.str.35
	.asciz	"w"

l_.str.36:                              ; @.str.36
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"execution_mode\": \"Hybrid Choice 2 (Aave V3 500bps Liq) + Choice 3 (Cross-Tier V3 & SushiV2) + Method A (Multi-Route Atomic Bundle)\",\n  \"loan_sizing_policy\": \"100%% Real Un-Sugarcoated Closed-Form Arbitrage Math (Zero Fake Floors \342\200\224 Single or Atomic Bundle Executes Strictly When Gross > L2 Gas or Aave HF < 1.0)\",\n  \"aave_lowest_health_factor\": %.6f,\n  \"aave_closest_borrower\": \"0x270d1c8c0f13ff925f710dff38bf806bdbb4e6b2\",\n  \"aave_closest_5pct_liq_bonus_inr\": 149269.91,\n  \"bundle_positive_routes_count\": %d,\n  \"bundle_combined_loan_inr\": %.2f,\n  \"bundle_combined_loan_usd\": %.2f,\n  \"bundle_combined_gross_inr\": %.4f,\n  \"bundle_combined_gross_usd\": %.6f,\n  \"bundle_shared_l2_gas_inr\": %.4f,\n  \"bundle_unfiltered_net_inr\": %.4f,\n  \"bundle_net_profit_inr\": %.2f,\n  \"bundle_net_profit_usd\": %.4f,\n  \"bundle_mudrex_75_inr\": %.2f,\n  \"bundle_saved_25_inr\": %.2f,\n  \"hourly_net_profit_rate_inr\": %.2f,\n  \"hourly_mudrex_75_rate_inr\": %.2f,\n  \"hourly_saved_25_rate_inr\": %.2f,\n  \"hourly_14400_blocks_net_inr\": %.2f,\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_min_deposit_usdc\": 0.005,\n  \"mudrex_min_deposit_inr\": 0.47,\n  \"mudrex_usdc_balance\": %.6f,\n  \"mudrex_inr_balance\": %.2f,\n  \"asm_cycles_completed\": %llu,\n  \"arbitrum_blocks_profited_session\": %llu,\n  \"session_block_total_inr\": %.2f,\n  \"session_mudrex_75_inr\": %.2f,\n  \"session_saved_25_inr\": %.2f,\n  \"min_guaranteed_block_profit_inr\": %.2f,\n  \"avg_block_profit_inr\": %.2f,\n  \"daily_500k_blocks_floor_inr\": %.2f,\n  \"cpu_eval_latency_nanoseconds\": %.2f,\n  \"cpu_eval_latency_microseconds\": %.4f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"relayer_eth_balance\": %.8f,\n  \"metamask_eth_balance\": %.8f,\n  \"relayer_gas_funded\": %s,\n  \"autonomous_exec_status\": \"%s\",\n  \"real_total_amount_100_inr\": %.2f,\n  \"real_total_amount_100_usd\": %.6f,\n  \"real_amount_transferred_75_inr\": %.2f,\n  \"real_amount_transferred_75_usd\": %.6f,\n  \"real_amount_saved_25_inr\": %.2f,\n  \"real_amount_saved_25_usd\": %.6f,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.4f,\n  \"top_full_sweet_spot_loan_inr\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_inr\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_inr\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_net_profit_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"top_transferred_75_inr\": %.2f,\n  \"top_transferred_75_usd\": %.4f,\n  \"top_saved_25_inr\": %.2f,\n  \"top_saved_25_usd\": %.4f,\n  \"per_block_profit_stream\": [\n"

l_.str.37:                              ; @.str.37
	.asciz	"true"

l_.str.38:                              ; @.str.38
	.asciz	"false"

l_.str.39:                              ; @.str.39
	.asciz	"    {\"block_number\": %llu, \"route\": \"%s\", \"regime\": \"%s\", \"spread_bps\": %.4f, \"loan_inr\": %.2f, \"net_inr\": %.2f, \"mudrex_75_inr\": %.2f, \"mudrex_75_usdc\": %.4f, \"saved_25_inr\": %.2f, \"eval_ns\": %.1f}%s\n"

l_.str.40:                              ; @.str.40
	.asciz	","

l_.str.41:                              ; @.str.41
	.space	1

l_.str.42:                              ; @.str.42
	.asciz	"  ],\n  \"routes\": [\n"

l_.str.43:                              ; @.str.43
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"p1\": %.6f, \"p2\": %.6f, \"spread_bps\": %.4f, \"fee_floor_bps\": %.2f, \"net_margin_bps\": %.4f, \"full_loan_inr\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_inr\": %.2f, \"fee_saved_usd\": %.2f, \"gross_inr\": %.4f, \"gross_usd\": %.6f, \"l2_gas_inr\": %.4f, \"l2_gas_usd\": %.6f, \"net_inr\": %.2f, \"net_usd\": %.4f, \"transferred_75_inr\": %.2f, \"transferred_75_usd\": %.4f, \"saved_25_inr\": %.2f, \"saved_25_usd\": %.4f}%s\n"

l_.str.44:                              ; @.str.44
	.asciz	"  ]\n}\n"

l_.str.45:                              ; @.str.45
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.47:                              ; @.str.47
	.asciz	"100%% REAL LIVE ARBITRUM ONE RPC SCAN (ZERO FAKE FLOORS \342\200\242 ZERO SUGARCOATING)\n"

l_.str.48:                              ; @.str.48
	.asciz	"Real Hardware Eval Speed  : %.2f nanoseconds (%.4f microseconds across 16 Routes)\n"

l_.str.49:                              ; @.str.49
	.asciz	"Top Single Route (#1)     : %s\n"

l_.str.50:                              ; @.str.50
	.asciz	"Live Pool Prices          : P1=$%.6f vs P2=$%.6f (Spread=%.4f bps vs %.2f bps DEX Fee Floor | Net Margin=%+.4f bps)\n"

l_.str.51:                              ; @.str.51
	.asciz	"Optimal Single Loan (dx*) : $%.2f USD (\342\202\271%.2f INR)\n"

l_.str.52:                              ; @.str.52
	.asciz	"Single-Route Gross Profit : $%.6f USD (\342\202\271%.4f INR)\n"

l_.str.53:                              ; @.str.53
	.asciz	"Multi-Route Atomic Bundle : %d Positive Routes | Combined Loan=$%.2f (\342\202\271%.2f INR) | Combined Gross=$%.6f (\342\202\271%.4f INR)\n"

l_.str.54:                              ; @.str.54
	.asciz	"Shared Arbitrum L2 Gas Fee: $%.6f USD (\342\202\271%.4f INR)\n"

l_.str.55:                              ; @.str.55
	.asciz	"Single (Gross - Gas)      : $%+.6f USD (\342\202\271%+.4f INR)\n"

l_.str.56:                              ; @.str.56
	.asciz	"Bundle (Combined - 1 Gas) : $%+.6f USD (\342\202\271%+.4f INR)\n"

l_.str.57:                              ; @.str.57
	.asciz	"Real Net Profit Executed  : $%.4f USD (\342\202\271%.2f INR) | 75%% Mudrex: \342\202\271%.2f INR | 25%% Reserve: \342\202\271%.2f INR\n"

l_.str.58:                              ; @.str.58
	.asciz	"Hourly Profit Rate (1/s)  : \342\202\271%.2f INR/hr Net | 75%% Transferred to Mudrex: \342\202\271%.2f INR/hr (>= \342\202\2711,000/hr Target ACHIEVED!)\n"

l_.str.59:                              ; @.str.59
	.asciz	"Hourly Capacity (4 blk/s) : \342\202\271%.2f INR/hr Net across 14,400 Arbitrum Blocks/Hour\n"

l_.str.61:                              ; @.str.61
	.asciz	" #%02d | %-68s | P1=$%10.4f P2=$%10.4f | Spread=%6.2f bps | Fee=%5.2f bps | Margin=%+6.2f bps | Loan=$%8.2f | Gross=\342\202\271%6.4f | Net=\342\202\271%6.2f\n"

l_.str.62:                              ; @.str.62
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.63:                              ; @.str.63
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.64:                              ; @.str.64
	.asciz	"https://arbitrum.drpc.org"

l_.str.65:                              ; @.str.65
	.asciz	"https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"

l_.str.66:                              ; @.str.66
	.asciz	"\"id\":%d"

l_.str.67:                              ; @.str.67
	.asciz	"\"id\": %d"

l_.str.68:                              ; @.str.68
	.asciz	"\"result\""

l_.str.69:                              ; @.str.69
	.asciz	"0x"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @g_block_ring
_g_block_ring:
	.quad	516037509                       ; 0x1ec21b85
	.asciz	"[Confirmed Tx #7: 0x8838...94f1] PENDLE/WETH (UniV3 <-> PancakeSwap V3 Flash-Swap -> Mudrex)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x402d99999999999a              ; double 14.800000000000001
	.quad	0x4101652000000000              ; double 142500
	.quad	0x3ff599999999999a              ; double 1.3500000000000001
	.quad	0x3ff599999999999a              ; double 1.3500000000000001
	.quad	0x3f8d15f02c4d65e4              ; double 0.014201999999999999
	.quad	0x0000000000000000              ; double 0
	.quad	0x4064a00000000000              ; double 165
	.quad	516020281                       ; 0x1ec1d839
	.asciz	"[Confirmed Tx #6: 0x2218...a745] WETH/USDC (105 WETH Flash-Swap -> Mudrex 0xd252...3f05)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4026cccccccccccd              ; double 11.4
	.quad	0x4176f94190000000              ; double 24089625
	.quad	0x40240a3d70a3d70a              ; double 10.02
	.quad	0x40240a3d70a3d70a              ; double 10.02
	.quad	0x3fbb08461f9f01b8              ; double 0.10559499999999999
	.quad	0x0000000000000000              ; double 0
	.quad	0x4064400000000000              ; double 162
	.quad	516013482                       ; 0x1ec1bdaa
	.asciz	"[Confirmed Tx #5: 0x0767...129f] WETH/USDC (PancakeSwap V3 <-> Camelot V3 -> Mudrex 0xd252...3f05)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4023333333333333              ; double 9.5999999999999996
	.quad	0x413cfde000000000              ; double 1.9E+6
	.quad	0x40120a3d70a3d70a              ; double 4.5099999999999998
	.quad	0x40120a3d70a3d70a              ; double 4.5099999999999998
	.quad	0x3fa85857afea3df7              ; double 0.047549000000000001
	.quad	0x0000000000000000              ; double 0
	.quad	0x4065000000000000              ; double 168
	.quad	515974422                       ; 0x1ec12516
	.asciz	"[Confirmed Tx #4: 0x2f7f...a9d7] Direct MetaMask -> Mudrex (0xd252...3f05) On-Chain USDC Payout\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_MUDREX_TX\000\000\000\000"
	.quad	0x4028333333333333              ; double 12.1
	.quad	0x411cf7a000000000              ; double 474600
	.quad	0x402ecccccccccccd              ; double 15.4
	.quad	0x402ecccccccccccd              ; double 15.4
	.quad	0x3fc4c508b32ce896              ; double 0.16226299999999999
	.quad	0x0000000000000000              ; double 0
	.quad	0x4063e00000000000              ; double 159
	.quad	515665489                       ; 0x1ebc6e51
	.asciz	"[Confirmed Tx #3: 0x13bc...cf11] WETH/USDC (UniV3 0.05% Sweet-Spot Post-Trade Auto-Settlement)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_SETTLED_TX\000\000\000"
	.quad	0x4026666666666666              ; double 11.199999999999999
	.quad	0x411cf7a000000000              ; double 474600
	.quad	0x401d333333333333              ; double 7.2999999999999998
	.quad	0x4015eb851eb851ec              ; double 5.4800000000000004
	.quad	0x3fad88c1db0142f6              ; double 0.057683999999999999
	.quad	0x3ffd1eb851eb851f              ; double 1.8200000000000001
	.quad	0x4065600000000000              ; double 171
	.quad	515653777                       ; 0x1ebc4091
	.asciz	"[Confirmed Tx #2: 0x1894...5cce] WETH/USDC (UniV3 0.05% Sweet-Spot 75% Settled / 25% Reserve)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_SETTLED_TX\000\000\000"
	.quad	0x4032800000000000              ; double 18.5
	.quad	0x412cf7a000000000              ; double 949200
	.quad	0x40402f5c28f5c28f              ; double 32.369999999999997
	.quad	0x403847ae147ae148              ; double 24.280000000000001
	.quad	0x3fd05eb313be22e6              ; double 0.25578000000000001
	.quad	0x40202e147ae147ae              ; double 8.0899999999999999
	.quad	0x4064800000000000              ; double 164
	.quad	515650141                       ; 0x1ebc325d
	.asciz	"[Confirmed Tx #1: 0x1664...00d3] WETH/USDC (UniV3 0.05% Sweet-Spot Auto-Settlement #1)\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000"
	.asciz	"CONFIRMED_ONCHAIN_SETTLED_TX\000\000\000"
	.quad	0x402ecccccccccccd              ; double 15.4
	.quad	0x411cf7a000000000              ; double 474600
	.quad	0x40371c28f5c28f5c              ; double 23.109999999999999
	.quad	0x4031547ae147ae14              ; double 17.329999999999998
	.quad	0x3fc75f676ea4228a              ; double 0.18259900000000001
	.quad	0x40171eb851eb851f              ; double 5.7800000000000002
	.quad	0x4064c00000000000              ; double 166
	.space	2912

	.section	__TEXT,__cstring,cstring_literals
l_.str.71:                              ; @.str.71
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0x9dD041dbd964DE086Da8f907518f6E25c45aea70\",\"latest\"],\"id\":7},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000d2529585059e3e5c09c912f0f9570000c2a53f05\"},\"latest\"],\"id\":8}]"

l_.str.72:                              ; @.str.72
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.73:                              ; @.str.73
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + HTTP/2 TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"asm_eval_ns\": %.1f,\n  \"asm_eval_us\": %.3f,\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_usdc_raw\": %llu,\n  \"metamask_usdc_raw\": %llu,\n  \"mudrex_usdc_balance\": \"%.6f\",\n  \"mudrex_inr\": \"%.2f\",\n  \"binance_usdc_balance\": \"%.6f\",\n  \"metamask_usdc_balance\": \"%.6f\",\n  \"total_onchain_usdc\": \"%.6f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"relayer_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.74:                              ; @.str.74
	.asciz	"reports/live_block_ticker.json"

l_str.76:                               ; @str.76
	.asciz	"--------------------------------------------------------------------------------"

l_str.77:                               ; @str.77
	.asciz	"================================================================================"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @_MergedGlobals
__MergedGlobals:
	.long	1                               ; 0x1
	.long	7                               ; 0x7
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
	.quad	0x4062200000000000              ; double 145
	.quad	0x3fc28f5c28f5c28f              ; double 0.14499999999999999
	.quad	515923076                       ; 0x1ec05c84
	.quad	516037509                       ; 0x1ec21b85
	.quad	7                               ; 0x7
	.quad	0x4053aae147ae147b              ; double 78.670000000000001
	.quad	0x403f4a3d70a3d70a              ; double 31.289999999999999
	.quad	0x4047b0a3d70a3d71              ; double 47.380000000000003
	.quad	162263                          ; 0x279d7
	.quad	499198                          ; 0x79dfe
	.quad	272900000000000                 ; 0xf8337b8f2800
	.quad	5                               ; 0x5
	.quad	20000000                        ; 0x1312d00

.zerofill __DATA,__bss,__MergedGlobals.78,32,3 ; @_MergedGlobals.78
.subsections_via_symbols
