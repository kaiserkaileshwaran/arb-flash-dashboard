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
	ldr	d17, [x1]
	ldr	d18, [x2]
	fminnm	d3, d17, d18
	fmaxnm	d2, d17, d18
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d4, x0
	fcmp	d3, d4
	movi.2d	v5, #0000000000000000
	b.le	LBB0_2
; %bb.1:
	fsub	d4, d2, d3
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d4, d4, d5
	fdiv	d5, d4, d3
LBB0_2:
	ldr	d4, [x5]
	fsub	d4, d5, d4
	fcmp	d4, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17]
	str	d4, [x10]
	movi.2d	v21, #0000000000000000
	movi.2d	v19, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_61
LBB0_3:
	str	d7, [x16]
	str	d5, [x15]
	str	d6, [x14]
	str	d16, [x13]
	str	d19, [x9]
	str	d21, [x8]
	str	d20, [x12]
	str	d1, [x11]
	ldr	d18, [x1, #8]
	ldr	d19, [x2, #8]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_5
; %bb.4:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_5:
	ldr	d2, [x5, #8]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #8]
	str	d2, [x10, #8]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_62
LBB0_6:
	str	d7, [x16, #8]
	str	d5, [x15, #8]
	str	d6, [x14, #8]
	str	d16, [x13, #8]
	str	d17, [x9, #8]
	str	d21, [x8, #8]
	str	d20, [x12, #8]
	str	d1, [x11, #8]
	ldr	d18, [x1, #16]
	ldr	d19, [x2, #16]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_8
; %bb.7:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_8:
	ldr	d2, [x5, #16]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #16]
	str	d2, [x10, #16]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_63
LBB0_9:
	str	d7, [x16, #16]
	str	d5, [x15, #16]
	str	d6, [x14, #16]
	str	d16, [x13, #16]
	str	d17, [x9, #16]
	str	d21, [x8, #16]
	str	d20, [x12, #16]
	str	d1, [x11, #16]
	ldr	d18, [x1, #24]
	ldr	d19, [x2, #24]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_11
; %bb.10:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_11:
	ldr	d2, [x5, #24]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #24]
	str	d2, [x10, #24]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_64
LBB0_12:
	str	d7, [x16, #24]
	str	d5, [x15, #24]
	str	d6, [x14, #24]
	str	d16, [x13, #24]
	str	d17, [x9, #24]
	str	d21, [x8, #24]
	str	d20, [x12, #24]
	str	d1, [x11, #24]
	ldr	d18, [x1, #32]
	ldr	d19, [x2, #32]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_14
; %bb.13:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_14:
	ldr	d2, [x5, #32]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #32]
	str	d2, [x10, #32]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_65
LBB0_15:
	str	d7, [x16, #32]
	str	d5, [x15, #32]
	str	d6, [x14, #32]
	str	d16, [x13, #32]
	str	d17, [x9, #32]
	str	d21, [x8, #32]
	str	d20, [x12, #32]
	str	d1, [x11, #32]
	ldr	d18, [x1, #40]
	ldr	d19, [x2, #40]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_17
; %bb.16:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_17:
	ldr	d2, [x5, #40]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #40]
	str	d2, [x10, #40]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_66
LBB0_18:
	str	d7, [x16, #40]
	str	d5, [x15, #40]
	str	d6, [x14, #40]
	str	d16, [x13, #40]
	str	d17, [x9, #40]
	str	d21, [x8, #40]
	str	d20, [x12, #40]
	str	d1, [x11, #40]
	ldr	d18, [x1, #48]
	ldr	d19, [x2, #48]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_20
; %bb.19:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_20:
	ldr	d2, [x5, #48]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #48]
	str	d2, [x10, #48]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_67
LBB0_21:
	str	d7, [x16, #48]
	str	d5, [x15, #48]
	str	d6, [x14, #48]
	str	d16, [x13, #48]
	str	d17, [x9, #48]
	str	d21, [x8, #48]
	str	d20, [x12, #48]
	str	d1, [x11, #48]
	ldr	d18, [x1, #56]
	ldr	d19, [x2, #56]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_23
; %bb.22:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_23:
	ldr	d2, [x5, #56]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #56]
	str	d2, [x10, #56]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_68
LBB0_24:
	str	d7, [x16, #56]
	str	d5, [x15, #56]
	str	d6, [x14, #56]
	str	d16, [x13, #56]
	str	d17, [x9, #56]
	str	d21, [x8, #56]
	str	d20, [x12, #56]
	str	d1, [x11, #56]
	ldr	d18, [x1, #64]
	ldr	d19, [x2, #64]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_26
; %bb.25:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_26:
	ldr	d2, [x5, #64]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #64]
	str	d2, [x10, #64]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_69
LBB0_27:
	str	d7, [x16, #64]
	str	d5, [x15, #64]
	str	d6, [x14, #64]
	str	d16, [x13, #64]
	str	d17, [x9, #64]
	str	d21, [x8, #64]
	str	d20, [x12, #64]
	str	d1, [x11, #64]
	ldr	d18, [x1, #72]
	ldr	d19, [x2, #72]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_29
; %bb.28:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_29:
	ldr	d2, [x5, #72]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #72]
	str	d2, [x10, #72]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_70
LBB0_30:
	str	d7, [x16, #72]
	str	d5, [x15, #72]
	str	d6, [x14, #72]
	str	d16, [x13, #72]
	str	d17, [x9, #72]
	str	d21, [x8, #72]
	str	d20, [x12, #72]
	str	d1, [x11, #72]
	ldr	d18, [x1, #80]
	ldr	d19, [x2, #80]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_32
; %bb.31:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_32:
	ldr	d2, [x5, #80]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #80]
	str	d2, [x10, #80]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_71
LBB0_33:
	str	d7, [x16, #80]
	str	d5, [x15, #80]
	str	d6, [x14, #80]
	str	d16, [x13, #80]
	str	d17, [x9, #80]
	str	d21, [x8, #80]
	str	d20, [x12, #80]
	str	d1, [x11, #80]
	ldr	d18, [x1, #88]
	ldr	d19, [x2, #88]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_35
; %bb.34:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_35:
	ldr	d2, [x5, #88]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #88]
	str	d2, [x10, #88]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_72
LBB0_36:
	str	d7, [x16, #88]
	str	d5, [x15, #88]
	str	d6, [x14, #88]
	str	d16, [x13, #88]
	str	d17, [x9, #88]
	str	d21, [x8, #88]
	str	d20, [x12, #88]
	str	d1, [x11, #88]
	ldr	d18, [x1, #96]
	ldr	d19, [x2, #96]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_38
; %bb.37:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_38:
	ldr	d2, [x5, #96]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #96]
	str	d2, [x10, #96]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_73
LBB0_39:
	str	d7, [x16, #96]
	str	d5, [x15, #96]
	str	d6, [x14, #96]
	str	d16, [x13, #96]
	str	d17, [x9, #96]
	str	d21, [x8, #96]
	str	d20, [x12, #96]
	str	d1, [x11, #96]
	ldr	d18, [x1, #104]
	ldr	d19, [x2, #104]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_41
; %bb.40:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_41:
	ldr	d2, [x5, #104]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #104]
	str	d2, [x10, #104]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_74
LBB0_42:
	str	d7, [x16, #104]
	str	d5, [x15, #104]
	str	d6, [x14, #104]
	str	d16, [x13, #104]
	str	d17, [x9, #104]
	str	d21, [x8, #104]
	str	d20, [x12, #104]
	str	d1, [x11, #104]
	ldr	d18, [x1, #112]
	ldr	d19, [x2, #112]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_44
; %bb.43:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_44:
	ldr	d2, [x5, #112]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	str	d5, [x17, #112]
	str	d2, [x10, #112]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_75
LBB0_45:
	str	d7, [x16, #112]
	str	d5, [x15, #112]
	str	d6, [x14, #112]
	str	d16, [x13, #112]
	str	d17, [x9, #112]
	str	d21, [x8, #112]
	str	d20, [x12, #112]
	str	d1, [x11, #112]
	ldr	d18, [x1, #120]
	ldr	d19, [x2, #120]
	fminnm	d4, d18, d19
	fmaxnm	d3, d18, d19
	movi.2d	v1, #0000000000000000
	mov	x0, #59921                      ; =0xea11
	movk	x0, #33069, lsl #16
	movk	x0, #38809, lsl #32
	movk	x0, #15729, lsl #48
	fmov	d2, x0
	fcmp	d4, d2
	movi.2d	v5, #0000000000000000
	b.le	LBB0_47
; %bb.46:
	fsub	d2, d3, d4
	mov	x0, #149533581377536            ; =0x880000000000
	movk	x0, #16579, lsl #48
	fmov	d5, x0
	fmul	d2, d2, d5
	fdiv	d5, d2, d4
LBB0_47:
	ldr	d2, [x5, #120]
	fsub	d2, d5, d2
	fcmp	d2, #0.0
	movi.2d	v20, #0000000000000000
	ldr	x0, [sp, #80]
	str	d5, [x17, #120]
	str	d2, [x10, #120]
	movi.2d	v21, #0000000000000000
	movi.2d	v17, #0000000000000000
	movi.2d	v16, #0000000000000000
	movi.2d	v6, #0000000000000000
	movi.2d	v5, #0000000000000000
	movi.2d	v7, #0000000000000000
	b.gt	LBB0_76
LBB0_48:
	mov	x17, #0                         ; =0x0
	str	d7, [x16, #120]
	str	d5, [x15, #120]
	str	d6, [x14, #120]
	str	d16, [x13, #120]
	str	d17, [x9, #120]
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
	fcmp	d17, d18
	csel	x0, x3, x4, le
	ldr	d1, [x0]
	csel	x0, x4, x3, le
	ldr	d5, [x0]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d4, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d4, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d3, d1
	fmul	d1, d6, d1
	fmul	d2, d2, d5
	fmul	d2, d6, d2
	fmul	d3, d2, d1
	fadd	d5, d2, d1
	fdiv	d6, d5, d3
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d3, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6]
	ldr	d16, [x7]
	fadd	d16, d16, d6
	fminnm	d1, d1, d2
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d2, x0
	fmul	d2, d4, d2
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d4, d4, d7
	fmul	d3, d4, d3
	fdiv	d3, d3, d5
	fcsel	d3, d18, d3, le
	fminnm	d7, d3, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d3, x0
	fnmsub	d1, d2, d7, d1
	fmadd	d1, d6, d3, d1
	fmaxnm	d19, d1, d18
	fsub	d1, d19, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_3
LBB0_62:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #8]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #8]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #8]
	ldr	d16, [x7, #8]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_6
LBB0_63:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #16]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #16]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #16]
	ldr	d16, [x7, #16]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_9
LBB0_64:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #24]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #24]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #24]
	ldr	d16, [x7, #24]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_12
LBB0_65:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #32]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #32]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #32]
	ldr	d16, [x7, #32]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_15
LBB0_66:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #40]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #40]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #40]
	ldr	d16, [x7, #40]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_18
LBB0_67:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #48]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #48]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #48]
	ldr	d16, [x7, #48]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_21
LBB0_68:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #56]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #56]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #56]
	ldr	d16, [x7, #56]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_24
LBB0_69:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #64]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #64]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #64]
	ldr	d16, [x7, #64]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_27
LBB0_70:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #72]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #72]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #72]
	ldr	d16, [x7, #72]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_30
LBB0_71:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #80]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #80]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #80]
	ldr	d16, [x7, #80]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_33
LBB0_72:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #88]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #88]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #88]
	ldr	d16, [x7, #88]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_36
LBB0_73:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #96]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #96]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #96]
	ldr	d16, [x7, #96]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_39
LBB0_74:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #104]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #104]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #104]
	ldr	d16, [x7, #104]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_42
LBB0_75:
	fcmp	d18, d19
	csel	x0, x3, x4, le
	ldr	d1, [x0, #112]
	csel	x0, x4, x3, le
	ldr	d5, [x0, #112]
	mov	x0, #20972                      ; =0x51ec
	movk	x0, #7864, lsl #16
	movk	x0, #60293, lsl #32
	movk	x0, #16289, lsl #48
	fmov	d6, x0
	mov	x0, #47186                      ; =0xb852
	movk	x0, #34078, lsl #16
	movk	x0, #20971, lsl #32
	movk	x0, #16366, lsl #48
	fmov	d7, x0
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x0, #22038                      ; =0x5616
	movk	x0, #40679, lsl #16
	movk	x0, #943, lsl #32
	movk	x0, #15570, lsl #48
	fmov	d7, x0
	fcmp	d4, d7
	mov	x0, #640942080                  ; =0x26340000
	movk	x0, #27637, lsl #32
	movk	x0, #17164, lsl #48
	fmov	d16, x0
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #112]
	ldr	d16, [x7, #112]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16154, lsl #48
	fmov	d3, x0
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x0, #17197                      ; =0x432d
	movk	x0, #60188, lsl #16
	movk	x0, #14050, lsl #32
	movk	x0, #16138, lsl #48
	fmov	d7, x0
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #16192, lsl #48
	fmov	d1, x0
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x0, #43516                      ; =0xa9fc
	movk	x0, #54001, lsl #16
	movk	x0, #25165, lsl #32
	movk	x0, #48960, lsl #48
	fmov	d2, x0
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d1, d17, d0
	mov	x0, #48234                      ; =0xbc6a
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16358, lsl #48
	fmov	d2, x0
	fmul	d2, d1, d2
	mov	x0, #36176                      ; =0x8d50
	movk	x0, #28311, lsl #16
	movk	x0, #33554, lsl #32
	movk	x0, #16352, lsl #48
	fmov	d3, x0
	fmul	d3, d1, d3
	mov	x0, #48232                      ; =0xbc68
	movk	x0, #37748, lsl #16
	movk	x0, #1048, lsl #32
	movk	x0, #16326, lsl #48
	fmov	d4, x0
	fmul	d4, d1, d4
	fcmp	d1, #0.0
	fcsel	d1, d4, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
	b	LBB0_45
LBB0_76:
	fcmp	d18, d19
	csel	x17, x3, x4, le
	ldr	d1, [x17, #120]
	csel	x17, x4, x3, le
	ldr	d5, [x17, #120]
	mov	x17, #20972                     ; =0x51ec
	movk	x17, #7864, lsl #16
	movk	x17, #60293, lsl #32
	movk	x17, #16289, lsl #48
	fmov	d6, x17
	mov	x17, #47186                     ; =0xb852
	movk	x17, #34078, lsl #16
	movk	x17, #20971, lsl #32
	movk	x17, #16366, lsl #48
	fmov	d7, x17
	fmadd	d6, d2, d6, d7
	fmov	d7, #1.00000000
	fdiv	d6, d7, d6
	fmov	d16, #1.50000000
	fcmp	d2, d16
	fcsel	d6, d6, d7, gt
	fmul	d1, d4, d1
	fmul	d1, d6, d1
	fmul	d3, d3, d5
	fmul	d3, d6, d3
	fmul	d4, d3, d1
	fadd	d5, d3, d1
	fdiv	d6, d5, d4
	mov	x17, #22038                     ; =0x5616
	movk	x17, #40679, lsl #16
	movk	x17, #943, lsl #32
	movk	x17, #15570, lsl #48
	fmov	d7, x17
	fcmp	d4, d7
	mov	x17, #640942080                 ; =0x26340000
	movk	x17, #27637, lsl #32
	movk	x17, #17164, lsl #48
	fmov	d16, x17
	fcsel	d17, d6, d16, gt
	ldr	d6, [x6, #120]
	ldr	d16, [x7, #120]
	fadd	d16, d16, d6
	fminnm	d1, d1, d3
	fminnm	d1, d1, d16
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16154, lsl #48
	fmov	d3, x17
	fmul	d3, d2, d3
	movi.2d	v18, #0000000000000000
	fcmp	d5, d7
	mov	x17, #17197                     ; =0x432d
	movk	x17, #60188, lsl #16
	movk	x17, #14050, lsl #32
	movk	x17, #16138, lsl #48
	fmov	d7, x17
	fmul	d2, d2, d7
	fmul	d2, d2, d4
	fdiv	d2, d2, d5
	fcsel	d2, d18, d2, le
	fminnm	d7, d2, d1
	fminnm	d5, d7, d6
	fsub	d1, d7, d6
	fcmp	d7, d6
	fcsel	d6, d1, d18, gt
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #16192, lsl #48
	fmov	d1, x17
	fmul	d16, d5, d1
	fmul	d1, d7, d7
	fmul	d1, d1, d17
	mov	x17, #43516                     ; =0xa9fc
	movk	x17, #54001, lsl #16
	movk	x17, #25165, lsl #32
	movk	x17, #48960, lsl #48
	fmov	d2, x17
	fnmsub	d1, d3, d7, d1
	fmadd	d1, d6, d2, d1
	fmaxnm	d17, d1, d18
	fsub	d0, d17, d0
	mov	x17, #48234                     ; =0xbc6a
	movk	x17, #37748, lsl #16
	movk	x17, #1048, lsl #32
	movk	x17, #16358, lsl #48
	fmov	d1, x17
	fmul	d2, d0, d1
	mov	x17, #36176                     ; =0x8d50
	movk	x17, #28311, lsl #16
	movk	x17, #33554, lsl #32
	movk	x17, #16352, lsl #48
	fmov	d1, x17
	fmul	d3, d0, d1
	mov	x17, #48232                     ; =0xbc68
	movk	x17, #37748, lsl #16
	movk	x17, #1048, lsl #32
	movk	x17, #16326, lsl #48
	fmov	d1, x17
	fmul	d1, d0, d1
	fcmp	d0, #0.0
	fcsel	d1, d1, d18, gt
	fcsel	d20, d3, d18, gt
	fcsel	d21, d2, d18, gt
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
	.quad	0x4018000000000000              ; double 6
	.quad	0x3ff8000000000000              ; double 1.5
lCPI2_1:
	.quad	0x4024000000000000              ; double 10
	.quad	0x4018000000000000              ; double 6
lCPI2_2:
	.quad	0x3ff4000000000000              ; double 1.25
	.quad	0x401e000000000000              ; double 7.5
lCPI2_3:
	.quad	0x3ffe666666666666              ; double 1.8999999999999999
	.quad	0x4000000000000000              ; double 2
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
	sub	x9, sp, #2336
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
	str	w3, [sp, #532]                  ; 4-byte Folded Spill
Lloh10:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh11:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh12:
	ldr	x8, [x8]
	str	x8, [sp, #2328]
	cbz	x0, LBB2_5
; %bb.1:
	mov	x20, x2
	mov	x22, x1
	mov	x21, x0
	str	xzr, [x2, #8]
	adrp	x26, __MergedGlobals.74@PAGE+8
	ldr	x8, [x26, __MergedGlobals.74@PAGEOFF+8]
	and	x8, x8, #0x3
Lloh13:
	adrp	x23, _RPC_URLS@PAGE
Lloh14:
	add	x23, x23, _RPC_URLS@PAGEOFF
	ldr	x8, [x23, x8, lsl #3]
	str	x8, [sp]
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x21
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
Lloh15:
	adrp	x24, l_.str.4@PAGE
Lloh16:
	add	x24, x24, l_.str.4@PAGEOFF
	str	x24, [sp]
	mov	x0, x21
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
Lloh17:
	adrp	x25, _curl_write_cb@PAGE
Lloh18:
	add	x25, x25, _curl_write_cb@PAGEOFF
	str	x25, [sp]
	mov	x0, x21
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x21
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #2500                       ; =0x9c4
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x21
	bl	_curl_easy_perform
	cbz	w0, LBB2_18
LBB2_2:
	str	xzr, [x20, #8]
	ldr	x8, [x26, __MergedGlobals.74@PAGEOFF+8]
	add	w8, w8, #1
	and	x8, x8, #0x3
	ldr	x8, [x23, x8, lsl #3]
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x21
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
	str	x24, [sp]
	mov	x0, x21
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
	str	x25, [sp]
	mov	x0, x21
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x21
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #2500                       ; =0x9c4
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x21
	bl	_curl_easy_perform
	cbz	w0, LBB2_21
LBB2_3:
	str	xzr, [x20, #8]
	ldr	x8, [x26, __MergedGlobals.74@PAGEOFF+8]
	and	x8, x8, #0x3
	eor	x8, x8, #0x2
	ldr	x8, [x23, x8, lsl #3]
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x21
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
	str	x24, [sp]
	mov	x0, x21
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
	str	x25, [sp]
	mov	x0, x21
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x21
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #2500                       ; =0x9c4
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x21
	bl	_curl_easy_perform
	cbz	w0, LBB2_24
LBB2_4:
	str	xzr, [x20, #8]
	ldr	x8, [x26, __MergedGlobals.74@PAGEOFF+8]
	sub	w8, w8, #1
	and	x8, x8, #0x3
	ldr	x8, [x23, x8, lsl #3]
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x21
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
	str	x24, [sp]
	mov	x0, x21
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
	str	x25, [sp]
	mov	x0, x21
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x21
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #2500                       ; =0x9c4
	str	x8, [sp]
	mov	x0, x21
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x21
	bl	_curl_easy_perform
	cbz	w0, LBB2_27
LBB2_5:
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d8, x8
	mov	x8, #20010                      ; =0x4e2a
	movk	x8, #23898, lsl #16
	movk	x8, #20467, lsl #32
	movk	x8, #16133, lsl #48
	fmov	d14, x8
	mov	x8, #52429                      ; =0xcccd
	movk	x8, #52428, lsl #16
	movk	x8, #56524, lsl #32
	movk	x8, #16488, lsl #48
	fmov	d13, x8
	mov	x8, #20850                      ; =0x5172
	movk	x8, #8749, lsl #16
	movk	x8, #51594, lsl #32
	movk	x8, #16203, lsl #48
	fmov	d22, x8
	mov	x8, #266081813921792            ; =0xf20000000000
	movk	x8, #16546, lsl #48
	fmov	d21, x8
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #64225, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d19, x8
	mov	x8, #3460                       ; =0xd84
	movk	x8, #44879, lsl #16
	movk	x8, #26004, lsl #32
	movk	x8, #16328, lsl #48
	fmov	d7, x8
	mov	x8, #37539                      ; =0x92a3
	movk	x8, #314, lsl #16
	movk	x8, #1101, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d6, x8
	mov	x8, #215504279044096            ; =0xc40000000000
	movk	x8, #16584, lsl #48
	fmov	d15, x8
	mov	x8, #25082609008640             ; =0x16d000000000
	movk	x8, #16628, lsl #48
	fmov	d5, x8
	mov	x8, #25061                      ; =0x61e5
	movk	x8, #54945, lsl #16
	movk	x8, #61236, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d16, x8
	mov	x8, #260584255782912            ; =0xed0000000000
	movk	x8, #16546, lsl #48
	fmov	d9, x8
	mov.16b	v10, v9
	mov.16b	v3, v9
	mov.16b	v17, v9
	mov.16b	v4, v16
	mov.16b	v18, v5
	mov.16b	v20, v15
	mov.16b	v23, v6
	mov.16b	v24, v7
	mov.16b	v25, v19
	mov.16b	v26, v21
	mov.16b	v27, v22
	mov.16b	v11, v13
	mov.16b	v28, v9
	mov.16b	v29, v9
	mov.16b	v12, v14
LBB2_6:
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d0, x8
	str	d8, [sp, #520]                  ; 8-byte Folded Spill
	fdiv	d1, d10, d8
LBB2_7:
	str	d3, [sp, #2176]
	str	d3, [sp, #2184]
	fmul	d2, d4, d9
	str	d17, [sp, #2192]
	str	d2, [sp, #2200]
	fdiv	d2, d9, d15
	fmov	d3, #1.00000000
	fcmp	d15, d3
	mov	x8, #54421                      ; =0xd495
	movk	x8, #26633, lsl #16
	movk	x8, #27682, lsl #32
	movk	x8, #16328, lsl #48
	fmov	d4, x8
	fcsel	d2, d2, d4, gt
	str	d5, [sp, #2208]
	str	d2, [sp, #2216]
	str	d6, [sp, #2224]
	str	d7, [sp, #2232]
	fmul	d2, d19, d9
	str	d2, [sp, #2240]
	str	d21, [sp, #2248]
	fmul	d2, d22, d9
	fdiv	d5, d9, d13
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d6, x8
	fcmp	d13, d6
	mov	x8, #20972                      ; =0x51ec
	movk	x8, #7864, lsl #16
	movk	x8, #60293, lsl #32
	movk	x8, #16423, lsl #48
	fmov	d7, x8
	fcsel	d5, d5, d7, gt
	str	d2, [sp, #2256]
	str	d5, [sp, #2264]
	str	d29, [sp, #2272]
	str	d28, [sp, #2280]
	fmul	d2, d14, d9
	str	d2, [sp, #2288]
	str	d10, [sp, #2296]
	str	d10, [sp, #2048]
	str	d17, [sp, #2056]
	fmul	d2, d16, d9
	str	d9, [sp, #2064]
	str	d2, [sp, #2072]
	fdiv	d2, d9, d20
	fcmp	d20, d3
	fcsel	d2, d2, d4, gt
	str	d18, [sp, #2080]
	str	d2, [sp, #2088]
	str	d23, [sp, #2096]
	str	d24, [sp, #2104]
	fmul	d2, d25, d9
	str	d2, [sp, #2112]
	str	d26, [sp, #2120]
	fmul	d2, d27, d9
	fcmp	d11, d6
	mov	x8, #15729                      ; =0x3d71
	movk	x8, #55050, lsl #16
	movk	x8, #61603, lsl #32
	movk	x8, #16423, lsl #48
	fmov	d3, x8
	fdiv	d4, d9, d11
	fcsel	d3, d4, d3, gt
	str	d2, [sp, #2128]
	str	d3, [sp, #2136]
	str	d10, [sp, #2144]
	str	d10, [sp, #2152]
	fmul	d2, d12, d9
	str	d2, [sp, #2160]
	str	d1, [sp, #2168]
Lloh19:
	adrp	x8, lCPI2_0@PAGE
Lloh20:
	ldr	q1, [x8, lCPI2_0@PAGEOFF]
	fmov.2d	v2, #2.00000000
	str	q2, [sp, #1920]
	str	q1, [sp, #1936]
Lloh21:
	adrp	x8, lCPI2_1@PAGE
Lloh22:
	ldr	q1, [x8, lCPI2_1@PAGEOFF]
Lloh23:
	adrp	x8, lCPI2_2@PAGE
Lloh24:
	ldr	q2, [x8, lCPI2_2@PAGEOFF]
	str	q1, [sp, #1952]
	str	q2, [sp, #1968]
Lloh25:
	adrp	x8, lCPI2_3@PAGE
Lloh26:
	ldr	q1, [x8, lCPI2_3@PAGEOFF]
	fmov.2d	v2, #10.00000000
	str	q1, [sp, #1984]
	str	q2, [sp, #2000]
	fmov.2d	v1, #31.00000000
	str	q1, [sp, #2016]
	mov	x8, #4633641066610819072        ; =0x404e000000000000
	str	x8, [sp, #2032]
	str	d0, [sp, #2040]
	add	x1, sp, #560
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	w19, #1000                      ; =0x3e8
	add	x26, sp, #576
	add	x24, sp, #896
	add	x27, sp, #1536
	add	x28, sp, #1664
	add	x25, sp, #1792
Lloh27:
	adrp	x20, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh28:
	add	x20, x20, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh29:
	adrp	x21, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh30:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
Lloh31:
	adrp	x22, l___const.run_native_asm_sniper_cycle.bm@PAGE
Lloh32:
	add	x22, x22, l___const.run_native_asm_sniper_cycle.bm@PAGEOFF
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16264, lsl #48
	fmov	d8, x8
Lloh33:
	adrp	x23, l___const.run_native_asm_sniper_cycle.am@PAGE
Lloh34:
	add	x23, x23, l___const.run_native_asm_sniper_cycle.am@PAGEOFF
LBB2_8:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #2048
	add	x9, sp, #2176
	; InlineAsm Start
	; InlineAsm End
	add	x8, sp, #640
	stp	x8, x26, [sp, #72]
	add	x8, sp, #768
	stp	x24, x8, [sp, #56]
	add	x8, sp, #1024
	str	x8, [sp, #48]
	add	x8, sp, #1152
	str	x8, [sp, #40]
	add	x8, sp, #1280
	str	x8, [sp, #32]
	add	x8, sp, #1408
	stp	x27, x8, [sp, #16]
	add	x1, sp, #2176
	add	x2, sp, #2048
	add	x5, sp, #1920
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
	b.ne	LBB2_8
; %bb.9:
	add	x1, sp, #544
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldr	x8, [sp, #544]
	ldr	x9, [sp, #552]
	ldr	x10, [sp, #560]
	ldr	x11, [sp, #568]
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
	fmul	d8, d0, d1
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d1, x8
	fmul	d9, d0, d1
Lloh35:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh36:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	str	d8, [x8]
	str	d9, [x8, #8]
Lloh37:
	adrp	x9, __MergedGlobals.74@PAGE+8
Lloh38:
	add	x9, x9, __MergedGlobals.74@PAGEOFF+8
	ldr	x10, [x9]
	add	x10, x10, #1
	str	x10, [x9]
	ldrsw	x23, [sp, #576]
	ldr	x8, [x8, #16]
	ldr	x9, [x9, #8]
Lloh39:
	adrp	x28, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh40:
	add	x28, x28, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	cmp	x8, x9
	b.ls	LBB2_43
; %bb.10:
	add	x9, sp, #896
	ldr	d0, [x9, x23, lsl #3]
	fcmp	d0, #0.0
	b.le	LBB2_43
; %bb.11:
	add	x9, sp, #768
	ldr	d10, [x9, x23, lsl #3]
	mov	x9, #34184                      ; =0x8588
	movk	x9, #54106, lsl #16
	movk	x9, #58300, lsl #32
	movk	x9, #16244, lsl #48
	fmov	d1, x9
	fcmp	d10, d1
	b.lt	LBB2_43
; %bb.12:
Lloh41:
	adrp	x19, __MergedGlobals.74@PAGE
Lloh42:
	add	x19, x19, __MergedGlobals.74@PAGEOFF
	ldr	x9, [x19, #24]
	add	x9, x9, #1
	stp	x8, x9, [x19, #16]
	mov	x9, #5243                       ; =0x147b
	movk	x9, #18350, lsl #16
	movk	x9, #47841, lsl #32
	movk	x9, #16471, lsl #48
	fmov	d1, x9
	fmul	d11, d0, d1
	fmul	d12, d10, d1
	add	x9, sp, #640
	ldr	d0, [x9, x23, lsl #3]
	fmul	d13, d0, d1
	ldp	d0, d1, [x19, #32]
	fadd	d0, d0, d11
	fadd	d1, d1, d12
	stp	d0, d1, [x19, #32]
	ldr	d0, [x19, #48]
	fadd	d0, d0, d13
	str	d0, [x19, #48]
	ldr	w9, [x19]
	cmp	w9, #1
	b.lt	LBB2_15
; %bb.13:
	mov	w10, #19                        ; =0x13
	cmp	w9, #19
	csel	w11, w9, w10, lo
	add	w9, w11, #1
	mov	w12, #192                       ; =0xc0
	umaddl	x10, w11, w12, x19
	add	x10, x10, #80
	sub	w11, w11, #1
	umaddl	x11, w11, w12, x19
	add	x11, x11, #80
LBB2_14:                                ; =>This Inner Loop Header: Depth=1
	ldp	q0, q1, [x11, #128]
	stp	q0, q1, [x10, #128]
	ldp	q0, q1, [x11, #160]
	stp	q0, q1, [x10, #160]
	ldp	q0, q1, [x11, #64]
	stp	q0, q1, [x10, #64]
	ldp	q0, q1, [x11, #96]
	stp	q0, q1, [x10, #96]
	ldp	q0, q1, [x11]
	stp	q0, q1, [x10]
	ldp	q0, q1, [x11, #32]
	sub	w9, w9, #1
	stp	q0, q1, [x10, #32]
	sub	x10, x10, #192
	sub	x11, x11, #192
	cmp	w9, #1
	b.gt	LBB2_14
LBB2_15:
Lloh43:
	adrp	x0, __MergedGlobals.74@PAGE+80
Lloh44:
	add	x0, x0, __MergedGlobals.74@PAGEOFF+80
	str	x8, [x0], #8
	ldr	x8, [x28, x23, lsl #3]
	str	x8, [sp]
Lloh45:
	adrp	x2, l_.str.25@PAGE
Lloh46:
	add	x2, x2, l_.str.25@PAGEOFF
	mov	w1, #96                         ; =0x60
	bl	_snprintf
	mov	x8, #116548232544256            ; =0x6a0000000000
	movk	x8, #16632, lsl #48
	fmov	d0, x8
	fcmp	d11, d0
	b.ge	LBB2_37
; %bb.16:
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d0, x8
	fcmp	d11, d0
	b.ge	LBB2_39
; %bb.17:
Lloh47:
	adrp	x8, l_.str.28@PAGE
Lloh48:
	add	x8, x8, l_.str.28@PAGEOFF
	b	LBB2_40
LBB2_18:
	ldr	x0, [x20]
	cbz	x0, LBB2_2
; %bb.19:
	ldr	x8, [x20, #8]
	cmp	x8, #257
	b.lo	LBB2_2
; %bb.20:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	cbnz	x0, LBB2_30
	b	LBB2_2
LBB2_21:
	ldr	x0, [x20]
	cbz	x0, LBB2_3
; %bb.22:
	ldr	x8, [x20, #8]
	cmp	x8, #257
	b.lo	LBB2_3
; %bb.23:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	cbnz	x0, LBB2_30
	b	LBB2_3
LBB2_24:
	ldr	x0, [x20]
	cbz	x0, LBB2_4
; %bb.25:
	ldr	x8, [x20, #8]
	cmp	x8, #257
	b.lo	LBB2_4
; %bb.26:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	cbnz	x0, LBB2_30
	b	LBB2_4
LBB2_27:
	ldr	x0, [x20]
	cbz	x0, LBB2_5
; %bb.28:
	ldr	x8, [x20, #8]
	cmp	x8, #257
	b.lo	LBB2_5
; %bb.29:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	cbz	x0, LBB2_5
LBB2_30:
	ldr	x0, [x20]
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	mov	x8, #2717908992                 ; =0xa2000000
	movk	x8, #6804, lsl #32
	movk	x8, #17005, lsl #48
	fmov	d11, x8
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d12, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16595, lsl #48
	fmov	d2, x8
	mov	x8, #260584255782912            ; =0xed0000000000
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v10, v2
	bl	_decode_slot0_sqrt_price
	mov.16b	v9, v0
	ldr	x0, [x20]
	mov	w1, #11                         ; =0xb
	bl	_find_batch_result_for_id
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v8, v10
	mov.16b	v2, v10
	mov.16b	v3, v9
	bl	_decode_slot0_sqrt_price
	mov.16b	v10, v0
	ldr	x0, [x20]
	mov	w1, #12                         ; =0xc
	bl	_find_batch_result_for_id
	mov.16b	v0, v11
	mov.16b	v1, v12
	str	d12, [sp, #520]                 ; 8-byte Folded Spill
	mov.16b	v2, v8
	str	d8, [sp, #536]                  ; 8-byte Folded Spill
	mov.16b	v3, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #496]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #13                         ; =0xd
	bl	_find_batch_result_for_id
	mov.16b	v0, v11
	mov.16b	v1, v12
	mov.16b	v2, v8
	mov.16b	v3, v9
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #504]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #14                         ; =0xe
	bl	_find_batch_result_for_id
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16361, lsl #48
	fmov	d13, x8
	mov	x8, #25061                      ; =0x61e5
	movk	x8, #54945, lsl #16
	movk	x8, #61236, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	fmov	d2, #2.50000000
	mov.16b	v1, v13
	bl	_decode_slot0_sqrt_price
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #15                         ; =0xf
	bl	_find_batch_result_for_id
	fmov	d0, #1.00000000
	fmov	d2, #2.50000000
	mov.16b	v1, v13
	str	d8, [sp, #512]                  ; 8-byte Folded Spill
	mov.16b	v3, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #472]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #16                         ; =0x10
	bl	_find_batch_result_for_id
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d13, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16563, lsl #48
	fmov	d14, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16670, lsl #48
	fmov	d15, x8
	mov	x8, #25082609008640             ; =0x16d000000000
	movk	x8, #16628, lsl #48
	fmov	d3, x8
	mov.16b	v0, v13
	mov.16b	v1, v14
	mov.16b	v2, v15
	bl	_decode_slot0_sqrt_price
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #17                         ; =0x11
	bl	_find_batch_result_for_id
	mov.16b	v0, v13
	mov.16b	v1, v14
	mov.16b	v2, v15
	str	d8, [sp, #488]                  ; 8-byte Folded Spill
	mov.16b	v3, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #464]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #18                         ; =0x12
	bl	_find_batch_result_for_id
	mov	x8, #116548232544256            ; =0x6a0000000000
	movk	x8, #16632, lsl #48
	fmov	d14, x8
	mov	x8, #215504279044096            ; =0xc40000000000
	movk	x8, #16584, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v13
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #19                         ; =0x13
	bl	_find_batch_result_for_id
	fmov	d0, #1.00000000
	mov.16b	v1, v13
	mov.16b	v2, v14
	str	d8, [sp, #368]                  ; 8-byte Folded Spill
	mov.16b	v3, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #440]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #20                         ; =0x14
	bl	_find_batch_result_for_id
	mov	x8, #36700                      ; =0x8f5c
	movk	x8, #62914, lsl #16
	movk	x8, #23592, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d14, x8
	mov	x8, #47186                      ; =0xb852
	movk	x8, #34078, lsl #16
	movk	x8, #20971, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d8, x8
	mov	x8, #37539                      ; =0x92a3
	movk	x8, #314, lsl #16
	movk	x8, #1101, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v14
	mov.16b	v2, v8
	bl	_decode_slot0_sqrt_price
	mov.16b	v12, v0
	ldr	x0, [x20]
	mov	w1, #21                         ; =0x15
	bl	_find_batch_result_for_id
	fmov	d0, #1.00000000
	mov.16b	v1, v14
	mov.16b	v2, v8
	str	d12, [sp, #480]                 ; 8-byte Folded Spill
	mov.16b	v3, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #416]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #22                         ; =0x16
	bl	_find_batch_result_for_id
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d8, x8
	mov	x8, #3460                       ; =0xd84
	movk	x8, #44879, lsl #16
	movk	x8, #26004, lsl #32
	movk	x8, #16328, lsl #48
	fmov	d3, x8
	fmov	d2, #10.00000000
	mov.16b	v0, v11
	mov.16b	v1, v8
	bl	_decode_slot0_sqrt_price
	mov.16b	v12, v0
	ldr	x0, [x20]
	mov	w1, #23                         ; =0x17
	bl	_find_batch_result_for_id
	fmov	d2, #10.00000000
	mov.16b	v0, v11
	mov.16b	v1, v8
	str	d12, [sp, #456]                 ; 8-byte Folded Spill
	mov.16b	v3, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #408]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #24                         ; =0x18
	bl	_find_batch_result_for_id
	mov	x8, #48571                      ; =0xbdbb
	movk	x8, #55767, lsl #16
	movk	x8, #31967, lsl #32
	movk	x8, #15835, lsl #48
	fmov	d8, x8
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #64225, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d3, x8
	fmov	d1, #5.00000000
	mov.16b	v0, v8
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	mov.16b	v12, v0
	ldr	x0, [x20]
	mov	w1, #25                         ; =0x19
	bl	_find_batch_result_for_id
	fmov	d1, #5.00000000
	mov.16b	v0, v8
	mov.16b	v2, v13
	str	d12, [sp, #448]                 ; 8-byte Folded Spill
	mov.16b	v3, v12
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #400]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #26                         ; =0x1a
	bl	_find_batch_result_for_id
	mov	x8, #266081813921792            ; =0xf20000000000
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	mov.16b	v0, v11
	ldr	d15, [sp, #520]                 ; 8-byte Folded Reload
	mov.16b	v1, v15
	ldr	d13, [sp, #536]                 ; 8-byte Folded Reload
	mov.16b	v2, v13
	bl	_decode_slot0_sqrt_price
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #27                         ; =0x1b
	bl	_find_batch_result_for_id
	mov.16b	v0, v11
	mov.16b	v1, v15
	mov.16b	v2, v13
	str	d8, [sp, #432]                  ; 8-byte Folded Spill
	mov.16b	v3, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #392]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #28                         ; =0x1c
	bl	_find_batch_result_for_id
	mov	x8, #26865                      ; =0x68f1
	movk	x8, #35043, lsl #16
	movk	x8, #63669, lsl #32
	movk	x8, #16100, lsl #48
	fmov	d8, x8
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16313, lsl #48
	fmov	d14, x8
	mov	x8, #20850                      ; =0x5172
	movk	x8, #8749, lsl #16
	movk	x8, #51594, lsl #32
	movk	x8, #16203, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	mov.16b	v11, v0
	ldr	x0, [x20]
	mov	w1, #29                         ; =0x1d
	bl	_find_batch_result_for_id
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v14
	str	d11, [sp, #424]                 ; 8-byte Folded Spill
	mov.16b	v3, v11
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #384]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #30                         ; =0x1e
	bl	_find_batch_result_for_id
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16543, lsl #48
	fmov	d8, x8
	mov	x8, #52429                      ; =0xcccd
	movk	x8, #52428, lsl #16
	movk	x8, #56524, lsl #32
	movk	x8, #16488, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	mov.16b	v2, v8
	bl	_decode_slot0_sqrt_price
	mov.16b	v13, v0
	ldr	x0, [x20]
	mov	w1, #31                         ; =0x1f
	bl	_find_batch_result_for_id
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	mov.16b	v2, v8
	mov.16b	v3, v13
	bl	_decode_slot0_sqrt_price
	mov.16b	v11, v0
	ldr	x0, [x20]
	mov	w1, #32                         ; =0x20
	bl	_find_batch_result_for_id
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d8, x8
	mov.16b	v0, v8
	mov.16b	v1, v15
	ldr	d12, [sp, #536]                 ; 8-byte Folded Reload
	mov.16b	v2, v12
	mov.16b	v3, v10
	bl	_decode_v2_reserves_price
	str	d0, [sp, #376]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #33                         ; =0x21
	bl	_find_batch_result_for_id
	mov.16b	v0, v8
	mov.16b	v1, v15
	mov.16b	v2, v12
	mov.16b	v3, v10
	bl	_decode_v2_reserves_price
	str	d0, [sp, #536]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #35                         ; =0x23
	bl	_find_batch_result_for_id
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d8, x8
	mov	x8, #20010                      ; =0x4e2a
	movk	x8, #23898, lsl #16
	movk	x8, #20467, lsl #32
	movk	x8, #16133, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	mov.16b	v12, v0
	ldr	x0, [x20]
	mov	w1, #34                         ; =0x22
	bl	_find_batch_result_for_id
	mov	x8, #51200                      ; =0xc800
	movk	x8, #26446, lsl #16
	movk	x8, #49517, lsl #32
	movk	x8, #17323, lsl #48
	fmov	d0, x8
	mov.16b	v1, v8
	mov.16b	v2, v14
	mov.16b	v3, v12
	bl	_decode_v2_reserves_price
	mov.16b	v14, v0
	ldr	x0, [x20]
	mov	w1, #36                         ; =0x24
	bl	_find_batch_result_for_id
	cbz	x0, LBB2_38
; %bb.31:
Lloh49:
	adrp	x1, l_.str.66@PAGE
Lloh50:
	add	x1, x1, l_.str.66@PAGEOFF
	bl	_strstr
	ldr	d15, [sp, #368]                 ; 8-byte Folded Reload
	cbz	x0, LBB2_71
; %bb.32:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	ldp	d17, d16, [sp, #504]            ; 16-byte Folded Reload
	ldp	d5, d3, [sp, #488]              ; 16-byte Folded Reload
	ldp	d4, d6, [sp, #472]              ; 16-byte Folded Reload
	ldp	d7, d18, [sp, #456]             ; 16-byte Folded Reload
	ldp	d20, d19, [sp, #440]            ; 16-byte Folded Reload
	ldp	d22, d21, [sp, #424]            ; 16-byte Folded Reload
	ldp	d24, d23, [sp, #408]            ; 16-byte Folded Reload
	ldp	d26, d25, [sp, #392]            ; 16-byte Folded Reload
	ldp	d28, d27, [sp, #376]            ; 16-byte Folded Reload
	ldr	d29, [sp, #536]                 ; 8-byte Folded Reload
	cbz	w10, LBB2_68
; %bb.33:
	mov	x8, #0                          ; =0x0
	add	x9, x9, #1
LBB2_34:                                ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB2_63
; %bb.35:                               ;   in Loop: Header=BB2_34 Depth=1
	cmp	x8, #383
	b.hi	LBB2_63
; %bb.36:                               ;   in Loop: Header=BB2_34 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB2_34
	b	LBB2_64
LBB2_37:
Lloh51:
	adrp	x8, l_.str.26@PAGE
Lloh52:
	add	x8, x8, l_.str.26@PAGEOFF
	ldr	q0, [x8]
Lloh53:
	adrp	x9, __MergedGlobals.74@PAGE+184
Lloh54:
	add	x9, x9, __MergedGlobals.74@PAGEOFF+184
	str	q0, [x9]
	ldur	q0, [x8, #9]
	stur	q0, [x9, #9]
	b	LBB2_41
LBB2_38:
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d8, x8
	ldp	d17, d16, [sp, #504]            ; 16-byte Folded Reload
	ldp	d5, d3, [sp, #488]              ; 16-byte Folded Reload
	ldp	d4, d6, [sp, #472]              ; 16-byte Folded Reload
	ldp	d7, d18, [sp, #456]             ; 16-byte Folded Reload
	ldp	d20, d19, [sp, #440]            ; 16-byte Folded Reload
	ldp	d22, d21, [sp, #424]            ; 16-byte Folded Reload
	ldp	d24, d23, [sp, #408]            ; 16-byte Folded Reload
	ldp	d26, d25, [sp, #392]            ; 16-byte Folded Reload
	ldp	d28, d27, [sp, #376]            ; 16-byte Folded Reload
	ldr	d29, [sp, #536]                 ; 8-byte Folded Reload
	ldr	d15, [sp, #368]                 ; 8-byte Folded Reload
	b	LBB2_6
LBB2_39:
Lloh55:
	adrp	x8, l_.str.27@PAGE
Lloh56:
	add	x8, x8, l_.str.27@PAGEOFF
LBB2_40:
	ldr	q0, [x8]
Lloh57:
	adrp	x9, __MergedGlobals.74@PAGE+184
Lloh58:
	add	x9, x9, __MergedGlobals.74@PAGEOFF+184
	str	q0, [x9]
	ldur	x8, [x8, #14]
	stur	x8, [x9, #14]
LBB2_41:
	add	x8, sp, #1536
	ldr	d0, [x8, x23, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	add	x8, sp, #1792
	fmul	d0, d0, d1
	ldr	d1, [x8, x23, lsl #3]
	stp	d1, d0, [x19, #216]
	stp	d11, d12, [x19, #232]
	stp	d10, d13, [x19, #248]
	str	d8, [x19, #264]
	ldr	w8, [x19]
	cmp	w8, #19
	b.gt	LBB2_43
; %bb.42:
	add	w8, w8, #1
	adrp	x9, __MergedGlobals.74@PAGE
	str	w8, [x9, __MergedGlobals.74@PAGEOFF]
LBB2_43:
Lloh59:
	adrp	x8, __MergedGlobals.74@PAGE+56
Lloh60:
	ldr	x19, [x8, __MergedGlobals.74@PAGEOFF+56]
	add	x20, sp, #896
	ldr	d0, [x20, x23, lsl #3]
	fcmp	d0, #0.0
	mov	x22, #47104                     ; =0xb800
	movk	x22, #59457, lsl #16
	movk	x22, #814, lsl #32
	b.le	LBB2_48
; %bb.44:
Lloh61:
	adrp	x21, l_.str.32@PAGE
Lloh62:
	add	x21, x21, l_.str.32@PAGEOFF
	ldr	w8, [sp, #532]                  ; 4-byte Folded Reload
	cbnz	w8, LBB2_49
; %bb.45:
	cmp	x19, x22
	b.lo	LBB2_49
; %bb.46:
	adrp	x8, __MergedGlobals@PAGE+24
	ldr	x10, [x8, __MergedGlobals@PAGEOFF+24]
	adrp	x9, __MergedGlobals.74@PAGE+64
	ldr	x11, [x9, __MergedGlobals.74@PAGEOFF+64]
	add	x11, x11, #20
	cmp	x10, x11
	b.lo	LBB2_49
; %bb.47:
	ldr	x8, [x8, __MergedGlobals@PAGEOFF+24]
	str	x8, [x9, __MergedGlobals.74@PAGEOFF+64]
Lloh63:
	adrp	x0, l_.str.30@PAGE
Lloh64:
	add	x0, x0, l_.str.30@PAGEOFF
	bl	_system
Lloh65:
	adrp	x21, l_.str.31@PAGE
Lloh66:
	add	x21, x21, l_.str.31@PAGEOFF
	b	LBB2_49
LBB2_48:
Lloh67:
	adrp	x21, l_.str.29@PAGE
Lloh68:
	add	x21, x21, l_.str.29@PAGEOFF
LBB2_49:
	str	x23, [sp, #536]                 ; 8-byte Folded Spill
Lloh69:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh70:
	add	x8, x8, __MergedGlobals@PAGEOFF+32
	ldr	x25, [x8]
Lloh71:
	adrp	x9, __MergedGlobals.74@PAGE+24
Lloh72:
	add	x9, x9, __MergedGlobals.74@PAGEOFF+24
	ldr	x26, [x8, #8]
	ldr	x27, [x9, #48]
	ldr	x24, [x9, #32]
	ldr	x23, [x8, #16]
	ldrsw	x8, [sp, #636]
	ldr	x9, [x9]
	cbz	x9, LBB2_51
; %bb.50:
Lloh73:
	adrp	x10, __MergedGlobals.74@PAGE+32
Lloh74:
	ldr	d0, [x10, __MergedGlobals.74@PAGEOFF+32]
	ucvtf	d1, x9
	fdiv	d10, d0, d1
	b	LBB2_52
LBB2_51:
	add	x9, sp, #896
	ldr	x10, [sp, #536]                 ; 8-byte Folded Reload
	ldr	d0, [x9, x10, lsl #3]
	mov	x9, #5243                       ; =0x147b
	movk	x9, #18350, lsl #16
	movk	x9, #47841, lsl #32
	movk	x9, #16471, lsl #48
	fmov	d1, x9
	fmul	d10, d0, d1
LBB2_52:
	ldr	d11, [x20, x8, lsl #3]
Lloh75:
	adrp	x0, l_.str.33@PAGE
Lloh76:
	add	x0, x0, l_.str.33@PAGEOFF
Lloh77:
	adrp	x1, l_.str.34@PAGE
Lloh78:
	add	x1, x1, l_.str.34@PAGEOFF
	bl	_fopen
	mov	x9, #12801                      ; =0x3201
	movk	x9, #60532, lsl #16
	movk	x9, #4768, lsl #32
	movk	x9, #16370, lsl #48
	cbz	x0, LBB2_59
; %bb.53:
	mov	x20, x0
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	ucvtf	d2, x25
	fmov	d1, x8
	fmul	d0, d2, d1
	ucvtf	d3, x26
	ucvtf	d19, x27
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	mov	x9, #5243                       ; =0x147b
	movk	x9, #18350, lsl #16
	movk	x9, #47841, lsl #32
	movk	x9, #16471, lsl #48
	fmadd	d3, d3, d1, d0
	fmul	d7, d19, d1
	ucvtf	d1, x24
	fmov	d5, x8
	ucvtf	d6, x23
	fmov	d17, x9
	fadd	d16, d3, d7
	fmul	d4, d1, d5
	fmul	d6, d6, d5
	fmul	d1, d11, d17
	mov	x8, #80126909874176             ; =0x48e000000000
	movk	x8, #16767, lsl #48
	fmov	d5, x8
	fmul	d5, d11, d5
	mov	x8, #32890                      ; =0x807a
	movk	x8, #11989, lsl #16
	movk	x8, #57849, lsl #32
	movk	x8, #16152, lsl #48
	fmov	d20, x8
	fmul	d2, d2, d20
	mov	x14, x28
Lloh79:
	adrp	x28, __MergedGlobals.74@PAGE
Lloh80:
	add	x28, x28, __MergedGlobals.74@PAGEOFF
	ldr	x8, [x28, #8]
	ldr	x9, [x28, #24]
	ldr	q17, [x28, #32]
	ldr	d18, [x28, #48]
Lloh81:
	adrp	x11, __MergedGlobals@PAGE+24
Lloh82:
	add	x11, x11, __MergedGlobals@PAGEOFF+24
	ldr	x10, [x11]
	ldr	x11, [x11, #32]
Lloh83:
	adrp	x12, l_.str.36@PAGE
Lloh84:
	add	x12, x12, l_.str.36@PAGEOFF
Lloh85:
	adrp	x13, l_.str.37@PAGE
Lloh86:
	add	x13, x13, l_.str.37@PAGEOFF
	cmp	x19, x22
	csel	x12, x13, x12, lo
	mov	x13, #5243                      ; =0x147b
	movk	x13, #18350, lsl #16
	movk	x13, #47841, lsl #32
	movk	x13, #16471, lsl #48
	fmov	d21, x13
	fmul	d22, d16, d21
	fmul	d23, d3, d21
	ldr	x15, [sp, #536]                 ; 8-byte Folded Reload
	ldr	x13, [x14, x15, lsl #3]
	fmul	d19, d19, d20
Lloh87:
	adrp	x14, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh88:
	add	x14, x14, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	ldr	x14, [x14, x15, lsl #3]
	add	x16, sp, #1792
	ldr	d20, [x16, x15, lsl #3]
	add	x16, sp, #1536
	ldr	d24, [x16, x15, lsl #3]
	fmul	d25, d24, d21
	add	x16, sp, #1408
	ldr	d26, [x16, x15, lsl #3]
	add	x16, sp, #1280
	ldr	d27, [x16, x15, lsl #3]
	fmul	d28, d26, d21
	fmul	d29, d27, d21
	add	x16, sp, #1152
	ldr	d30, [x16, x15, lsl #3]
	fmul	d31, d30, d21
	add	x16, sp, #896
	ldr	d11, [x16, x15, lsl #3]
	add	x16, sp, #768
	ldr	d12, [x16, x15, lsl #3]
	fmul	d13, d11, d21
	fmul	d14, d12, d21
	add	x16, sp, #640
	ldr	d15, [x16, x15, lsl #3]
	fmul	d21, d15, d21
	stp	d21, d15, [sp, #320]
	stp	d14, d12, [sp, #304]
	stp	d13, d11, [sp, #288]
	stp	d31, d30, [sp, #272]
	stp	d29, d27, [sp, #256]
	stp	d28, d26, [sp, #240]
	stp	d25, d24, [sp, #224]
	str	d20, [sp, #216]
	stp	d19, d7, [sp, #184]
	stp	d23, d3, [sp, #168]
	stp	d22, d16, [sp, #152]
	stp	d4, d6, [sp, #120]
	stp	d10, d5, [sp, #72]
	stp	d18, d1, [sp, #56]
	stur	q17, [sp, #40]
	stp	d0, d2, [sp, #8]
	ldr	d0, [sp, #520]                  ; 8-byte Folded Reload
	str	d0, [sp]
	stp	x13, x14, [sp, #200]
	stp	x12, x21, [sp, #136]
	stp	x10, x11, [sp, #104]
	stp	d8, d9, [sp, #88]
Lloh89:
	adrp	x1, l_.str.35@PAGE
Lloh90:
	add	x1, x1, l_.str.35@PAGEOFF
	stp	x8, x9, [sp, #24]
	bl	_fprintf
	ldr	w8, [x28]
Lloh91:
	adrp	x24, l_.str.40@PAGE
Lloh92:
	add	x24, x24, l_.str.40@PAGEOFF
Lloh93:
	adrp	x25, l_.str.39@PAGE
Lloh94:
	add	x25, x25, l_.str.39@PAGEOFF
	cmp	w8, #1
	b.lt	LBB2_56
; %bb.54:
Lloh95:
	adrp	x19, __MergedGlobals.74@PAGE+184
Lloh96:
	add	x19, x19, __MergedGlobals.74@PAGEOFF+184
	mov	w22, #1                         ; =0x1
	adrp	x23, __MergedGlobals.74@PAGE
Lloh97:
	adrp	x21, l_.str.38@PAGE
Lloh98:
	add	x21, x21, l_.str.38@PAGEOFF
LBB2_55:                                ; =>This Inner Loop Header: Depth=1
	ldur	x9, [x19, #-104]
	sub	x10, x19, #96
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
	ldrsw	x8, [x23, __MergedGlobals.74@PAGEOFF]
	add	x19, x19, #192
	cmp	x22, x8
	add	x22, x22, #1
	b.lt	LBB2_55
LBB2_56:
Lloh99:
	adrp	x0, l_.str.41@PAGE
Lloh100:
	add	x0, x0, l_.str.41@PAGEOFF
	mov	w1, #19                         ; =0x13
	mov	w2, #1                          ; =0x1
	mov	x3, x20
	bl	_fwrite
	mov	x26, #0                         ; =0x0
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d10, x8
	mov	x28, x20
Lloh101:
	adrp	x20, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh102:
	add	x20, x20, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	add	x19, sp, #1792
	add	x22, sp, #1536
	add	x24, sp, #1408
	add	x23, sp, #1280
	add	x25, sp, #1152
	add	x27, sp, #896
	add	x21, sp, #768
LBB2_57:                                ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #576
	ldrsw	x8, [x8, x26, lsl #2]
	add	x26, x26, #1
Lloh103:
	adrp	x9, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh104:
	add	x9, x9, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x9, x8, lsl #3]
	ldr	x10, [x20, x8, lsl #3]
	add	x11, sp, #2176
	ldr	d0, [x11, x8, lsl #3]
	add	x11, sp, #2048
	ldr	d1, [x11, x8, lsl #3]
	ldr	d2, [x19, x8, lsl #3]
	add	x11, sp, #1920
	ldr	d3, [x11, x8, lsl #3]
	add	x11, sp, #1664
	ldr	d4, [x11, x8, lsl #3]
	ldr	d5, [x22, x8, lsl #3]
	ldr	d6, [x24, x8, lsl #3]
	fmul	d7, d5, d10
	ldr	d16, [x23, x8, lsl #3]
	ldr	d17, [x25, x8, lsl #3]
	fmul	d18, d17, d10
	add	x11, sp, #1024
	ldr	d19, [x11, x8, lsl #3]
	fmul	d20, d19, d10
	ldr	d21, [x27, x8, lsl #3]
	fmul	d22, d21, d10
	ldr	d23, [x21, x8, lsl #3]
	fmul	d24, d23, d10
	add	x11, sp, #640
	ldr	d25, [x11, x8, lsl #3]
	fmul	d26, d25, d10
Lloh105:
	adrp	x8, l_.str.39@PAGE
Lloh106:
	add	x8, x8, l_.str.39@PAGEOFF
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
	str	x26, [sp]
	mov	x0, x28
Lloh107:
	adrp	x1, l_.str.42@PAGE
Lloh108:
	add	x1, x1, l_.str.42@PAGEOFF
	bl	_fprintf
	cmp	x26, #15
	b.ne	LBB2_57
; %bb.58:
	ldrsw	x10, [sp, #636]
Lloh109:
	adrp	x19, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh110:
	add	x19, x19, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x8, [x19, x10, lsl #3]
	ldr	x9, [x20, x10, lsl #3]
	add	x11, sp, #2176
	ldr	d0, [x11, x10, lsl #3]
	add	x11, sp, #2048
	ldr	d1, [x11, x10, lsl #3]
	add	x11, sp, #1792
	ldr	d2, [x11, x10, lsl #3]
	add	x11, sp, #1920
	ldr	d3, [x11, x10, lsl #3]
	add	x11, sp, #1664
	ldr	d4, [x11, x10, lsl #3]
	add	x11, sp, #1536
	ldr	d5, [x11, x10, lsl #3]
	mov	x11, #5243                      ; =0x147b
	movk	x11, #18350, lsl #16
	movk	x11, #47841, lsl #32
	movk	x11, #16471, lsl #48
	fmov	d6, x11
	add	x11, sp, #1408
	ldr	d7, [x11, x10, lsl #3]
	add	x11, sp, #1280
	ldr	d16, [x11, x10, lsl #3]
	add	x11, sp, #1152
	ldr	d17, [x11, x10, lsl #3]
	fmul	d18, d5, d6
	fmul	d19, d17, d6
	add	x11, sp, #1024
	ldr	d20, [x11, x10, lsl #3]
	fmul	d21, d20, d6
	add	x11, sp, #896
	ldr	d22, [x11, x10, lsl #3]
	add	x11, sp, #768
	ldr	d23, [x11, x10, lsl #3]
	fmul	d24, d22, d6
	fmul	d25, d23, d6
	add	x11, sp, #640
	ldr	d26, [x11, x10, lsl #3]
	fmul	d6, d26, d6
Lloh111:
	adrp	x10, l_.str.40@PAGE
Lloh112:
	add	x10, x10, l_.str.40@PAGEOFF
	str	x10, [sp, #192]
	stp	d6, d26, [sp, #176]
	stp	d25, d23, [sp, #160]
	stp	d24, d22, [sp, #144]
	mov	x10, #18036                     ; =0x4674
	movk	x10, #63124, lsl #16
	movk	x10, #24326, lsl #32
	movk	x10, #16264, lsl #48
	mov	x20, #12801                     ; =0x3201
	movk	x20, #60532, lsl #16
	movk	x20, #4768, lsl #32
	movk	x20, #16370, lsl #48
	stp	x20, x10, [sp, #128]
	stp	d21, d20, [sp, #112]
	stp	d19, d17, [sp, #96]
	stp	d7, d16, [sp, #80]
	stp	d18, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x8, x9, [sp, #8]
	mov	w9, #16                         ; =0x10
Lloh113:
	adrp	x1, l_.str.42@PAGE
Lloh114:
	add	x1, x1, l_.str.42@PAGEOFF
	str	x9, [sp]
	mov	x0, x28
	bl	_fprintf
Lloh115:
	adrp	x0, l_.str.43@PAGE
Lloh116:
	add	x0, x0, l_.str.43@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x28
	bl	_fwrite
	mov	x0, x28
	bl	_fclose
Lloh117:
	adrp	x0, l_.str.33@PAGE
Lloh118:
	add	x0, x0, l_.str.33@PAGEOFF
Lloh119:
	adrp	x1, l_.str.44@PAGE
Lloh120:
	add	x1, x1, l_.str.44@PAGEOFF
	bl	_rename
	mov	x28, x19
	mov	x9, x20
LBB2_59:
	ldr	w8, [sp, #532]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_61
; %bb.60:
	add	x25, sp, #1024
	ldr	x20, [sp, #536]                 ; 8-byte Folded Reload
	ldr	d11, [x25, x20, lsl #3]
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #49032, lsl #48
	fmov	d0, x8
	fadd	d10, d11, d0
Lloh121:
	adrp	x19, l_str.73@PAGE
Lloh122:
	add	x19, x19, l_str.73@PAGEOFF
	mov	x0, x19
	mov	x24, x9
	bl	_puts
Lloh123:
	adrp	x0, l_.str.46@PAGE
Lloh124:
	add	x0, x0, l_.str.46@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
	stp	d8, d9, [sp]
Lloh125:
	adrp	x0, l_.str.47@PAGE
Lloh126:
	add	x0, x0, l_.str.47@PAGEOFF
	bl	_printf
	ldr	x8, [x28, x20, lsl #3]
	str	x8, [sp]
Lloh127:
	adrp	x0, l_.str.48@PAGE
Lloh128:
	add	x0, x0, l_.str.48@PAGEOFF
	bl	_printf
	add	x8, sp, #2176
	ldr	d0, [x8, x20, lsl #3]
	add	x23, sp, #2176
	add	x26, sp, #2048
	ldr	d1, [x26, x20, lsl #3]
	add	x27, sp, #1792
	ldr	d2, [x27, x20, lsl #3]
	mov	x22, x28
	add	x28, sp, #1920
	ldr	d3, [x28, x20, lsl #3]
	add	x19, sp, #1664
	ldr	d4, [x19, x20, lsl #3]
	stp	d3, d4, [sp, #24]
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh129:
	adrp	x0, l_.str.49@PAGE
Lloh130:
	add	x0, x0, l_.str.49@PAGEOFF
	bl	_printf
	add	x21, sp, #1536
	ldr	d0, [x21, x20, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d8, x8
	fmul	d1, d0, d8
	stp	d0, d1, [sp]
Lloh131:
	adrp	x0, l_.str.50@PAGE
Lloh132:
	add	x0, x0, l_.str.50@PAGEOFF
	bl	_printf
	fmul	d0, d11, d8
	stp	d11, d0, [sp]
Lloh133:
	adrp	x0, l_.str.51@PAGE
Lloh134:
	add	x0, x0, l_.str.51@PAGEOFF
	bl	_printf
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16264, lsl #48
	stp	x8, x24, [sp]
Lloh135:
	adrp	x0, l_.str.52@PAGE
Lloh136:
	add	x0, x0, l_.str.52@PAGEOFF
	bl	_printf
	fmul	d0, d10, d8
	stp	d10, d0, [sp]
Lloh137:
	adrp	x0, l_.str.53@PAGE
Lloh138:
	add	x0, x0, l_.str.53@PAGEOFF
	bl	_printf
	add	x24, sp, #896
	ldr	d0, [x24, x20, lsl #3]
	fmul	d1, d0, d8
Lloh139:
	adrp	x8, l_.str.56@PAGE
Lloh140:
	add	x8, x8, l_.str.56@PAGEOFF
Lloh141:
	adrp	x9, l_.str.55@PAGE
Lloh142:
	add	x9, x9, l_.str.55@PAGEOFF
	fcmp	d0, #0.0
	csel	x8, x9, x8, gt
	str	x8, [sp, #16]
	stp	d0, d1, [sp]
Lloh143:
	adrp	x0, l_.str.54@PAGE
Lloh144:
	add	x0, x0, l_.str.54@PAGEOFF
	bl	_printf
Lloh145:
	adrp	x0, l_str.72@PAGE
Lloh146:
	add	x0, x0, l_str.72@PAGEOFF
	bl	_puts
	ldrsw	x8, [sp, #576]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #1                          ; =0x1
Lloh147:
	adrp	x20, l_.str.58@PAGE
Lloh148:
	add	x20, x20, l_.str.58@PAGEOFF
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #580]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #2                          ; =0x2
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #584]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #3                          ; =0x3
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #588]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #4                          ; =0x4
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #592]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #5                          ; =0x5
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #596]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #6                          ; =0x6
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #600]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #7                          ; =0x7
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #604]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #8                          ; =0x8
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #608]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #9                          ; =0x9
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #612]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #10                         ; =0xa
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #616]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #11                         ; =0xb
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #620]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #12                         ; =0xc
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #624]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #13                         ; =0xd
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #628]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #14                         ; =0xe
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #632]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #15                         ; =0xf
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
	ldrsw	x8, [sp, #636]
	ldr	x9, [x22, x8, lsl #3]
	ldr	d0, [x23, x8, lsl #3]
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	ldr	d5, [x21, x8, lsl #3]
	ldr	d6, [x25, x8, lsl #3]
	fmul	d6, d6, d8
	ldr	d7, [x24, x8, lsl #3]
	fmul	d7, d7, d8
	stp	d6, d7, [sp, #64]
	stp	d4, d5, [sp, #48]
	stp	d2, d3, [sp, #32]
	stp	d0, d1, [sp, #16]
	mov	w8, #16                         ; =0x10
	stp	x8, x9, [sp]
	mov	x0, x20
	bl	_printf
Lloh149:
	adrp	x0, l_str.73@PAGE
Lloh150:
	add	x0, x0, l_str.73@PAGEOFF
	bl	_puts
LBB2_61:
	ldr	x8, [sp, #2328]
Lloh151:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh152:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh153:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_74
; %bb.62:
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
LBB2_63:
	mov	x11, x8
LBB2_64:
	cmp	x11, #384
	b.lo	LBB2_68
; %bb.65:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #322
	movi.2d	v0, #0000000000000000
	fmov	d1, #16.00000000
LBB2_66:                                ; =>This Inner Loop Header: Depth=1
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
	scvtf	d2, w10
	fmadd	d0, d0, d1, d2
	cmp	x8, #64
	b.ne	LBB2_66
; %bb.67:
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	fmov	d1, x8
	fmul	d8, d0, d1
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16297, lsl #48
	fmov	d0, x8
	fcmp	d8, d0
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d0, x8
	fccmp	d8, d0, #0, gt
	b.le	LBB2_69
LBB2_68:
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d8, x8
	b	LBB2_6
LBB2_69:
	mov.16b	v0, v8
	bl	___isnand
	cbnz	w0, LBB2_71
; %bb.70:
	mov.16b	v0, v8
	bl	___isinfd
	cbz	w0, LBB2_72
LBB2_71:
	mov	x8, #18036                      ; =0x4674
	movk	x8, #63124, lsl #16
	movk	x8, #24326, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d8, x8
	ldp	d17, d16, [sp, #504]            ; 16-byte Folded Reload
	ldp	d5, d3, [sp, #488]              ; 16-byte Folded Reload
	ldp	d4, d6, [sp, #472]              ; 16-byte Folded Reload
	ldp	d7, d18, [sp, #456]             ; 16-byte Folded Reload
	ldp	d20, d19, [sp, #440]            ; 16-byte Folded Reload
	ldp	d22, d21, [sp, #424]            ; 16-byte Folded Reload
	ldp	d24, d23, [sp, #408]            ; 16-byte Folded Reload
	ldp	d26, d25, [sp, #392]            ; 16-byte Folded Reload
	ldp	d28, d27, [sp, #376]            ; 16-byte Folded Reload
	ldr	d29, [sp, #536]                 ; 8-byte Folded Reload
	b	LBB2_6
LBB2_72:
	fmov	d0, #1.00000000
	fcmp	d8, d0
	ldp	d17, d16, [sp, #504]            ; 16-byte Folded Reload
	ldp	d5, d3, [sp, #488]              ; 16-byte Folded Reload
	ldp	d4, d6, [sp, #472]              ; 16-byte Folded Reload
	ldp	d7, d18, [sp, #456]             ; 16-byte Folded Reload
	ldp	d20, d19, [sp, #440]            ; 16-byte Folded Reload
	ldp	d22, d21, [sp, #424]            ; 16-byte Folded Reload
	ldp	d24, d23, [sp, #408]            ; 16-byte Folded Reload
	ldp	d26, d25, [sp, #392]            ; 16-byte Folded Reload
	ldp	d28, d27, [sp, #376]            ; 16-byte Folded Reload
	ldr	d29, [sp, #536]                 ; 8-byte Folded Reload
	b.ge	LBB2_6
; %bb.73:
	str	d8, [sp, #520]                  ; 8-byte Folded Spill
	mov	x8, #-3689348814741910324       ; =0xcccccccccccccccc
	movk	x8, #52429
	movk	x8, #16368, lsl #48
	fmov	d1, x8
	fmul	d1, d10, d1
	b	LBB2_7
LBB2_74:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpLdr	Lloh25, Lloh26
	.loh AdrpAdrp	Lloh23, Lloh25
	.loh AdrpLdr	Lloh23, Lloh24
	.loh AdrpAdrp	Lloh21, Lloh23
	.loh AdrpLdr	Lloh21, Lloh22
	.loh AdrpAdrp	Lloh19, Lloh21
	.loh AdrpLdr	Lloh19, Lloh20
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpLdr	Lloh59, Lloh60
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpLdr	Lloh73, Lloh74
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
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
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpAdd	Lloh121, Lloh122
	.loh AdrpLdrGotLdr	Lloh151, Lloh152, Lloh153
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
Lloh154:
	adrp	x1, l_.str.1@PAGE
Lloh155:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh156:
	adrp	x1, l_.str.2@PAGE
Lloh157:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh158:
	adrp	x1, l_.str.3@PAGE
Lloh159:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x22, x0
	adrp	x23, __MergedGlobals@PAGE
	ldr	w8, [x23, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_102
; %bb.1:
	mov	w24, #0                         ; =0x0
Lloh160:
	adrp	x26, _RPC_URLS@PAGE
Lloh161:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh162:
	adrp	x27, l_.str.67@PAGE
Lloh163:
	add	x27, x27, l_.str.67@PAGEOFF
Lloh164:
	adrp	x28, _curl_write_cb@PAGE
Lloh165:
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
Lloh166:
	adrp	x25, l_.str.68@PAGE
Lloh167:
	add	x25, x25, l_.str.68@PAGEOFF
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
	adrp	x10, __MergedGlobals@PAGE+24
	ldr	x9, [x10, __MergedGlobals@PAGEOFF+24]
	cmp	x8, x9
	b.ls	LBB3_19
; %bb.17:                               ;   in Loop: Header=BB3_3 Depth=1
	str	x8, [x10, __MergedGlobals@PAGEOFF+24]
	cbnz	x22, LBB3_20
	b	LBB3_30
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh168:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh169:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+24]
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
	adrp	x9, __MergedGlobals@PAGE+64
	str	x8, [x9, __MergedGlobals@PAGEOFF+64]
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
Lloh170:
	adrp	x9, __MergedGlobals@PAGE+40
Lloh171:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+40]
	cmp	x8, x9
	b.ls	LBB3_41
; %bb.40:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+40
	str	x8, [x9, __MergedGlobals@PAGEOFF+40]
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
Lloh172:
	adrp	x25, l_.str.68@PAGE
Lloh173:
	add	x25, x25, l_.str.68@PAGEOFF
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
	adrp	x9, __MergedGlobals.74@PAGE+72
	str	x8, [x9, __MergedGlobals.74@PAGEOFF+72]
	b	LBB3_53
LBB3_52:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh174:
	adrp	x8, __MergedGlobals@PAGE+40
Lloh175:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+40]
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
	adrp	x9, __MergedGlobals@PAGE+48
	str	x8, [x9, __MergedGlobals@PAGEOFF+48]
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
Lloh176:
	adrp	x9, __MergedGlobals@PAGE+56
Lloh177:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+56]
	cmp	x8, x9
	b.lo	LBB3_75
; %bb.74:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+56
	str	x8, [x9, __MergedGlobals@PAGEOFF+56]
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
	adrp	x9, __MergedGlobals.74@PAGE+56
	str	x8, [x9, __MergedGlobals.74@PAGEOFF+56]
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
Lloh178:
	adrp	x9, __MergedGlobals@PAGE+32
Lloh179:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+32]
	cmp	x8, x9
	b.ls	LBB3_97
; %bb.95:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+32
	str	x8, [x9, __MergedGlobals@PAGEOFF+32]
	b	LBB3_97
LBB3_96:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh180:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh181:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+32]
LBB3_97:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh182:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh183:
	add	x8, x8, __MergedGlobals@PAGEOFF+32
	ldr	x24, [x8]
	ldr	x23, [x8, #8]
Lloh184:
	adrp	x9, __MergedGlobals.74@PAGE+56
Lloh185:
	add	x9, x9, __MergedGlobals.74@PAGEOFF+56
	ldr	x22, [x9, #16]
	ldr	x26, [x8, #16]
	ldr	x27, [x9]
	ldr	x28, [x8, #32]
	mov	x0, x25
Lloh186:
	adrp	x1, l_.str.34@PAGE
Lloh187:
	add	x1, x1, l_.str.34@PAGEOFF
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
Lloh188:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh189:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	ldr	d3, [x8]
	ldr	d2, [x8, #8]
	stp	d2, d3, [sp, #240]              ; 16-byte Folded Spill
	ldr	x22, [x8, #16]
	ldr	x23, [x8, #48]
	ldr	x24, [x8, #48]
	ldr	x26, [x8, #24]
Lloh190:
	adrp	x8, __MergedGlobals.74@PAGE+72
Lloh191:
	ldr	x27, [x8, __MergedGlobals.74@PAGEOFF+72]
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
Lloh192:
	adrp	x1, l_.str.69@PAGE
Lloh193:
	add	x1, x1, l_.str.69@PAGEOFF
	bl	_fprintf
	mov	x0, x21
	bl	_fclose
	mov	x0, x25
Lloh194:
	adrp	x1, l_.str.70@PAGE
Lloh195:
	add	x1, x1, l_.str.70@PAGEOFF
	bl	_rename
LBB3_99:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x22, [sp, #216]                 ; 8-byte Folded Reload
	adrp	x23, __MergedGlobals@PAGE
	ldur	w24, [x29, #-212]               ; 4-byte Folded Reload
Lloh196:
	adrp	x26, _RPC_URLS@PAGE
Lloh197:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh198:
	adrp	x27, l_.str.67@PAGE
Lloh199:
	add	x27, x27, l_.str.67@PAGEOFF
Lloh200:
	adrp	x28, _curl_write_cb@PAGE
Lloh201:
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
	.loh AdrpAdd	Lloh158, Lloh159
	.loh AdrpAdd	Lloh156, Lloh157
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh164, Lloh165
	.loh AdrpAdd	Lloh162, Lloh163
	.loh AdrpAdd	Lloh160, Lloh161
	.loh AdrpAdd	Lloh166, Lloh167
	.loh AdrpLdr	Lloh168, Lloh169
	.loh AdrpLdr	Lloh170, Lloh171
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpLdr	Lloh174, Lloh175
	.loh AdrpLdr	Lloh176, Lloh177
	.loh AdrpLdr	Lloh178, Lloh179
	.loh AdrpLdr	Lloh180, Lloh181
	.loh AdrpAdd	Lloh186, Lloh187
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpAdd	Lloh194, Lloh195
	.loh AdrpAdd	Lloh192, Lloh193
	.loh AdrpLdr	Lloh190, Lloh191
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh200, Lloh201
	.loh AdrpAdd	Lloh198, Lloh199
	.loh AdrpAdd	Lloh196, Lloh197
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
Lloh202:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh203:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh204:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	cbz	x0, LBB5_25
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh205:
	adrp	x2, l_.str.63@PAGE
Lloh206:
	add	x2, x2, l_.str.63@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh207:
	adrp	x2, l_.str.64@PAGE
Lloh208:
	add	x2, x2, l_.str.64@PAGEOFF
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
Lloh209:
	adrp	x1, l_.str.65@PAGE
Lloh210:
	add	x1, x1, l_.str.65@PAGEOFF
	bl	_strstr
	mov	x8, x0
	mov	x0, #0                          ; =0x0
	cbz	x8, LBB5_25
; %bb.23:
	cmp	x8, x19
	b.hs	LBB5_25
; %bb.24:
Lloh211:
	adrp	x1, l_.str.66@PAGE
Lloh212:
	add	x1, x1, l_.str.66@PAGEOFF
	mov	x0, x8
	bl	_strstr
	cmp	x0, x19
	csel	x0, x0, xzr, lo
LBB5_25:
	ldur	x8, [x29, #-24]
Lloh213:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh214:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh215:
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
	.loh AdrpLdrGotLdr	Lloh202, Lloh203, Lloh204
	.loh AdrpAdd	Lloh207, Lloh208
	.loh AdrpAdd	Lloh205, Lloh206
	.loh AdrpAdd	Lloh209, Lloh210
	.loh AdrpAdd	Lloh211, Lloh212
	.loh AdrpLdrGotLdr	Lloh213, Lloh214, Lloh215
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
Lloh216:
	adrp	x1, l_.str.66@PAGE
Lloh217:
	add	x1, x1, l_.str.66@PAGEOFF
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
	.loh AdrpAdd	Lloh216, Lloh217
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function decode_v2_reserves_price
_decode_v2_reserves_price:              ; @decode_v2_reserves_price
	.cfi_startproc
; %bb.0:
	stp	d11, d10, [sp, #-48]!           ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset b8, -24
	.cfi_offset b9, -32
	.cfi_offset b10, -40
	.cfi_offset b11, -48
	mov.16b	v8, v3
	cbz	x0, LBB7_9
; %bb.1:
	mov.16b	v9, v2
	mov.16b	v10, v1
	mov.16b	v11, v0
Lloh218:
	adrp	x1, l_.str.66@PAGE
Lloh219:
	add	x1, x1, l_.str.66@PAGEOFF
	bl	_strstr
	cbz	x0, LBB7_9
; %bb.2:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	cbz	w10, LBB7_9
; %bb.3:
	mov	x8, #0                          ; =0x0
	add	x9, x9, #1
LBB7_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB7_7
; %bb.5:                                ;   in Loop: Header=BB7_4 Depth=1
	cmp	x8, #127
	b.hi	LBB7_10
; %bb.6:                                ;   in Loop: Header=BB7_4 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB7_4
	b	LBB7_8
LBB7_7:
	mov	x11, x8
LBB7_8:
	cmp	x11, #128
	b.hs	LBB7_11
LBB7_9:
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #48             ; 16-byte Folded Reload
	ret
LBB7_10:
	cmp	x8, #128
	b.lo	LBB7_9
LBB7_11:
	add	x8, x0, #66
	movi.2d	v0, #0000000000000000
	mov	w9, #64                         ; =0x40
	fmov	d2, #16.00000000
	movi.2d	v1, #0000000000000000
LBB7_12:                                ; =>This Inner Loop Header: Depth=1
	ldursb	w10, [x8, #-64]
	ldrsb	w11, [x8]
	sub	w12, w10, #48
	add	x8, x8, #1
	sub	w13, w10, #97
	sub	w14, w10, #65
	sub	w15, w10, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w10, w10, #87
	cmp	w13, #5
	csel	w10, w14, w10, hi
	cmp	w12, #9
	csel	w10, w10, w12, hi
	sub	w12, w11, #48
	sub	w13, w11, #97
	sub	w14, w11, #65
	sub	w15, w11, #55
	cmp	w14, #6
	csel	w14, w15, wzr, lo
	sub	w11, w11, #87
	cmp	w13, #5
	csel	w11, w14, w11, hi
	scvtf	d3, w10
	cmp	w12, #9
	csel	w10, w11, w12, hi
	fmadd	d0, d0, d2, d3
	scvtf	d3, w10
	fmadd	d1, d1, d2, d3
	subs	x9, x9, #1
	b.ne	LBB7_12
; %bb.13:
	fcmp	d0, #0.0
	b.le	LBB7_9
; %bb.14:
	fcmp	d1, #0.0
	b.le	LBB7_9
; %bb.15:
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	fmov	d2, x8
	fmul	d2, d11, d2
	fmul	d0, d2, d0
	fdiv	d11, d1, d0
	fcmp	d11, d10
	fccmp	d11, d9, #0, ge
	b.gt	LBB7_9
; %bb.16:
	mov.16b	v0, v11
	bl	___isnand
	cbnz	w0, LBB7_9
; %bb.17:
	mov.16b	v0, v11
	bl	___isinfd
	cmp	w0, #0
	fcsel	d8, d11, d8, eq
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #48             ; 16-byte Folded Reload
	ret
	.loh AdrpAdd	Lloh218, Lloh219
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
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xC6962004f452bE9203591991D15f6b388e09E8D0\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":10},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x6f38e884725a116C9C7fBF208e79FE8828a2595F\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":11},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xB1026b8e7276e7AC75410F1fcbbe21796e8f7526\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":12},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x7fCDC35463E3770c2fB992716Cd070B63540b947\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":13},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x35218a1cbaC5Bbc3E57fd9Bd38219D37571b3537\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":14},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xDeB89dE4bb6ecf5bFed581EB049308B52d9B2dA7\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":15},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x0e4831319a50228b9e450861297ab92dee15b44f\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":16},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x843ac8dc6d34aeb07a56812b8b36429ee46bdd07\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":17},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x11d53ec50bc8f54b9357fbfe2a7de034fc00f8b3\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":18},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xc6f780497a95e246eb9449f5e4770916dcd6396a\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":19},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xa17afcab059f3c6751f5b64347b5a503c3291868\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":20},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xbe3ad6a5669dc0b8b12febc03608860c31e2eef6\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":21},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xfae2ae0a9f87fd35b5b0e24b47bac796a7eefea1\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":22},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xb0f6ca40411360c03d41c5ffc5f179b8403cdcf8\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":23},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xD845f7D4F4deb9fF5BcF09D140Ef13718F6f6C71\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":24},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x4bfc22a4da7f31f8a912a79a7e44a822398b4390\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":25},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x7cCCba38e2D959FE135e79aEBB57ccB27b128358\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":26},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x389938cf14be379217570d8e4619e51fbdafaa21\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":27},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xb08a8794a5d3ccca3725d92964696858d3201909\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":28},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x042691f78269ba3d6325c945044239758aecc275\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":29},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x91308bc9ce8ca2db82aa30c65619856cc939d907\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":30},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x977f5d9a39049c73bc26edb3fa15d5f7c0ac82e9\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":31},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x905dfcd5649217c42684f23958568e533c711aa3\",\"data\":\"0x0902f1ac\"},\"latest\"],\"id\":32},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xcb0e5bfa72bbb4d16ab5aa0c60601c438f04b4ad\",\"data\":\"0x0902f1ac\"},\"latest\"],\"id\":33},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xb7e50106a5bd3cf21af210a755f9c8740890a8c9\",\"data\":\"0x0902f1ac\"},\"latest\"],\"id\":34},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x59d72ddb29da32847a4665d08ffc8464a7185fae\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":35},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x794a61358D6845594F94dc1DB02A252b5b4814aD\",\"data\":\"0xbf92857c000000000000000000000000270d1c8c0f13ff925f710dff38bf806bdbb4e6b2\"},\"latest\"],\"id\":36}]"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @RPC_URLS
_RPC_URLS:
	.quad	l_.str.59
	.quad	l_.str.60
	.quad	l_.str.61
	.quad	l_.str.62

	.section	__TEXT,__cstring,cstring_literals
l_.str.5:                               ; @.str.5
	.asciz	"WETH/USDC (Camelot V3 1.00bps <-> UniV3 1.00bps)"

l_.str.6:                               ; @.str.6
	.asciz	"WETH/USDC (Camelot V3 1.00bps <-> PancakeSwap V3 1.00bps)"

l_.str.7:                               ; @.str.7
	.asciz	"WETH/USDC (PancakeSwap V3 1.00bps <-> UniV3 0.05% 5.00bps)"

l_.str.8:                               ; @.str.8
	.asciz	"wstETH/WETH (Camelot V3 0.50bps <-> UniV3 1.00bps)"

l_.str.9:                               ; @.str.9
	.asciz	"WBTC/USDC (UniV3 5.00bps <-> PancakeSwap V3 5.00bps)"

l_.str.10:                              ; @.str.10
	.asciz	"[Choice 3 Cross-Tier] WETH/ARB (PancakeSwap V3 1bp <-> UniV3 5bps)"

l_.str.11:                              ; @.str.11
	.asciz	"USDC/USDT (Camelot V3 0.25bps <-> UniV3 1.00bps)"

l_.str.12:                              ; @.str.12
	.asciz	"ARB/USDC (Camelot V3 2.50bps <-> UniV3 5.00bps)"

l_.str.13:                              ; @.str.13
	.asciz	"WBTC/WETH (Camelot V3 0.90bps <-> PancakeSwap V3 1.00bps)"

l_.str.14:                              ; @.str.14
	.asciz	"WETH/USDT (Camelot V3 1.00bps <-> PancakeSwap V3 1.00bps)"

l_.str.15:                              ; @.str.15
	.asciz	"PENDLE/WETH (UniV3 5.00bps <-> PancakeSwap V3 5.00bps)"

l_.str.16:                              ; @.str.16
	.asciz	"LINK/WETH (UniV3 5.00bps <-> PancakeSwap V3 5.00bps)"

l_.str.17:                              ; @.str.17
	.asciz	"[Choice 3 SushiV2] WETH/USDT (SushiSwap V2 30bps <-> UniV3 1bp)"

l_.str.18:                              ; @.str.18
	.asciz	"[Choice 3 SushiV2] WETH/USDC.e (SushiSwap V2 30bps <-> UniV3 1bp)"

l_.str.19:                              ; @.str.19
	.asciz	"[Choice 3 Long-Tail] MAGIC/WETH (SushiSwap V2 30bps <-> UniV3 30bps)"

l_.str.20:                              ; @.str.20
	.asciz	"[Choice 2 Aave V3 Liq] 0x270d..e6b2 ($62.9k WETH Debt \342\200\242 500bps Bonus when HF<1.0)"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.route_names
l___const.run_native_asm_sniper_cycle.route_names:
	.quad	l_.str.5
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

	.section	__TEXT,__cstring,cstring_literals
l_.str.21:                              ; @.str.21
	.asciz	"WETH"

l_.str.22:                              ; @.str.22
	.asciz	"WBTC"

l_.str.23:                              ; @.str.23
	.asciz	"USDT"

l_.str.24:                              ; @.str.24
	.asciz	"USDC"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.borrow_syms
l___const.run_native_asm_sniper_cycle.borrow_syms:
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.22
	.quad	l_.str.21
	.quad	l_.str.23
	.quad	l_.str.24
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21

	.section	__TEXT,__const
	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y1
l___const.run_native_asm_sniper_cycle.y1:
	.quad	0x4079000000000000              ; double 400
	.quad	0x4079000000000000              ; double 400
	.quad	0x40a6580000000000              ; double 2860
	.quad	0x4066800000000000              ; double 180
	.quad	0x3feb333333333333              ; double 0.84999999999999998
	.quad	0x40b33d0000000000              ; double 4925
	.quad	0x40e4640000000000              ; double 41760
	.quad	0x40f7318000000000              ; double 95000
	.quad	0x3fbdf3b645a1cac1              ; double 0.11700000000000001
	.quad	0x4025333333333333              ; double 10.6
	.quad	0x40b0040000000000              ; double 4100
	.quad	0x408a900000000000              ; double 850
	.quad	0x401d7ae147ae147b              ; double 7.3700000000000001
	.quad	0x40416147ae147ae1              ; double 34.759999999999998
	.quad	0x404b67ae147ae148              ; double 54.810000000000002
	.quad	0x4029e66666666666              ; double 12.949999999999999

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y2
l___const.run_native_asm_sniper_cycle.y2:
	.quad	0x40a6580000000000              ; double 2860
	.quad	0x40bb260000000000              ; double 6950
	.quad	0x40dc110000000000              ; double 28740
	.quad	0x407a400000000000              ; double 420
	.quad	0x3fdae147ae147ae1              ; double 0.41999999999999998
	.quad	0x4184689c00000000              ; double 4.28E+7
	.quad	0x40fd4c0000000000              ; double 1.2E+5
	.quad	0x4105f90000000000              ; double 1.8E+5
	.quad	0x3fcc6a7ef9db22d1              ; double 0.222
	.quad	0x4049fc28f5c28f5c              ; double 51.969999999999999
	.quad	0x40b8380000000000              ; double 6200
	.quad	0x408cc00000000000              ; double 920
	.quad	0x40a6580000000000              ; double 2860
	.quad	0x40a6580000000000              ; double 2860
	.quad	0x4054a00000000000              ; double 82.5
	.quad	0x40a6580000000000              ; double 2860

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.bm
l___const.run_native_asm_sniper_cycle.bm:
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x4111b34000000000              ; double 2.9E+5
	.quad	0x410337e266666666              ; double 157436.29999999999
	.quad	0x40f1db7666666666              ; double 73143.399999999994
	.quad	0x40c1c97333333333              ; double 9106.8999999999996
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x40deb6eccccccccd              ; double 31451.700000000001

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.am
l___const.run_native_asm_sniper_cycle.am:
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x418aaabc14000000              ; double 55924610.5
	.quad	0x41ac695047cccccd              ; double 238331939.90000001
	.quad	0x418af86b1599999a              ; double 56560994.700000003
	.quad	0x416058101999999a              ; double 8568960.8000000007
	.quad	0x418af86b1599999a              ; double 56560994.700000003
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001
	.quad	0x417c01eaf199999a              ; double 29367983.100000001

	.section	__TEXT,__cstring,cstring_literals
l_.str.25:                              ; @.str.25
	.asciz	"%s"

l_.str.26:                              ; @.str.26
	.asciz	"WHALE_LAKHS_CRORES_SHIFT"

l_.str.27:                              ; @.str.27
	.asciz	"ACTIVE_MAX_FLASH_LOAN"

l_.str.28:                              ; @.str.28
	.asciz	"MICRO_BLOCK_FLOOR_INR"

l_.str.29:                              ; @.str.29
	.asciz	"SCANNING_LIVE_ARBITRUM_SPREADS"

l_.str.30:                              ; @.str.30
	.asciz	"python3 scripts/autonomous_asm_broadcaster.py >/dev/null 2>&1 &"

l_.str.31:                              ; @.str.31
	.asciz	"AUTONOMOUS_ONCHAIN_TX_DISPATCHED_TO_MUDREX_AND_RESERVE"

l_.str.32:                              ; @.str.32
	.asciz	"PROFITABLE_PER_BLOCK_MAX_LOAN_ACTIVE_MUDREX_0xD252_3F05"

l_.str.33:                              ; @.str.33
	.asciz	"reports/asm_sniper_telemetry.json.tmp"

l_.str.34:                              ; @.str.34
	.asciz	"w"

l_.str.35:                              ; @.str.35
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"execution_mode\": \"Hybrid Choice 2 (Aave V3 500bps Liq) + Choice 3 (SushiSwap V2/V3 Long-Tail) + 12 Major Routes (Native C/Assembly SIMD)\",\n  \"loan_sizing_policy\": \"100%% Real Un-Sugarcoated Closed-Form Arbitrage Math (Zero Fake Floors \342\200\224 Executes Strictly When Spread > DEX Fee Floor + L2 Gas or Aave HF < 1.0)\",\n  \"aave_lowest_health_factor\": %.6f,\n  \"aave_closest_borrower\": \"0x270d1c8c0f13ff925f710dff38bf806bdbb4e6b2\",\n  \"aave_closest_5pct_liq_bonus_inr\": 149269.91,\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_min_deposit_usdc\": 0.005,\n  \"mudrex_min_deposit_inr\": 0.47,\n  \"mudrex_usdc_balance\": %.6f,\n  \"mudrex_inr_balance\": %.2f,\n  \"asm_cycles_completed\": %llu,\n  \"arbitrum_blocks_profited_session\": %llu,\n  \"session_block_total_inr\": %.2f,\n  \"session_mudrex_75_inr\": %.2f,\n  \"session_saved_25_inr\": %.2f,\n  \"min_guaranteed_block_profit_inr\": %.2f,\n  \"avg_block_profit_inr\": %.2f,\n  \"daily_500k_blocks_floor_inr\": %.2f,\n  \"cpu_eval_latency_nanoseconds\": %.2f,\n  \"cpu_eval_latency_microseconds\": %.4f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"relayer_eth_balance\": %.8f,\n  \"metamask_eth_balance\": %.8f,\n  \"relayer_gas_funded\": %s,\n  \"autonomous_exec_status\": \"%s\",\n  \"real_total_amount_100_inr\": %.2f,\n  \"real_total_amount_100_usd\": %.6f,\n  \"real_amount_transferred_75_inr\": %.2f,\n  \"real_amount_transferred_75_usd\": %.6f,\n  \"real_amount_saved_25_inr\": %.2f,\n  \"real_amount_saved_25_usd\": %.6f,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.4f,\n  \"top_full_sweet_spot_loan_inr\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_inr\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_inr\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_net_profit_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"top_transferred_75_inr\": %.2f,\n  \"top_transferred_75_usd\": %.4f,\n  \"top_saved_25_inr\": %.2f,\n  \"top_saved_25_usd\": %.4f,\n  \"per_block_profit_stream\": [\n"

l_.str.36:                              ; @.str.36
	.asciz	"true"

l_.str.37:                              ; @.str.37
	.asciz	"false"

l_.str.38:                              ; @.str.38
	.asciz	"    {\"block_number\": %llu, \"route\": \"%s\", \"regime\": \"%s\", \"spread_bps\": %.4f, \"loan_inr\": %.2f, \"net_inr\": %.2f, \"mudrex_75_inr\": %.2f, \"mudrex_75_usdc\": %.4f, \"saved_25_inr\": %.2f, \"eval_ns\": %.1f}%s\n"

l_.str.39:                              ; @.str.39
	.asciz	","

l_.str.40:                              ; @.str.40
	.space	1

l_.str.41:                              ; @.str.41
	.asciz	"  ],\n  \"routes\": [\n"

l_.str.42:                              ; @.str.42
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"p1\": %.6f, \"p2\": %.6f, \"spread_bps\": %.4f, \"fee_floor_bps\": %.2f, \"net_margin_bps\": %.4f, \"full_loan_inr\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_inr\": %.2f, \"fee_saved_usd\": %.2f, \"gross_inr\": %.4f, \"gross_usd\": %.6f, \"l2_gas_inr\": %.4f, \"l2_gas_usd\": %.6f, \"net_inr\": %.2f, \"net_usd\": %.4f, \"transferred_75_inr\": %.2f, \"transferred_75_usd\": %.4f, \"saved_25_inr\": %.2f, \"saved_25_usd\": %.4f}%s\n"

l_.str.43:                              ; @.str.43
	.asciz	"  ]\n}\n"

l_.str.44:                              ; @.str.44
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.46:                              ; @.str.46
	.asciz	"100%% REAL LIVE ARBITRUM ONE RPC SCAN (ZERO FAKE FLOORS \342\200\242 ZERO SUGARCOATING)\n"

l_.str.47:                              ; @.str.47
	.asciz	"Real Hardware Eval Speed  : %.2f nanoseconds (%.4f microseconds across 16 Routes)\n"

l_.str.48:                              ; @.str.48
	.asciz	"Top Route (#1)            : %s\n"

l_.str.49:                              ; @.str.49
	.asciz	"Live Pool Prices          : P1=$%.6f vs P2=$%.6f (Spread=%.4f bps vs %.2f bps DEX Fee Floor | Net Margin=%+.4f bps)\n"

l_.str.50:                              ; @.str.50
	.asciz	"Optimal Flash Loan (dx*)  : $%.2f USD (\342\202\271%.2f INR)\n"

l_.str.51:                              ; @.str.51
	.asciz	"Real Gross Profit         : $%.6f USD (\342\202\271%.4f INR)\n"

l_.str.52:                              ; @.str.52
	.asciz	"Real Arbitrum L2 Gas Fee  : $%.6f USD (\342\202\271%.4f INR)\n"

l_.str.53:                              ; @.str.53
	.asciz	"Unfiltered (Gross - Gas)  : $%+.6f USD (\342\202\271%+.4f INR)\n"

l_.str.54:                              ; @.str.54
	.asciz	"Real Net Profit Executed  : $%.4f USD (\342\202\271%.2f INR) [%s]\n"

l_.str.55:                              ; @.str.55
	.asciz	"EXECUTE: Gross > L2 Gas"

l_.str.56:                              ; @.str.56
	.asciz	"SKIP: Gross < L2 Gas (Gas Protected)"

l_.str.58:                              ; @.str.58
	.asciz	" #%02d | %-58s | P1=$%10.4f P2=$%10.4f | Spread=%6.2f bps | Fee=%5.2f bps | Margin=%+6.2f bps | Loan=$%8.2f | Gross=\342\202\271%6.4f | Net=\342\202\271%6.2f\n"

l_.str.59:                              ; @.str.59
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.60:                              ; @.str.60
	.asciz	"https://arb-pokt.nodies.app"

l_.str.61:                              ; @.str.61
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.62:                              ; @.str.62
	.asciz	"https://1rpc.io/arb"

l_.str.63:                              ; @.str.63
	.asciz	"\"id\":%d"

l_.str.64:                              ; @.str.64
	.asciz	"\"id\": %d"

l_.str.65:                              ; @.str.65
	.asciz	"\"result\""

l_.str.66:                              ; @.str.66
	.asciz	"0x"

l_.str.67:                              ; @.str.67
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0x9dD041dbd964DE086Da8f907518f6E25c45aea70\",\"latest\"],\"id\":7},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000d2529585059e3e5c09c912f0f9570000c2a53f05\"},\"latest\"],\"id\":8}]"

l_.str.68:                              ; @.str.68
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.69:                              ; @.str.69
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + HTTP/2 TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"asm_eval_ns\": %.1f,\n  \"asm_eval_us\": %.3f,\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_usdc_raw\": %llu,\n  \"metamask_usdc_raw\": %llu,\n  \"mudrex_usdc_balance\": \"%.6f\",\n  \"mudrex_inr\": \"%.2f\",\n  \"binance_usdc_balance\": \"%.6f\",\n  \"metamask_usdc_balance\": \"%.6f\",\n  \"total_onchain_usdc\": \"%.6f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"relayer_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.70:                              ; @.str.70
	.asciz	"reports/live_block_ticker.json"

l_str.72:                               ; @str.72
	.asciz	"--------------------------------------------------------------------------------"

l_str.73:                               ; @str.73
	.asciz	"================================================================================"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @_MergedGlobals
__MergedGlobals:
	.long	1                               ; 0x1
	.space	4
	.quad	0x4062200000000000              ; double 145
	.quad	0x3fc28f5c28f5c28f              ; double 0.14499999999999999
	.quad	515923076                       ; 0x1ec05c84
	.quad	162263                          ; 0x279d7
	.quad	499198                          ; 0x79dfe
	.quad	272900000000000                 ; 0xf8337b8f2800
	.quad	5                               ; 0x5
	.quad	20000000                        ; 0x1312d00

.zerofill __DATA,__bss,__MergedGlobals.74,3920,3 ; @_MergedGlobals.74
.subsections_via_symbols
