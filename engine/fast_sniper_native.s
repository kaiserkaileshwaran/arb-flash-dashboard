	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function evaluate_v3_route_batch_asm
lCPI0_0:
	.quad	0xc0c3878000000000              ; double -9999
lCPI0_1:
	.quad	0xc6293e5939a08cea              ; double -1.0E+30
lCPI0_2:
	.quad	0x3e112e0be826d695              ; double 1.0000000000000001E-9
lCPI0_3:
	.quad	0x40c3880000000000              ; double 1.0E+4
lCPI0_4:
	.quad	0xc08f380000000000              ; double -999
lCPI0_5:
	.quad	0x4002666666666666              ; double 2.2999999999999998
lCPI0_6:
	.quad	0x3fa1eb851eb851ec              ; double 0.035000000000000003
lCPI0_7:
	.quad	0x3fee51eb851eb852              ; double 0.94750000000000001
lCPI0_8:
	.quad	0x3cd203af9ee75616              ; double 1.0000000000000001E-15
lCPI0_9:
	.quad	0x430c6bf526340000              ; double 1.0E+15
lCPI0_10:
	.quad	0x3f1a36e2eb1c432d              ; double 1.0E-4
lCPI0_11:
	.quad	0x3f0a36e2eb1c432d              ; double 5.0000000000000002E-5
lCPI0_12:
	.quad	0x410e848000000000              ; double 2.5E+5
lCPI0_13:
	.quad	0xbf30624dd2f1a9fc              ; double -2.5000000000000001E-4
lCPI0_14:
	.quad	0x41ac695046000000              ; double 238331939
lCPI0_15:
	.quad	0xbf40624dd2f1a9fc              ; double -5.0000000000000001E-4
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_v3_route_batch_asm
	.p2align	2
_evaluate_v3_route_batch_asm:           ; @evaluate_v3_route_batch_asm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
	stp	d15, d14, [sp, #16]             ; 16-byte Folded Spill
	stp	d13, d12, [sp, #32]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #48]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #64]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #80]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #96]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #112]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #128]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #144]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #160]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 176
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
	ldr	x8, [sp, #208]
	subs	w9, w0, #1
	b.lt	LBB0_28
; %bb.1:
	mov	x11, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	ldp	x13, x12, [sp, #192]
	ldp	x15, x14, [sp, #176]
Lloh0:
	adrp	x16, lCPI0_0@PAGE
Lloh1:
	ldr	d1, [x16, lCPI0_0@PAGEOFF]
	fsub	d2, d1, d0
	mov	w16, w0
	add	x17, x1, #32
	add	x0, x2, #32
	add	x19, x3, #32
	add	x20, x4, #32
Lloh2:
	adrp	x21, lCPI0_1@PAGE
Lloh3:
	ldr	d21, [x21, lCPI0_1@PAGEOFF]
Lloh4:
	adrp	x21, lCPI0_2@PAGE
Lloh5:
	ldr	d3, [x21, lCPI0_2@PAGEOFF]
Lloh6:
	adrp	x21, lCPI0_3@PAGE
Lloh7:
	ldr	d4, [x21, lCPI0_3@PAGEOFF]
	fmov	d5, #1.00000000
	mov	x28, #148983825563648           ; =0x878000000000
	movk	x28, #49347, lsl #48
Lloh8:
	adrp	x21, lCPI0_5@PAGE
Lloh9:
	ldr	d6, [x21, lCPI0_5@PAGEOFF]
	mov	x21, #4634204016564240384       ; =0x4050000000000000
	fmov	d7, x21
	mov	x21, #4639833516098453504       ; =0x4064000000000000
	fmov	d16, x21
Lloh10:
	adrp	x21, lCPI0_6@PAGE
Lloh11:
	ldr	d17, [x21, lCPI0_6@PAGEOFF]
Lloh12:
	adrp	x21, lCPI0_7@PAGE
Lloh13:
	ldr	d18, [x21, lCPI0_7@PAGEOFF]
	fmov	d19, #1.50000000
Lloh14:
	adrp	x21, lCPI0_8@PAGE
Lloh15:
	ldr	d20, [x21, lCPI0_8@PAGEOFF]
	fmov	d22, #10.00000000
Lloh16:
	adrp	x21, lCPI0_9@PAGE
Lloh17:
	ldr	d23, [x21, lCPI0_9@PAGEOFF]
	mov	x21, #4636737291354636288       ; =0x4059000000000000
Lloh18:
	adrp	x22, lCPI0_10@PAGE
Lloh19:
	ldr	d24, [x22, lCPI0_10@PAGEOFF]
	fmov	d25, x21
Lloh20:
	adrp	x21, lCPI0_11@PAGE
Lloh21:
	ldr	d26, [x21, lCPI0_11@PAGEOFF]
	fmov	d27, #25.00000000
Lloh22:
	adrp	x21, lCPI0_12@PAGE
Lloh23:
	ldr	d28, [x21, lCPI0_12@PAGEOFF]
	fmov	d29, #0.50000000
Lloh24:
	adrp	x22, lCPI0_13@PAGE
	fmov	d30, #5.00000000
	adrp	x23, lCPI0_14@PAGE
	adrp	x24, lCPI0_15@PAGE
	adrp	x26, lCPI0_4@PAGE
	mov	x25, x9
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_20 Depth 2
	add	x21, x11, #4
	cmp	x21, x16
	b.hs	LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	prfm	pldl1keep, [x17, x11, lsl #3]
	prfm	pldl1keep, [x0, x11, lsl #3]
	prfm	pldl1keep, [x19, x11, lsl #3]
	prfm	pldl1keep, [x20, x11, lsl #3]
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d31, [x1, x11, lsl #3]
	ldr	d8, [x2, x11, lsl #3]
	fminnm	d9, d31, d8
	fcmp	d31, d8
	csel	x21, x3, x4, le
	ldr	d11, [x21, x11, lsl #3]
	fmaxnm	d10, d31, d8
	csel	x21, x4, x3, le
	ldr	d12, [x21, x11, lsl #3]
	movi.2d	v13, #0000000000000000
	fcmp	d9, d3
	b.le	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	fsub	d31, d10, d9
	fmul	d31, d31, d4
	fdiv	d13, d31, d9
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d31, [x5, x11, lsl #3]
	fsub	d8, d13, d31
	str	d13, [x7, x11, lsl #3]
	str	d8, [x15, x11, lsl #3]
	fcmp	d8, #0.0
	b.gt	LBB0_11
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	d31, [x26, lCPI0_4@PAGEOFF]
	fadd	d31, d8, d31
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	fsub	d8, d31, d0
	str	xzr, [x14, x11, lsl #3]
	str	d31, [x13, x11, lsl #3]
	str	d8, [x12, x11, lsl #3]
	fcmp	d8, d21
	fmaxnm	d21, d8, d21
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	csel	w25, w9, w25, gt
	str	w11, [x8, w9, sxtw #2]
	sub	w9, w9, #1
LBB0_10:                                ;   in Loop: Header=BB0_2 Depth=1
	add	x11, x11, #1
	cmp	x11, x16
	b.eq	LBB0_27
	b	LBB0_2
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	fcmp	d11, d5
	fccmp	d12, d5, #8, ge
	b.lt	LBB0_26
; %bb.12:                               ;   in Loop: Header=BB0_2 Depth=1
	fcmp	d31, d6
	fcsel	d13, d16, d7, le
	fmadd	d14, d8, d17, d18
	fcmp	d8, d19
	fcsel	d14, d14, d5, gt
	fdiv	d13, d13, d14
	fmul	d9, d11, d9
	fmul	d9, d9, d13
	fmul	d10, d12, d10
	fmul	d10, d10, d13
	fmul	d12, d9, d10
	fadd	d13, d9, d10
	fdiv	d9, d13, d12
	fcmp	d12, d20
	fcsel	d10, d9, d23, gt
	movi.2d	v9, #0000000000000000
	fcmp	d13, d20
	b.le	LBB0_14
; %bb.13:                               ;   in Loop: Header=BB0_2 Depth=1
	fmul	d9, d8, d26
	fmul	d9, d9, d12
	fdiv	d9, d9, d13
LBB0_14:                                ;   in Loop: Header=BB0_2 Depth=1
	fcmp	d31, d6
	fccmp	d9, d22, #0, gt
	b.lt	LBB0_25
; %bb.15:                               ;   in Loop: Header=BB0_2 Depth=1
	fmul	d11, d8, d24
	fmaxnm	d14, d9, d25
	ldr	d31, [x6, x11, lsl #3]
	fcmp	d31, d27
	fcsel	d15, d28, d31, lt
	fminnm	d9, d14, d15
	str	d11, [sp, #8]                   ; 8-byte Folded Spill
	fmul	d31, d9, d11
	fmul	d11, d9, d9
	fmsub	d11, d11, d10, d31
	fmul	d31, d31, d29
	fcmp	d11, #0.0
	fcsel	d11, d11, d31, gt
	fsub	d31, d11, d0
	fcmp	d14, d15
	fccmp	d8, d30, #4, gt
	b.le	LBB0_18
; %bb.16:                               ;   in Loop: Header=BB0_2 Depth=1
	ldr	d14, [x22, lCPI0_13@PAGEOFF]
	fmadd	d8, d8, d26, d14
	fmul	d8, d12, d8
	fdiv	d8, d8, d13
	ldr	d12, [x23, lCPI0_14@PAGEOFF]
	fminnm	d8, d8, d12
	fcmp	d8, d15
	b.le	LBB0_18
; %bb.17:                               ;   in Loop: Header=BB0_2 Depth=1
	fsub	d12, d8, d15
	fmul	d13, d8, d8
	fmul	d10, d13, d10
	ldr	d13, [sp, #8]                   ; 8-byte Folded Reload
	fnmsub	d10, d8, d13, d10
	ldr	d13, [x24, lCPI0_15@PAGEOFF]
	fsub	d14, d10, d0
	fmadd	d12, d12, d13, d14
	fcmp	d12, d31
	fcsel	d9, d8, d9, gt
	fcsel	d11, d10, d11, gt
	fmaxnm	d31, d12, d31
LBB0_18:                                ;   in Loop: Header=BB0_2 Depth=1
	str	d9, [x14, x11, lsl #3]
	str	d11, [x13, x11, lsl #3]
	mov	x27, x10
	str	d31, [x12, x11, lsl #3]
	cmp	w10, #1
	b.lt	LBB0_24
; %bb.19:                               ;   in Loop: Header=BB0_2 Depth=1
	mov	w21, w10
	add	x27, x21, #1
	add	x30, x8, w10, uxtw #2
	mov	x28, x30
LBB0_20:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x27, x27, #1
	ldrsw	x21, [x28, #-4]!
	ldr	d8, [x12, x21, lsl #3]
	fcmp	d8, d31
	b.ge	LBB0_23
; %bb.21:                               ;   in Loop: Header=BB0_20 Depth=2
	str	w21, [x30]
	mov	x30, x28
	cmp	x27, #1
	b.hi	LBB0_20
; %bb.22:                               ;   in Loop: Header=BB0_2 Depth=1
	mov	w27, #0                         ; =0x0
LBB0_23:                                ;   in Loop: Header=BB0_2 Depth=1
	mov	x28, #148983825563648           ; =0x878000000000
	movk	x28, #49347, lsl #48
LBB0_24:                                ;   in Loop: Header=BB0_2 Depth=1
	str	w11, [x8, w27, sxtw #2]
	add	w10, w10, #1
	b	LBB0_10
LBB0_25:                                ;   in Loop: Header=BB0_2 Depth=1
	fadd	d31, d9, d1
	b	LBB0_8
LBB0_26:                                ;   in Loop: Header=BB0_2 Depth=1
	str	xzr, [x14, x11, lsl #3]
	str	x28, [x13, x11, lsl #3]
	str	d2, [x12, x11, lsl #3]
	fcmp	d2, d21
	fmaxnm	d21, d2, d21
	b	LBB0_9
LBB0_27:
	cmp	w10, #0
	cset	w10, eq
	mov	x9, x25
	cbnz	w10, LBB0_29
	b	LBB0_31
LBB0_28:
	mov	w10, #1                         ; =0x1
	cbz	w10, LBB0_31
LBB0_29:
	cbz	w9, LBB0_31
; %bb.30:
	ldr	w10, [x8]
	ldr	w11, [x8, w9, sxtw #2]
	str	w11, [x8]
	str	w10, [x8, w9, sxtw #2]
LBB0_31:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #48]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #32]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.loh AdrpLdr	Lloh22, Lloh23
	.loh AdrpAdrp	Lloh20, Lloh22
	.loh AdrpLdr	Lloh20, Lloh21
	.loh AdrpAdrp	Lloh18, Lloh24
	.loh AdrpLdr	Lloh18, Lloh19
	.loh AdrpLdr	Lloh16, Lloh17
	.loh AdrpAdrp	Lloh14, Lloh16
	.loh AdrpLdr	Lloh14, Lloh15
	.loh AdrpAdrp	Lloh12, Lloh14
	.loh AdrpLdr	Lloh12, Lloh13
	.loh AdrpAdrp	Lloh10, Lloh12
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpAdrp	Lloh6, Lloh8
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpAdrp	Lloh4, Lloh6
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpAdrp	Lloh2, Lloh4
	.loh AdrpLdr	Lloh2, Lloh3
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_evaluate_parallel_bundle_asm   ; -- Begin function evaluate_parallel_bundle_asm
	.p2align	2
_evaluate_parallel_bundle_asm:          ; @evaluate_parallel_bundle_asm
	.cfi_startproc
; %bb.0:
	ldp	x10, x9, [sp]
	cmp	w0, #1
	b.lt	LBB1_8
; %bb.1:
	mov	x8, x0
	mov	w0, #0                          ; =0x0
	mov	w8, w8
	movi.2d	v1, #0000000000000000
	mov	w11, #1                         ; =0x1
	movi.2d	v2, #0000000000000000
LBB1_2:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w12, [x1], #4
	ldr	d3, [x2, w12, sxtw #3]
	fcmp	d3, #0.0
	b.le	LBB1_7
; %bb.3:                                ;   in Loop: Header=BB1_2 Depth=1
	ldr	d4, [x3, w12, sxtw #3]
	fcmp	d4, d0
	b.le	LBB1_5
; %bb.4:                                ;   in Loop: Header=BB1_2 Depth=1
	str	w12, [x6, w0, sxtw #2]
	fadd	d1, d3, d1
	fadd	d2, d4, d2
	add	w0, w0, #1
LBB1_5:                                 ;   in Loop: Header=BB1_2 Depth=1
	cmp	x11, x8
	b.hs	LBB1_7
; %bb.6:                                ;   in Loop: Header=BB1_2 Depth=1
	add	x11, x11, #1
	cmp	w0, #12
	b.lt	LBB1_2
LBB1_7:
	ucvtf	d3, w0
	cmp	w0, #0
	fmov	d4, #1.00000000
	fcsel	d3, d3, d4, gt
	str	d1, [x7]
	str	d2, [x10]
	fmsub	d0, d3, d0, d2
	str	d0, [x9]
	ret
LBB1_8:
	mov	w0, #0                          ; =0x0
	fmov	d3, #1.00000000
	movi.2d	v1, #0000000000000000
	movi.2d	v2, #0000000000000000
	str	d1, [x7]
	str	d2, [x10]
	fmsub	d0, d3, d0, d2
	str	d0, [x9]
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_evaluate_aave_liquidations_asm ; -- Begin function evaluate_aave_liquidations_asm
	.p2align	2
_evaluate_aave_liquidations_asm:        ; @evaluate_aave_liquidations_asm
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB2_7
; %bb.1:
	mov	x8, x0
	mov	x9, #0                          ; =0x0
	mov	x10, #4636737291354636288       ; =0x4059000000000000
	movi.2d	v4, #0000000000000000
	fmov	d2, x10
	mov	x10, #7378697629483820646       ; =0x6666666666666666
	movk	x10, #16366, lsl #48
	fmov	d3, #1.00000000
	fmov	d5, x10
	mov	x10, #32506                     ; =0x7efa
	movk	x10, #48234, lsl #16
	movk	x10, #37748, lsl #32
	movk	x10, #16296, lsl #48
	fmov	d6, #0.50000000
	fmov	d7, x10
	mov	x10, #43516                     ; =0xa9fc
	movk	x10, #54001, lsl #16
	movk	x10, #25165, lsl #32
	movk	x10, #48960, lsl #48
	fmov	d16, x10
	mov	x10, #-9223372036854775808      ; =0x8000000000000000
	fmov	d17, x10
	mov	w0, #-1                         ; =0xffffffff
	mov	w8, w8
	b	LBB2_3
LBB2_2:                                 ;   in Loop: Header=BB2_3 Depth=1
	str	xzr, [x4, x9, lsl #3]
	str	xzr, [x5, x9, lsl #3]
	str	xzr, [x6, x9, lsl #3]
	add	x9, x9, #1
	cmp	x8, x9
	b.eq	LBB2_6
LBB2_3:                                 ; =>This Inner Loop Header: Depth=1
	ldr	d19, [x1, x9, lsl #3]
	ldr	d18, [x2, x9, lsl #3]
	fcmp	d19, #0.0
	fccmp	d19, d3, #0, gt
	fccmp	d18, d2, #8, lt
	b.lt	LBB2_2
; %bb.4:                                ;   in Loop: Header=BB2_3 Depth=1
	ldr	d20, [x3, x9, lsl #3]
	fcmp	d20, d18
	b.le	LBB2_2
; %bb.5:                                ;   in Loop: Header=BB2_3 Depth=1
	fcmp	d19, d5
	fcsel	d19, d3, d6, lt
	fmul	d18, d19, d18
	fmul	d19, d18, d7
	fsub	d20, d18, d0
	fmul	d20, d20, d16
	fcmp	d18, d0
	fcsel	d20, d17, d20, le
	fsub	d21, d19, d1
	fadd	d20, d21, d20
	str	d18, [x4, x9, lsl #3]
	str	d19, [x5, x9, lsl #3]
	str	d20, [x6, x9, lsl #3]
	fcmp	d20, d4
	fmaxnm	d4, d20, d4
	csel	w0, w9, w0, gt
	add	x9, x9, #1
	cmp	x8, x9
	b.ne	LBB2_3
LBB2_6:
	ret
LBB2_7:
	mov	w0, #-1                         ; =0xffffffff
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function encode_gasless_arb_calldata
lCPI3_0:
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
Lloh25:
	adrp	x8, lCPI3_0@PAGE
Lloh26:
	ldr	d0, [x8, lCPI3_0@PAGEOFF]
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
	.loh AdrpLdr	Lloh25, Lloh26
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function main
lCPI4_0:
	.quad	0x3ddb7cdfd9d7bdbb              ; double 1.0E-10
lCPI4_1:
	.quad	0x40a71d199999999a              ; double 2958.5500000000002
lCPI4_2:
	.quad	0x3f67c1bda5119ce0              ; double 0.0028999999999999998
lCPI4_3:
	.quad	0x41cdcd6500000000              ; double 1.0E+9
lCPI4_4:
	.quad	0x3eb0c6f7a0b5ed8d              ; double 9.9999999999999995E-7
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	2
_main:                                  ; @main
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
	sub	x9, sp, #608
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
Lloh27:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh28:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh29:
	ldr	x8, [x8]
	str	x8, [sp, #600]
Lloh30:
	adrp	x8, l___const.main.p2@PAGE
Lloh31:
	add	x8, x8, l___const.main.p2@PAGEOFF
	ldp	q0, q1, [x8]
	stp	q0, q1, [sp, #512]
	add	x1, sp, #112
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	movi.2d	v10, #0000000000000000
	add	x28, sp, #256
Lloh32:
	adrp	x8, lCPI4_0@PAGE
Lloh33:
	ldr	d11, [x8, lCPI4_0@PAGEOFF]
Lloh34:
	adrp	x8, lCPI4_1@PAGE
Lloh35:
	ldr	d12, [x8, lCPI4_1@PAGEOFF]
	add	x24, sp, #320
Lloh36:
	adrp	x19, l___const.main.p1@PAGE
Lloh37:
	add	x19, x19, l___const.main.p1@PAGEOFF
Lloh38:
	adrp	x20, l___const.main.y1@PAGE
Lloh39:
	add	x20, x20, l___const.main.y1@PAGEOFF
Lloh40:
	adrp	x21, l___const.main.y2@PAGE
Lloh41:
	add	x21, x21, l___const.main.y2@PAGEOFF
	add	x26, sp, #384
Lloh42:
	adrp	x22, l___const.main.fl@PAGE
Lloh43:
	add	x22, x22, l___const.main.fl@PAGEOFF
Lloh44:
	adrp	x8, lCPI4_2@PAGE
Lloh45:
	ldr	d8, [x8, lCPI4_2@PAGEOFF]
	mov	x8, #-9223372036854775808       ; =0x8000000000000000
	fmov	d13, x8
	fmov	d14, #1.00000000
	mov	w27, #16960                     ; =0x4240
	movk	w27, #15, lsl #16
	movi.2d	v15, #0000000000000000
Lloh46:
	adrp	x23, l___const.main.bm@PAGE
Lloh47:
	add	x23, x23, l___const.main.bm@PAGEOFF
LBB4_1:                                 ; =>This Inner Loop Header: Depth=1
	fmadd	d0, d15, d11, d12
	str	d0, [sp, #536]
	add	x8, sp, #128
	str	x8, [sp, #32]
	add	x2, sp, #512
	add	x7, sp, #448
	add	x8, sp, #192
	stp	x28, x8, [sp, #16]
	stp	x26, x24, [sp]
	mov	w0, #4                          ; =0x4
	mov	x1, x19
	mov	x3, x20
	mov	x4, x21
	mov	x5, x22
	mov	x6, x23
	mov.16b	v0, v8
	bl	_evaluate_v3_route_batch_asm
	ldrsw	x8, [sp, #128]
	bl	_OUTLINED_FUNCTION_2
	b.gt	LBB4_4
; %bb.2:                                ;   in Loop: Header=BB4_1 Depth=1
	mov	w25, #0                         ; =0x0
	movi.2d	v0, #0000000000000000
	movi.2d	v9, #0000000000000000
LBB4_3:                                 ;   in Loop: Header=BB4_1 Depth=1
	fadd	d15, d15, d14
	subs	w27, w27, #1
	b.eq	LBB4_8
	b	LBB4_1
LBB4_4:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	d0, [x28, x8, lsl #3]
	fcmp	d0, d8
	cset	w25, gt
	fcsel	d0, d0, d10, gt
	fcsel	d9, d1, d10, gt
	ldrsw	x8, [sp, #132]
	bl	_OUTLINED_FUNCTION_2
	b.le	LBB4_3
; %bb.5:                                ;   in Loop: Header=BB4_1 Depth=1
	bl	_OUTLINED_FUNCTION_0
	fadd	d0, d0, d2
	fcsel	d1, d1, d13, gt
	fadd	d9, d9, d1
	cinc	w25, w25, gt
	ldrsw	x8, [sp, #136]
	bl	_OUTLINED_FUNCTION_2
	b.le	LBB4_3
; %bb.6:                                ;   in Loop: Header=BB4_1 Depth=1
	bl	_OUTLINED_FUNCTION_0
	fadd	d0, d0, d2
	fcsel	d1, d1, d13, gt
	fadd	d9, d9, d1
	cinc	w25, w25, gt
	ldrsw	x8, [sp, #140]
	bl	_OUTLINED_FUNCTION_2
	b.le	LBB4_3
; %bb.7:                                ;   in Loop: Header=BB4_1 Depth=1
	bl	_OUTLINED_FUNCTION_0
	fadd	d0, d0, d2
	fcsel	d1, d1, d13, gt
	fadd	d9, d9, d1
	cinc	w25, w25, gt
	b	LBB4_3
LBB4_8:
	ucvtf	d1, w25
	fmul	d1, d1, d8
	cmp	w25, #0
	fcsel	d1, d1, d8, gt
	fsub	d8, d0, d1
	add	x1, sp, #96
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #96]
	ldp	x10, x11, [sp, #112]
	sub	x8, x8, x10
	scvtf	d0, x8
	sub	x8, x9, x11
	scvtf	d1, x8
Lloh48:
	adrp	x8, lCPI4_3@PAGE
Lloh49:
	ldr	d2, [x8, lCPI4_3@PAGEOFF]
	fmadd	d0, d0, d2, d1
Lloh50:
	adrp	x8, lCPI4_4@PAGE
Lloh51:
	ldr	d1, [x8, lCPI4_4@PAGEOFF]
	fmul	d10, d0, d1
	ldrsw	x20, [sp, #128]
Lloh52:
	adrp	x19, l_str.10@PAGE
Lloh53:
	add	x19, x19, l_str.10@PAGEOFF
	bl	_OUTLINED_FUNCTION_1
Lloh54:
	adrp	x0, l_str.8@PAGE
Lloh55:
	add	x0, x0, l_str.8@PAGEOFF
	bl	_puts
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #16960                      ; =0x4240
	movk	w8, #15, lsl #16
	str	x8, [sp]
Lloh56:
	adrp	x0, l_.str.2@PAGE
Lloh57:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	str	d10, [sp]
Lloh58:
	adrp	x0, l_.str.3@PAGE
Lloh59:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	str	d10, [sp]
Lloh60:
	adrp	x0, l_.str.4@PAGE
Lloh61:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	add	x8, sp, #448
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #320
	ldr	d1, [x8, x20, lsl #3]
	add	x8, sp, #256
	ldr	d2, [x8, x20, lsl #3]
	add	x8, sp, #192
	ldr	d3, [x8, x20, lsl #3]
	stp	d2, d3, [sp, #16]
	stp	d0, d1, [sp]
Lloh62:
	adrp	x0, l_.str.5@PAGE
Lloh63:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	stp	d9, d8, [sp, #8]
	str	x25, [sp]
Lloh64:
	adrp	x0, l_.str.6@PAGE
Lloh65:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	ldr	d0, [sp, #448]
	ldr	d1, [sp, #320]
	stp	d0, d1, [sp]
Lloh66:
	adrp	x0, l_.str.7@PAGE
Lloh67:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	bl	_OUTLINED_FUNCTION_1
	ldr	x8, [sp, #600]
Lloh68:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh69:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh70:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB4_10
; %bb.9:
	mov	w0, #0                          ; =0x0
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
LBB4_10:
	bl	___stack_chk_fail
	.loh AdrpAdd	Lloh46, Lloh47
	.loh AdrpLdr	Lloh44, Lloh45
	.loh AdrpAdd	Lloh42, Lloh43
	.loh AdrpAdd	Lloh40, Lloh41
	.loh AdrpAdd	Lloh38, Lloh39
	.loh AdrpAdd	Lloh36, Lloh37
	.loh AdrpAdrp	Lloh34, Lloh44
	.loh AdrpLdr	Lloh34, Lloh35
	.loh AdrpAdrp	Lloh32, Lloh34
	.loh AdrpLdr	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpLdrGotLdr	Lloh27, Lloh28, Lloh29
	.loh AdrpLdrGotLdr	Lloh68, Lloh69, Lloh70
	.loh AdrpAdd	Lloh66, Lloh67
	.loh AdrpAdd	Lloh64, Lloh65
	.loh AdrpAdd	Lloh62, Lloh63
	.loh AdrpAdd	Lloh60, Lloh61
	.loh AdrpAdd	Lloh58, Lloh59
	.loh AdrpAdd	Lloh56, Lloh57
	.loh AdrpAdd	Lloh54, Lloh55
	.loh AdrpAdd	Lloh52, Lloh53
	.loh AdrpLdr	Lloh50, Lloh51
	.loh AdrpAdrp	Lloh48, Lloh50
	.loh AdrpLdr	Lloh48, Lloh49
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_0
_OUTLINED_FUNCTION_0:                   ; @OUTLINED_FUNCTION_0 Function
	.cfi_startproc
; %bb.0:
	ldr	d2, [x28, x8, lsl #3]
	fcmp	d2, d8
	fcsel	d2, d2, d13, gt
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_1
_OUTLINED_FUNCTION_1:                   ; @OUTLINED_FUNCTION_1 Thunk
	.cfi_startproc
; %bb.0:
	mov	x0, x19
	b	_puts
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_2
_OUTLINED_FUNCTION_2:                   ; @OUTLINED_FUNCTION_2 Function
	.cfi_startproc
; %bb.0:
	ldr	d1, [x24, x8, lsl #3]
	fcmp	d1, #0.0
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__const
	.p2align	6, 0x0                          ; @__const.main.p1
l___const.main.p1:
	.quad	0x40a2883333333333              ; double 2372.0999999999999
	.quad	0x40a32c3d70a3d70a              ; double 2454.1199999999999
	.quad	0x40a32d23d70a3d71              ; double 2454.5700000000002
	.quad	0x40a7160000000000              ; double 2955

	.p2align	6, 0x0                          ; @__const.main.p2
l___const.main.p2:
	.quad	0x40a28c947ae147ae              ; double 2374.29
	.quad	0x40a32df5c28f5c29              ; double 2454.98
	.quad	0x40a3328f5c28f5c3              ; double 2457.2800000000002
	.quad	0x40a71d199999999a              ; double 2958.5500000000002

	.p2align	6, 0x0                          ; @__const.main.y1
l___const.main.y1:
	.quad	0x3fa999999999999a              ; double 0.050000000000000003
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x408235999999999a              ; double 582.70000000000005
	.quad	0x40c4fcbc28f5c28f              ; double 10745.469999999999

	.p2align	6, 0x0                          ; @__const.main.y2
l___const.main.y2:
	.quad	0x3fa47ae147ae147b              ; double 0.040000000000000001
	.quad	0x4069047ae147ae14              ; double 200.13999999999999
	.quad	0x405c83d70a3d70a4              ; double 114.06
	.quad	0x410821371eb851ec              ; double 197670.89000000001

	.p2align	6, 0x0                          ; @__const.main.fl
l___const.main.fl:
	.quad	0x4000000000000000              ; double 2
	.quad	0x4000000000000000              ; double 2
	.quad	0x4002000000000000              ; double 2.25
	.quad	0x3ff8000000000000              ; double 1.5

	.p2align	6, 0x0                          ; @__const.main.bm
l___const.main.bm:
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300
	.quad	0x410f496000000000              ; double 256300

	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Iterations Executed      : %d full V3 batches + Parallel Bundles\n"

l_.str.3:                               ; @.str.3
	.asciz	"Total CPU Time           : %.3f ms\n"

l_.str.4:                               ; @.str.4
	.asciz	"Latency Per Batch        : %.2f nanoseconds\n"

l_.str.5:                               ; @.str.5
	.asciz	"Mega-Loan Route (#3)     : Spread=%.2f bps | Optimal Loan=$%.2f | Gross=$%+.4f | Net=$%+.4f\n"

l_.str.6:                               ; @.str.6
	.asciz	"Parallel Bundle Selected : %d Non-Overlapping Routes | Total Loan=$%.2f | Bundle Net=$%+.4f\n"

l_.str.7:                               ; @.str.7
	.asciz	"Thin Pool Index (#0)     : Spread=%.2f bps | Optimal Loan=$%.2f | Hardware Rejected!\n"

l_str.8:                                ; @str.8
	.asciz	"ARBITRUM v17.0 AVX2 UNCAPPED ($393.14M) PARALLEL MULTI-ASSET BUNDLER"

l_str.10:                               ; @str.10
	.asciz	"======================================================================"

.subsections_via_symbols
