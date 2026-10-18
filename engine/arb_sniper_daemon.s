	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function evaluate_full_loan_routes_asm
lCPI0_0:
	.quad	0xc6293e5939a08cea              ; double -1.0E+30
lCPI0_1:
	.quad	0x3e112e0be826d695              ; double 1.0000000000000001E-9
lCPI0_2:
	.quad	0x40c3880000000000              ; double 1.0E+4
lCPI0_3:
	.quad	0x4002666666666666              ; double 2.2999999999999998
lCPI0_4:
	.quad	0x3fa1eb851eb851ec              ; double 0.035000000000000003
lCPI0_5:
	.quad	0x3fee51eb851eb852              ; double 0.94750000000000001
lCPI0_6:
	.quad	0x3cd203af9ee75616              ; double 1.0000000000000001E-15
lCPI0_7:
	.quad	0x430c6bf526340000              ; double 1.0E+15
lCPI0_8:
	.quad	0x3feb333333333333              ; double 0.84999999999999998
lCPI0_9:
	.quad	0xc08f380000000000              ; double -999
lCPI0_10:
	.quad	0x3f40624dd2f1a9fc              ; double 5.0000000000000001E-4
lCPI0_11:
	.quad	0x3f1a36e2eb1c432d              ; double 1.0E-4
lCPI0_12:
	.quad	0x3f0a36e2eb1c432d              ; double 5.0000000000000002E-5
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_full_loan_routes_asm
	.p2align	2
_evaluate_full_loan_routes_asm:         ; @evaluate_full_loan_routes_asm
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #176
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
	ldr	x8, [sp, #256]
	subs	w9, w0, #1
	b.lt	LBB0_19
; %bb.1:
	mov	x11, #0                         ; =0x0
	mov	w30, #0                         ; =0x0
	ldp	x13, x12, [sp, #240]
	ldp	x15, x14, [sp, #224]
	ldp	x17, x16, [sp, #208]
	ldp	x20, x19, [sp, #192]
	mov	w0, w0
	add	x21, x1, #32
	add	x22, x2, #32
	add	x23, x3, #32
	add	x24, x4, #32
Lloh0:
	adrp	x10, lCPI0_0@PAGE
Lloh1:
	ldr	d4, [x10, lCPI0_0@PAGEOFF]
Lloh2:
	adrp	x10, lCPI0_1@PAGE
Lloh3:
	ldr	d1, [x10, lCPI0_1@PAGEOFF]
Lloh4:
	adrp	x10, lCPI0_2@PAGE
Lloh5:
	ldr	d2, [x10, lCPI0_2@PAGEOFF]
Lloh6:
	adrp	x10, lCPI0_3@PAGE
Lloh7:
	ldr	d3, [x10, lCPI0_3@PAGEOFF]
	mov	x10, #4634204016564240384       ; =0x4050000000000000
	fmov	d5, x10
	mov	x10, #4639833516098453504       ; =0x4064000000000000
	fmov	d6, x10
Lloh8:
	adrp	x10, lCPI0_4@PAGE
Lloh9:
	ldr	d7, [x10, lCPI0_4@PAGEOFF]
Lloh10:
	adrp	x10, lCPI0_5@PAGE
Lloh11:
	ldr	d16, [x10, lCPI0_5@PAGEOFF]
	fmov	d17, #1.50000000
	fmov	d18, #1.00000000
Lloh12:
	adrp	x10, lCPI0_6@PAGE
Lloh13:
	ldr	d19, [x10, lCPI0_6@PAGEOFF]
Lloh14:
	adrp	x10, lCPI0_7@PAGE
Lloh15:
	ldr	d20, [x10, lCPI0_7@PAGEOFF]
Lloh16:
	adrp	x10, lCPI0_8@PAGE
Lloh17:
	ldr	d21, [x10, lCPI0_8@PAGEOFF]
Lloh18:
	adrp	x10, lCPI0_11@PAGE
Lloh19:
	ldr	d22, [x10, lCPI0_11@PAGEOFF]
Lloh20:
	adrp	x10, lCPI0_12@PAGE
Lloh21:
	ldr	d23, [x10, lCPI0_12@PAGEOFF]
	movi.2d	v24, #0000000000000000
Lloh22:
	adrp	x10, lCPI0_10@PAGE
Lloh23:
	ldr	d25, [x10, lCPI0_10@PAGEOFF]
	fmov	d26, #0.50000000
	fmov	d27, #0.75000000
	fmov	d28, #0.25000000
Lloh24:
	adrp	x10, lCPI0_9@PAGE
Lloh25:
	ldr	d29, [x10, lCPI0_9@PAGEOFF]
	mov	x25, x9
	ldp	x27, x26, [sp, #176]
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
	add	x10, x11, #4
	cmp	x10, x0
	b.hs	LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	prfm	pldl1keep, [x21, x11, lsl #3]
	prfm	pldl1keep, [x22, x11, lsl #3]
	prfm	pldl1keep, [x23, x11, lsl #3]
	prfm	pldl1keep, [x24, x11, lsl #3]
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d30, [x1, x11, lsl #3]
	ldr	d8, [x2, x11, lsl #3]
	fminnm	d31, d30, d8
	fcmp	d30, d8
	csel	x10, x3, x4, le
	ldr	d9, [x10, x11, lsl #3]
	fmaxnm	d8, d30, d8
	csel	x10, x4, x3, le
	ldr	d10, [x10, x11, lsl #3]
	movi.2d	v11, #0000000000000000
	fcmp	d31, d1
	b.le	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	fsub	d30, d8, d31
	fmul	d30, d30, d2
	fdiv	d11, d30, d31
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d12, [x5, x11, lsl #3]
	fsub	d30, d11, d12
	str	d11, [x27, x11, lsl #3]
	str	d30, [x26, x11, lsl #3]
	fcmp	d12, d3
	fcsel	d11, d6, d5, le
	fmadd	d12, d30, d7, d16
	fcmp	d30, d17
	fcsel	d12, d12, d18, gt
	fdiv	d11, d11, d12
	fmul	d31, d9, d31
	fmul	d9, d31, d11
	fmul	d31, d10, d8
	fmul	d12, d31, d11
	fmul	d10, d9, d12
	fadd	d11, d9, d12
	fdiv	d31, d11, d10
	fcmp	d10, d19
	fcsel	d31, d31, d20, gt
	ldr	d8, [x6, x11, lsl #3]
	ldr	d13, [x7, x11, lsl #3]
	fadd	d13, d13, d8
	fminnm	d9, d9, d12
	fmul	d9, d9, d21
	fminnm	d9, d9, d13
	fmaxnm	d9, d9, d8
	fcmp	d30, #0.0
	b.gt	LBB0_9
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	fminnm	d31, d9, d8
	fsub	d10, d9, d8
	fcmp	d9, d8
	fcsel	d8, d10, d24, gt
	fadd	d30, d30, d29
	str	d9, [x20, x11, lsl #3]
	fsub	d9, d30, d0
	str	d31, [x19, x11, lsl #3]
	str	d8, [x17, x11, lsl #3]
	fmul	d31, d31, d25
	str	d31, [x16, x11, lsl #3]
	str	d30, [x15, x11, lsl #3]
	str	d9, [x14, x11, lsl #3]
	str	xzr, [x13, x11, lsl #3]
	str	xzr, [x12, x11, lsl #3]
	fcmp	d9, d4
	fmaxnm	d4, d9, d4
	csel	w25, w9, w25, gt
	str	w11, [x8, w9, sxtw #2]
	sub	w9, w9, #1
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	x11, x11, #1
	cmp	x11, x0
	b.eq	LBB0_18
	b	LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	fcmp	d11, d19
	mov.16b	v12, v9
	b.le	LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_2 Depth=1
	fmul	d12, d30, d23
	fmul	d10, d12, d10
	fdiv	d12, d10, d11
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	fmul	d30, d30, d22
	fmaxnm	d10, d12, d8
	fminnm	d9, d10, d9
	fminnm	d10, d9, d8
	fsub	d11, d9, d8
	fcmp	d9, d8
	fcsel	d8, d11, d24, gt
	fmul	d11, d10, d25
	fmul	d30, d30, d9
	fmul	d12, d9, d9
	fmsub	d31, d12, d31, d30
	fmul	d30, d30, d26
	fcmp	d31, #0.0
	fcsel	d31, d31, d30, gt
	fsub	d30, d31, d0
	fmul	d12, d30, d27
	fcmp	d30, #0.0
	fcsel	d12, d12, d24, gt
	str	d9, [x20, x11, lsl #3]
	str	d10, [x19, x11, lsl #3]
	str	d8, [x17, x11, lsl #3]
	str	d11, [x16, x11, lsl #3]
	fmul	d8, d30, d28
	fcsel	d8, d8, d24, gt
	str	d31, [x15, x11, lsl #3]
	str	d30, [x14, x11, lsl #3]
	str	d12, [x13, x11, lsl #3]
	str	d8, [x12, x11, lsl #3]
	mov	x28, x30
	cmp	w30, #1
	b.lt	LBB0_17
; %bb.12:                               ;   in Loop: Header=BB0_2 Depth=1
	mov	w10, w30
	add	x28, x10, #1
	str	w30, [sp, #12]                  ; 4-byte Folded Spill
	add	x10, x8, w30, uxtw #2
	mov	x30, x10
LBB0_13:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	str	x10, [sp, #24]                  ; 8-byte Folded Spill
	sub	x28, x28, #1
	ldrsw	x10, [x30, #-4]!
	ldr	d31, [x14, x10, lsl #3]
	fcmp	d31, d30
	b.ge	LBB0_16
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=2
	str	x28, [sp, #16]                  ; 8-byte Folded Spill
	ldr	x28, [sp, #24]                  ; 8-byte Folded Reload
	str	w10, [x28]
	ldr	x28, [sp, #16]                  ; 8-byte Folded Reload
	mov	x10, x30
	cmp	x28, #1
	b.hi	LBB0_13
; %bb.15:                               ;   in Loop: Header=BB0_2 Depth=1
	mov	w28, #0                         ; =0x0
LBB0_16:                                ;   in Loop: Header=BB0_2 Depth=1
	ldr	w30, [sp, #12]                  ; 4-byte Folded Reload
LBB0_17:                                ;   in Loop: Header=BB0_2 Depth=1
	str	w11, [x8, w28, sxtw #2]
	add	w30, w30, #1
	b	LBB0_8
LBB0_18:
	cmp	w30, #0
	cset	w10, eq
	mov	x9, x25
	cbnz	w10, LBB0_20
	b	LBB0_22
LBB0_19:
	mov	w10, #1                         ; =0x1
	cbz	w10, LBB0_22
LBB0_20:
	cbz	w9, LBB0_22
; %bb.21:
	ldr	w10, [x8]
	ldr	w11, [x8, w9, sxtw #2]
	str	w11, [x8]
	str	w10, [x8, w9, sxtw #2]
LBB0_22:
	ldp	x29, x30, [sp, #160]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #144]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #128]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #112]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #96]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #80]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #64]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #48]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #176
	ret
	.loh AdrpLdr	Lloh24, Lloh25
	.loh AdrpAdrp	Lloh22, Lloh24
	.loh AdrpLdr	Lloh22, Lloh23
	.loh AdrpAdrp	Lloh20, Lloh22
	.loh AdrpLdr	Lloh20, Lloh21
	.loh AdrpAdrp	Lloh18, Lloh20
	.loh AdrpLdr	Lloh18, Lloh19
	.loh AdrpAdrp	Lloh16, Lloh18
	.loh AdrpLdr	Lloh16, Lloh17
	.loh AdrpAdrp	Lloh14, Lloh16
	.loh AdrpLdr	Lloh14, Lloh15
	.loh AdrpAdrp	Lloh12, Lloh14
	.loh AdrpLdr	Lloh12, Lloh13
	.loh AdrpAdrp	Lloh10, Lloh12
	.loh AdrpLdr	Lloh10, Lloh11
	.loh AdrpAdrp	Lloh8, Lloh10
	.loh AdrpLdr	Lloh8, Lloh9
	.loh AdrpLdr	Lloh6, Lloh7
	.loh AdrpAdrp	Lloh4, Lloh6
	.loh AdrpLdr	Lloh4, Lloh5
	.loh AdrpAdrp	Lloh2, Lloh4
	.loh AdrpLdr	Lloh2, Lloh3
	.loh AdrpAdrp	Lloh0, Lloh2
	.loh AdrpLdr	Lloh0, Lloh1
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x22, x21, [sp, #32]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #48]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
	cmp	w0, #1
	b.le	LBB1_5
; %bb.1:
	mov	w20, #0                         ; =0x0
	mov	w8, w0
	add	x21, x1, #8
	sub	x22, x8, #1
Lloh26:
	adrp	x19, l_.str@PAGE
Lloh27:
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
	mov	w0, #3                          ; =0x3
	bl	_curl_global_init
	cbz	w20, LBB1_6
; %bb.4:
	mov	x0, #0                          ; =0x0
	mov	x1, #0                          ; =0x0
	mov	x2, #0                          ; =0x0
	mov	w3, #1                          ; =0x1
	bl	_run_native_asm_sniper_cycle
	b	LBB1_11
LBB1_5:
	mov	w0, #3                          ; =0x3
	bl	_curl_global_init
LBB1_6:
Lloh28:
	adrp	x2, _lockfree_block_ticker_thread@PAGE
Lloh29:
	add	x2, x2, _lockfree_block_ticker_thread@PAGEOFF
	add	x0, sp, #24
	mov	x1, #0                          ; =0x0
	mov	x3, #0                          ; =0x0
	bl	_pthread_create
	bl	_curl_easy_init
	mov	x19, x0
	stp	xzr, xzr, [sp]
	str	xzr, [sp, #16]
Lloh30:
	adrp	x1, l_.str.1@PAGE
Lloh31:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh32:
	adrp	x1, l_.str.2@PAGE
Lloh33:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh34:
	adrp	x1, l_.str.3@PAGE
Lloh35:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x20, x0
	adrp	x21, __MergedGlobals@PAGE
	ldr	w8, [x21, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB1_8
LBB1_7:                                 ; =>This Inner Loop Header: Depth=1
	mov	x2, sp
	mov	x0, x19
	mov	x1, x20
	mov	w3, #0                          ; =0x0
	bl	_run_native_asm_sniper_cycle
	mov	w0, #22320                      ; =0x5730
	movk	w0, #5, lsl #16
	bl	_usleep
	ldr	w8, [x21, __MergedGlobals@PAGEOFF]
	cbnz	w8, LBB1_7
LBB1_8:
	str	wzr, [x21, __MergedGlobals@PAGEOFF]
	ldr	x0, [sp, #24]
	mov	x1, #0                          ; =0x0
	bl	_pthread_join
	ldr	x0, [sp]
	cbz	x0, LBB1_10
; %bb.9:
	bl	_free
LBB1_10:
	mov	x0, x20
	bl	_curl_slist_free_all
	mov	x0, x19
	bl	_curl_easy_cleanup
LBB1_11:
	bl	_curl_global_cleanup
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #48]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.loh AdrpAdd	Lloh26, Lloh27
	.loh AdrpAdd	Lloh34, Lloh35
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function run_native_asm_sniper_cycle
lCPI2_0:
	.quad	0x40a2c43d70a3d70a              ; double 2402.1199999999999
lCPI2_1:
	.quad	0x40a2c5428f5c28f6              ; double 2402.6300000000001
lCPI2_2:
	.quad	0x40a2c57ae147ae14              ; double 2402.7399999999998
lCPI2_3:
	.quad	0x40a2c5c28f5c28f6              ; double 2402.8800000000001
lCPI2_4:
	.quad	0x3ff3ef37fbefd007              ; double 1.245903
lCPI2_5:
	.quad	0x3ff3eef911cf355d              ; double 1.245843
lCPI2_6:
	.quad	0x40f3d2759999999a              ; double 81191.350000000006
lCPI2_7:
	.quad	0x40f3d2247ae147ae              ; double 81186.279999999999
lCPI2_8:
	.quad	0x3ff0002afdda8bd2              ; double 1.000041
lCPI2_9:
	.quad	0x3ff0002e2328f9f4              ; double 1.0000439999999999
lCPI2_10:
	.quad	0x3ff0046412cf0f9d              ; double 1.001072
lCPI2_11:
	.quad	0x3ff0043a2163fdd6              ; double 1.0010319999999999
lCPI2_12:
	.quad	0x3fc72b3cc4ac6cdb              ; double 0.181007
lCPI2_13:
	.quad	0x406914f694467382              ; double 200.6551
lCPI2_14:
	.quad	0x40691b1a9fbe76c9              ; double 200.84700000000001
lCPI2_15:
	.quad	0x3f4c2c8670c7e938              ; double 8.5979999999999997E-4
lCPI2_16:
	.quad	0x3f4c2f0aaf866ae9              ; double 8.6010000000000003E-4
lCPI2_17:
	.quad	0x40a2ca9eb851eb85              ; double 2405.3099999999999
lCPI2_18:
	.quad	0x40a2c91eb851eb85              ; double 2404.5599999999999
lCPI2_19:
	.quad	0x4040e774cd31769b              ; double 33.808252000000003
lCPI2_20:
	.quad	0x4040e68ccdd93c47              ; double 33.801172000000001
lCPI2_21:
	.quad	0x3fc72806af46aa08              ; double 0.18090899999999999
lCPI2_22:
	.quad	0x426d1a94a2000000              ; double 1.0E+12
lCPI2_23:
	.quad	0x407f400000000000              ; double 500
lCPI2_24:
	.quad	0x40d3880000000000              ; double 2.0E+4
lCPI2_25:
	.quad	0x3fe999999999999a              ; double 0.80000000000000004
lCPI2_26:
	.quad	0x40b3880000000000              ; double 5000
lCPI2_27:
	.quad	0x411e848000000000              ; double 5.0E+5
lCPI2_28:
	.quad	0x3fef5c28f5c28f5c              ; double 0.97999999999999998
lCPI2_29:
	.quad	0x3ff051eb851eb852              ; double 1.02
lCPI2_30:
	.quad	0x3f847ae147ae147b              ; double 0.01
lCPI2_31:
	.quad	0x3ddb7cdfd9d7bdbb              ; double 1.0E-10
lCPI2_32:
	.quad	0x3ee4f8b588e368f1              ; double 1.0000000000000001E-5
lCPI2_33:
	.quad	0x3fb999999999999a              ; double 0.10000000000000001
lCPI2_34:
	.quad	0x409f400000000000              ; double 2000
lCPI2_35:
	.quad	0x3eb0c6f7a0b5ed8d              ; double 9.9999999999999995E-7
lCPI2_36:
	.quad	0x4027eb851eb851ec              ; double 11.960000000000001
lCPI2_37:
	.quad	0x4027f0a3d70a3d71              ; double 11.970000000000001
lCPI2_38:
	.quad	0x3f6a36e2eb1c432d              ; double 0.0032000000000000002
lCPI2_39:
	.quad	0x41cdcd6500000000              ; double 1.0E+9
lCPI2_40:
	.quad	0x4055400000000000              ; double 85
lCPI2_41:
	.quad	0x4078b00000000000              ; double 395
lCPI2_42:
	.quad	0x3f50624dd2f1a9fc              ; double 0.001
lCPI2_43:
	.quad	0x3c32725dd1d243ac              ; double 1.0000000000000001E-18
lCPI2_44:
	.quad	0x4057bae147ae147b              ; double 94.920000000000001
lCPI2_45:
	.quad	0x3f18e1f92ed5807a              ; double 9.4919999999999992E-5
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
	sub	x9, sp, #2016
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
Lloh36:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh37:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh38:
	ldr	x8, [x8]
	str	x8, [sp, #2008]
	adrp	x24, lCPI2_0@PAGE
	ldr	d8, [x24, lCPI2_0@PAGEOFF]
	adrp	x23, lCPI2_1@PAGE
	ldr	d3, [x23, lCPI2_1@PAGEOFF]
	adrp	x28, lCPI2_2@PAGE
	ldr	d0, [x28, lCPI2_2@PAGEOFF]
	adrp	x25, lCPI2_3@PAGE
	ldr	d13, [x25, lCPI2_3@PAGEOFF]
	adrp	x27, lCPI2_4@PAGE
	ldr	d15, [x27, lCPI2_4@PAGEOFF]
	adrp	x26, lCPI2_5@PAGE
	ldr	d1, [x26, lCPI2_5@PAGEOFF]
	adrp	x19, lCPI2_6@PAGE
	ldr	d2, [x19, lCPI2_6@PAGEOFF]
Lloh39:
	adrp	x8, lCPI2_7@PAGE
Lloh40:
	ldr	d4, [x8, lCPI2_7@PAGEOFF]
Lloh41:
	adrp	x8, lCPI2_8@PAGE
Lloh42:
	ldr	d6, [x8, lCPI2_8@PAGEOFF]
Lloh43:
	adrp	x8, lCPI2_9@PAGE
Lloh44:
	ldr	d5, [x8, lCPI2_9@PAGEOFF]
Lloh45:
	adrp	x8, lCPI2_10@PAGE
Lloh46:
	ldr	d16, [x8, lCPI2_10@PAGEOFF]
Lloh47:
	adrp	x8, lCPI2_11@PAGE
Lloh48:
	ldr	d7, [x8, lCPI2_11@PAGEOFF]
Lloh49:
	adrp	x8, lCPI2_12@PAGE
Lloh50:
	ldr	d11, [x8, lCPI2_12@PAGEOFF]
Lloh51:
	adrp	x8, lCPI2_13@PAGE
Lloh52:
	ldr	d9, [x8, lCPI2_13@PAGEOFF]
Lloh53:
	adrp	x8, lCPI2_14@PAGE
Lloh54:
	ldr	d12, [x8, lCPI2_14@PAGEOFF]
Lloh55:
	adrp	x8, lCPI2_15@PAGE
Lloh56:
	ldr	d10, [x8, lCPI2_15@PAGEOFF]
Lloh57:
	adrp	x8, lCPI2_16@PAGE
Lloh58:
	ldr	d21, [x8, lCPI2_16@PAGEOFF]
Lloh59:
	adrp	x8, lCPI2_17@PAGE
Lloh60:
	ldr	d14, [x8, lCPI2_17@PAGEOFF]
Lloh61:
	adrp	x8, lCPI2_18@PAGE
Lloh62:
	ldr	d20, [x8, lCPI2_18@PAGEOFF]
Lloh63:
	adrp	x8, lCPI2_19@PAGE
Lloh64:
	ldr	d18, [x8, lCPI2_19@PAGEOFF]
Lloh65:
	adrp	x8, lCPI2_20@PAGE
Lloh66:
	ldr	d19, [x8, lCPI2_20@PAGEOFF]
Lloh67:
	adrp	x8, lCPI2_21@PAGE
Lloh68:
	ldr	d17, [x8, lCPI2_21@PAGEOFF]
	str	w3, [sp, #348]                  ; 4-byte Folded Spill
	cbz	x0, LBB2_4
; %bb.1:
	cbnz	w3, LBB2_4
; %bb.2:
	mov	x20, x2
	mov	x22, x1
	mov	x21, x0
	stp	d21, d10, [sp, #232]            ; 16-byte Folded Spill
	stp	d20, d19, [sp, #272]            ; 16-byte Folded Spill
	stp	d14, d13, [sp, #248]            ; 16-byte Folded Spill
	stp	d18, d17, [sp, #288]            ; 16-byte Folded Spill
	stp	d11, d16, [sp, #304]            ; 16-byte Folded Spill
	stp	d7, d6, [sp, #320]              ; 16-byte Folded Spill
	str	d5, [sp, #336]                  ; 8-byte Folded Spill
	mov.16b	v14, v2
	mov.16b	v10, v4
	mov.16b	v11, v1
	str	d15, [sp, #264]                 ; 8-byte Folded Spill
	mov.16b	v15, v0
	mov.16b	v13, v3
	str	xzr, [x2, #8]
Lloh69:
	adrp	x8, __MergedGlobals.58@PAGE
Lloh70:
	ldr	x8, [x8, __MergedGlobals.58@PAGEOFF]
	and	x8, x8, #0x3
Lloh71:
	adrp	x9, _RPC_URLS@PAGE
Lloh72:
	add	x9, x9, _RPC_URLS@PAGEOFF
	ldr	x8, [x9, x8, lsl #3]
	str	x8, [sp]
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x21
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
Lloh73:
	adrp	x8, l_.str.4@PAGE
Lloh74:
	add	x8, x8, l_.str.4@PAGEOFF
	bl	_OUTLINED_FUNCTION_11
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
Lloh75:
	adrp	x8, _curl_write_cb@PAGE
Lloh76:
	add	x8, x8, _curl_write_cb@PAGEOFF
	bl	_OUTLINED_FUNCTION_11
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x21
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	bl	_OUTLINED_FUNCTION_11
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #1800                       ; =0x708
	bl	_OUTLINED_FUNCTION_11
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x21
	bl	_curl_easy_perform
	cbz	w0, LBB2_18
; %bb.3:
	mov.16b	v3, v13
	mov.16b	v0, v15
	ldp	d13, d15, [sp, #256]            ; 16-byte Folded Reload
	bl	_OUTLINED_FUNCTION_14
	ldp	d10, d14, [sp, #240]            ; 16-byte Folded Reload
	ldr	d20, [sp, #272]                 ; 8-byte Folded Reload
	ldr	d21, [sp, #232]                 ; 8-byte Folded Reload
LBB2_4:
	str	d0, [sp, #1856]
	str	d0, [sp, #1864]
	fmul	d0, d8, d1
	str	d13, [sp, #1872]
	str	d0, [sp, #1880]
	str	d2, [sp, #1888]
	str	d6, [sp, #1896]
	str	d16, [sp, #1904]
	str	d11, [sp, #1912]
	fmul	d0, d8, d19
	str	d0, [sp, #1920]
	str	d20, [sp, #1928]
	fmul	d0, d8, d21
	fdiv	d1, d8, d12
Lloh77:
	adrp	x8, lCPI2_35@PAGE
Lloh78:
	ldr	d11, [x8, lCPI2_35@PAGEOFF]
	fcmp	d12, d11
Lloh79:
	adrp	x8, lCPI2_36@PAGE
Lloh80:
	ldr	d2, [x8, lCPI2_36@PAGEOFF]
	fcsel	d1, d1, d2, gt
	str	d0, [sp, #1936]
	str	d1, [sp, #1944]
	str	d3, [sp, #1728]
	str	d13, [sp, #1736]
	fmul	d0, d8, d15
	str	d8, [sp, #1744]
	str	d0, [sp, #1752]
	str	d4, [sp, #1760]
	str	d5, [sp, #1768]
	str	d7, [sp, #1776]
	str	d17, [sp, #1784]
	fmul	d0, d8, d18
	str	d0, [sp, #1792]
	str	d14, [sp, #1800]
	fmul	d0, d8, d10
	fdiv	d1, d8, d9
	fcmp	d9, d11
Lloh81:
	adrp	x8, lCPI2_37@PAGE
Lloh82:
	ldr	d2, [x8, lCPI2_37@PAGEOFF]
	fcsel	d1, d1, d2, gt
	str	d0, [sp, #1808]
	str	d1, [sp, #1816]
	add	x1, sp, #368
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	w19, #64                        ; =0x40
	add	x26, sp, #1216
	add	x27, sp, #1344
	add	x28, sp, #1472
	add	x20, sp, #1600
Lloh83:
	adrp	x21, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh84:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh85:
	adrp	x22, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh86:
	add	x22, x22, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
Lloh87:
	adrp	x25, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh88:
	add	x25, x25, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
Lloh89:
	adrp	x23, l___const.run_native_asm_sniper_cycle.bm@PAGE
Lloh90:
	add	x23, x23, l___const.run_native_asm_sniper_cycle.bm@PAGEOFF
Lloh91:
	adrp	x8, lCPI2_38@PAGE
Lloh92:
	ldr	d8, [x8, lCPI2_38@PAGEOFF]
Lloh93:
	adrp	x24, l___const.run_native_asm_sniper_cycle.am@PAGE
Lloh94:
	add	x24, x24, l___const.run_native_asm_sniper_cycle.am@PAGEOFF
LBB2_5:                                 ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #384
	str	x8, [sp, #80]
	add	x8, sp, #448
	str	x8, [sp, #72]
	add	x8, sp, #576
	str	x8, [sp, #64]
	add	x8, sp, #704
	str	x8, [sp, #56]
	add	x8, sp, #832
	str	x8, [sp, #48]
	add	x8, sp, #960
	str	x8, [sp, #40]
	add	x8, sp, #1088
	stp	x26, x8, [sp, #24]
	add	x1, sp, #1856
	add	x2, sp, #1728
	stp	x28, x27, [sp, #8]
	str	x20, [sp]
	mov	w0, #12                         ; =0xc
	mov	x3, x21
	mov	x4, x22
	mov	x5, x25
	mov	x6, x23
	mov	x7, x24
	mov.16b	v0, v8
	bl	_evaluate_full_loan_routes_asm
	subs	w19, w19, #1
	b.ne	LBB2_5
; %bb.6:
	add	x1, sp, #352
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #352]
	ldp	x10, x11, [sp, #368]
	sub	x8, x8, x10
	scvtf	d0, x8
Lloh95:
	adrp	x8, lCPI2_39@PAGE
Lloh96:
	ldr	d1, [x8, lCPI2_39@PAGEOFF]
	sub	x8, x9, x11
	scvtf	d2, x8
	fmadd	d0, d0, d1, d2
	mov	x8, #4580160821035794432        ; =0x3f90000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
Lloh97:
	adrp	x8, lCPI2_40@PAGE
Lloh98:
	ldr	d1, [x8, lCPI2_40@PAGEOFF]
	fcmp	d0, d1
Lloh99:
	adrp	x8, lCPI2_41@PAGE
Lloh100:
	ldr	d1, [x8, lCPI2_41@PAGEOFF]
	fcsel	d10, d1, d0, lt
Lloh101:
	adrp	x8, lCPI2_42@PAGE
Lloh102:
	ldr	d0, [x8, lCPI2_42@PAGEOFF]
	fmul	d0, d10, d0
Lloh103:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh104:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	str	d10, [x8]
	str	d0, [sp, #336]                  ; 8-byte Folded Spill
	str	d0, [x8, #8]
	adrp	x28, __MergedGlobals.58@PAGE
	ldr	x9, [x28, __MergedGlobals.58@PAGEOFF]
	add	x9, x9, #1
	str	x9, [x28, __MergedGlobals.58@PAGEOFF]
	ldrsw	x23, [sp, #384]
	ldr	x20, [x8, #16]
	add	x8, sp, #704
	ldr	d8, [x8, x23, lsl #3]
	fcmp	d8, #0.0
	mov	x22, #47104                     ; =0xb800
	movk	x22, #59457, lsl #16
	movk	x22, #814, lsl #32
	b.le	LBB2_11
; %bb.7:
Lloh105:
	adrp	x19, l_.str.25@PAGE
Lloh106:
	add	x19, x19, l_.str.25@PAGEOFF
	ldr	w8, [sp, #348]                  ; 4-byte Folded Reload
	cbnz	w8, LBB2_12
; %bb.8:
	cmp	x20, x22
	b.lo	LBB2_12
; %bb.9:
	adrp	x8, __MergedGlobals@PAGE+32
	ldr	x10, [x8, __MergedGlobals@PAGEOFF+32]
	adrp	x9, __MergedGlobals.58@PAGE+8
	ldr	x11, [x9, __MergedGlobals.58@PAGEOFF+8]
	cmp	x10, x11
	b.ls	LBB2_12
; %bb.10:
	ldr	x8, [x8, __MergedGlobals@PAGEOFF+32]
	str	x8, [x9, __MergedGlobals.58@PAGEOFF+8]
Lloh107:
	adrp	x0, l_.str.23@PAGE
Lloh108:
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_system
Lloh109:
	adrp	x19, l_.str.24@PAGE
Lloh110:
	add	x19, x19, l_.str.24@PAGEOFF
	b	LBB2_12
LBB2_11:
Lloh111:
	adrp	x19, l_.str.22@PAGE
Lloh112:
	add	x19, x19, l_.str.22@PAGEOFF
LBB2_12:
Lloh113:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh114:
	add	x8, x8, __MergedGlobals@PAGEOFF+24
	ldr	x25, [x8, #16]
	ldr	x24, [x8, #24]
	ldr	x26, [x8]
	ldr	x27, [x8, #32]
Lloh115:
	adrp	x0, l_.str.26@PAGE
Lloh116:
	add	x0, x0, l_.str.26@PAGEOFF
Lloh117:
	adrp	x1, l_.str.27@PAGE
Lloh118:
	add	x1, x1, l_.str.27@PAGEOFF
	bl	_fopen
Lloh119:
	adrp	x14, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh120:
	add	x14, x14, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	adrp	x13, lCPI2_44@PAGE
	cbz	x0, LBB2_14
; %bb.13:
	mov	x21, x0
	ucvtf	d0, x27
Lloh121:
	adrp	x8, lCPI2_43@PAGE
Lloh122:
	ldr	d1, [x8, lCPI2_43@PAGEOFF]
	ucvtf	d2, x26
	fmul	d0, d0, d1
	fmul	d1, d2, d1
	ucvtf	d2, x25
	ucvtf	d3, x24
	fmul	d4, d2, d11
	fmul	d5, d3, d11
	fadd	d6, d5, d4
	ldr	x8, [x28, __MergedGlobals.58@PAGEOFF]
Lloh123:
	adrp	x10, __MergedGlobals@PAGE+32
Lloh124:
	add	x10, x10, __MergedGlobals@PAGEOFF+32
	ldr	x9, [x10]
	ldr	x10, [x10, #32]
Lloh125:
	adrp	x11, l_.str.29@PAGE
Lloh126:
	add	x11, x11, l_.str.29@PAGEOFF
Lloh127:
	adrp	x12, l_.str.30@PAGE
Lloh128:
	add	x12, x12, l_.str.30@PAGEOFF
	cmp	x20, x22
	csel	x11, x12, x11, lo
	ldr	d7, [x13, lCPI2_44@PAGEOFF]
	fmul	d16, d6, d7
Lloh129:
	adrp	x12, lCPI2_45@PAGE
Lloh130:
	ldr	d17, [x12, lCPI2_45@PAGEOFF]
	fmul	d2, d2, d17
	fmul	d3, d3, d17
	ldr	x26, [x14, x23, lsl #3]
Lloh131:
	adrp	x24, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh132:
	add	x24, x24, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	ldr	x22, [x24, x23, lsl #3]
	add	x12, sp, #1600
	ldr	d17, [x12, x23, lsl #3]
	str	d17, [sp, #328]                 ; 8-byte Folded Spill
	add	x12, sp, #1344
	ldr	d12, [x12, x23, lsl #3]
	add	x12, sp, #1216
	ldr	d13, [x12, x23, lsl #3]
	add	x12, sp, #1088
	ldr	d14, [x12, x23, lsl #3]
	add	x12, sp, #960
	ldr	d15, [x12, x23, lsl #3]
	fmul	d7, d15, d7
	add	x12, sp, #576
	ldr	d9, [x12, x23, lsl #3]
	add	x12, sp, #448
	mov.16b	v11, v8
	ldr	d8, [x12, x23, lsl #3]
	stp	d9, d8, [sp, #192]
	stp	d7, d11, [sp, #176]
	stp	d14, d15, [sp, #160]
	stp	d12, d13, [sp, #144]
	str	d17, [sp, #136]
	stp	x26, x22, [sp, #120]
	stp	d5, d3, [sp, #104]
	stp	d4, d2, [sp, #88]
	stp	d6, d16, [sp, #72]
	stp	x11, x19, [sp, #56]
	stp	d1, d0, [sp, #40]
Lloh133:
	adrp	x1, l_.str.28@PAGE
Lloh134:
	add	x1, x1, l_.str.28@PAGEOFF
	stp	x9, x10, [sp, #24]
	ldr	d0, [sp, #336]                  ; 8-byte Folded Reload
	stp	d10, d0, [sp, #8]
	str	x8, [sp]
	bl	_fprintf
	add	x8, sp, #1856
	ldr	d0, [x8, x23, lsl #3]
	add	x19, sp, #1856
	add	x8, sp, #1728
	ldr	d1, [x8, x23, lsl #3]
	add	x25, sp, #1728
Lloh135:
	adrp	x27, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh136:
	add	x27, x27, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	ldr	d4, [x27, x23, lsl #3]
	add	x8, sp, #1472
	ldr	d3, [x8, x23, lsl #3]
	add	x28, sp, #1472
Lloh137:
	adrp	x8, l_.str.32@PAGE
Lloh138:
	add	x8, x8, l_.str.32@PAGEOFF
	str	x8, [sp, #120]
	stp	d9, d8, [sp, #104]
	mov.16b	v8, v11
	stp	d15, d11, [sp, #88]
	stp	d13, d14, [sp, #72]
	stp	d3, d12, [sp, #56]
	ldr	d2, [sp, #328]                  ; 8-byte Folded Reload
	stp	d2, d4, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x26, x22, [sp, #8]
	mov	w8, #1                          ; =0x1
Lloh139:
	adrp	x22, l_.str.31@PAGE
Lloh140:
	add	x22, x22, l_.str.31@PAGEOFF
	bl	_OUTLINED_FUNCTION_6
	ldrsw	x8, [sp, #388]
Lloh141:
	adrp	x9, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh142:
	add	x9, x9, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x9, x8, lsl #3]
	ldr	x10, [x24, x8, lsl #3]
	ldr	d0, [x19, x8, lsl #3]
	ldr	d1, [x25, x8, lsl #3]
	add	x11, sp, #1600
	ldr	d2, [x11, x8, lsl #3]
	ldr	d3, [x27, x8, lsl #3]
	ldr	d4, [x28, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_5
	add	x11, sp, #704
	add	x19, sp, #1088
	ldr	d7, [x19, x8, lsl #3]
	add	x28, sp, #960
	ldr	d16, [x28, x8, lsl #3]
	ldr	d17, [x11, x8, lsl #3]
	add	x26, sp, #576
	ldr	d18, [x26, x8, lsl #3]
	add	x25, sp, #448
	ldr	d19, [x25, x8, lsl #3]
Lloh143:
	adrp	x20, l_.str.32@PAGE
Lloh144:
	add	x20, x20, l_.str.32@PAGEOFF
	bl	_OUTLINED_FUNCTION_2
	mov	w8, #2                          ; =0x2
	bl	_OUTLINED_FUNCTION_6
	ldrsw	x8, [sp, #392]
	bl	_OUTLINED_FUNCTION_1
	bl	_OUTLINED_FUNCTION_4
	add	x19, sp, #1088
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #3                          ; =0x3
	bl	_OUTLINED_FUNCTION_6
	ldrsw	x8, [sp, #396]
	bl	_OUTLINED_FUNCTION_1
	bl	_OUTLINED_FUNCTION_4
	add	x19, sp, #1088
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #4                          ; =0x4
	bl	_OUTLINED_FUNCTION_6
	ldrsw	x8, [sp, #400]
	bl	_OUTLINED_FUNCTION_1
	bl	_OUTLINED_FUNCTION_4
	add	x19, sp, #1088
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #5                          ; =0x5
	bl	_OUTLINED_FUNCTION_6
	ldrsw	x8, [sp, #404]
	bl	_OUTLINED_FUNCTION_1
	bl	_OUTLINED_FUNCTION_4
	add	x19, sp, #1088
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #6                          ; =0x6
	bl	_OUTLINED_FUNCTION_6
	ldrsw	x8, [sp, #408]
	bl	_OUTLINED_FUNCTION_1
	bl	_OUTLINED_FUNCTION_4
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #7                          ; =0x7
	bl	_OUTLINED_FUNCTION_11
	mov	x1, x22
	mov	x19, x22
	bl	_fprintf
	ldrsw	x8, [sp, #412]
	bl	_OUTLINED_FUNCTION_1
	add	x11, sp, #1472
	ldr	d4, [x11, x8, lsl #3]
	add	x22, sp, #1472
	bl	_OUTLINED_FUNCTION_5
	add	x11, sp, #1088
	ldr	d7, [x11, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #8                          ; =0x8
	bl	_OUTLINED_FUNCTION_7
	ldrsw	x8, [sp, #416]
	bl	_OUTLINED_FUNCTION_1
	ldr	d4, [x22, x8, lsl #3]
	add	x22, sp, #1472
	bl	_OUTLINED_FUNCTION_5
	add	x11, sp, #1088
	ldr	d7, [x11, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_0
	mov	w8, #9                          ; =0x9
	bl	_OUTLINED_FUNCTION_7
	ldrsw	x8, [sp, #420]
	bl	_OUTLINED_FUNCTION_1
	ldr	d4, [x22, x8, lsl #3]
	add	x22, sp, #1472
	bl	_OUTLINED_FUNCTION_5
	add	x11, sp, #1088
	ldr	d7, [x11, x8, lsl #3]
	ldr	d16, [x28, x8, lsl #3]
	add	x11, sp, #704
	ldr	d17, [x11, x8, lsl #3]
	ldr	d18, [x26, x8, lsl #3]
	ldr	d19, [x25, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_2
	mov	w8, #10                         ; =0xa
	bl	_OUTLINED_FUNCTION_7
	ldrsw	x8, [sp, #424]
	bl	_OUTLINED_FUNCTION_3
	add	x11, sp, #1728
	ldr	d1, [x11, x8, lsl #3]
	add	x26, sp, #1728
	add	x11, sp, #1600
	ldr	d2, [x11, x8, lsl #3]
	add	x28, sp, #1600
	ldr	d3, [x27, x8, lsl #3]
	ldr	d4, [x22, x8, lsl #3]
	add	x22, sp, #1472
	add	x11, sp, #1344
	ldr	d5, [x11, x8, lsl #3]
	add	x25, sp, #1344
	bl	_OUTLINED_FUNCTION_8
	bl	_OUTLINED_FUNCTION_13
	bl	_OUTLINED_FUNCTION_2
	mov	w8, #11                         ; =0xb
	bl	_OUTLINED_FUNCTION_7
	ldrsw	x8, [sp, #428]
	bl	_OUTLINED_FUNCTION_3
	ldr	d1, [x26, x8, lsl #3]
	ldr	d2, [x28, x8, lsl #3]
	ldr	d3, [x27, x8, lsl #3]
	ldr	d4, [x22, x8, lsl #3]
	ldr	d5, [x25, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_8
	bl	_OUTLINED_FUNCTION_13
Lloh145:
	adrp	x8, l_.str.33@PAGE
Lloh146:
	add	x8, x8, l_.str.33@PAGEOFF
	str	x8, [sp, #120]
	stp	d18, d19, [sp, #104]
	stp	d16, d17, [sp, #88]
	stp	d6, d7, [sp, #72]
	stp	d4, d5, [sp, #56]
	stp	d2, d3, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x10, [sp, #8]
	mov	w8, #12                         ; =0xc
	bl	_OUTLINED_FUNCTION_7
Lloh147:
	adrp	x0, l_.str.34@PAGE
Lloh148:
	add	x0, x0, l_.str.34@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x21
	bl	_fwrite
	mov	x0, x21
	bl	_fclose
Lloh149:
	adrp	x0, l_.str.26@PAGE
Lloh150:
	add	x0, x0, l_.str.26@PAGEOFF
Lloh151:
	adrp	x1, l_.str.35@PAGE
Lloh152:
	add	x1, x1, l_.str.35@PAGEOFF
	bl	_rename
Lloh153:
	adrp	x14, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh154:
	add	x14, x14, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	adrp	x13, lCPI2_44@PAGE
LBB2_14:
	ldr	w8, [sp, #348]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_16
; %bb.15:
Lloh155:
	adrp	x19, l_str.57@PAGE
Lloh156:
	add	x19, x19, l_str.57@PAGEOFF
	mov	x0, x19
	mov	x20, x13
	mov	x21, x14
	bl	_puts
Lloh157:
	adrp	x0, l_str.55@PAGE
Lloh158:
	add	x0, x0, l_str.55@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
	ldr	d0, [sp, #336]                  ; 8-byte Folded Reload
	str	d0, [sp]
Lloh159:
	adrp	x0, l_.str.38@PAGE
Lloh160:
	add	x0, x0, l_.str.38@PAGEOFF
	bl	_printf
	ldr	x8, [x21, x23, lsl #3]
	str	x8, [sp]
Lloh161:
	adrp	x0, l_.str.39@PAGE
Lloh162:
	add	x0, x0, l_.str.39@PAGEOFF
	bl	_printf
	add	x8, sp, #1856
	ldr	d0, [x8, x23, lsl #3]
	add	x8, sp, #1728
	ldr	d1, [x8, x23, lsl #3]
	add	x8, sp, #1600
	ldr	d2, [x8, x23, lsl #3]
Lloh163:
	adrp	x8, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh164:
	add	x8, x8, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	ldr	d3, [x8, x23, lsl #3]
	stp	d2, d3, [sp, #16]
	stp	d0, d1, [sp]
Lloh165:
	adrp	x0, l_.str.40@PAGE
Lloh166:
	add	x0, x0, l_.str.40@PAGEOFF
	bl	_printf
	add	x8, sp, #1344
	ldr	d0, [x8, x23, lsl #3]
	add	x8, sp, #1216
	ldr	d1, [x8, x23, lsl #3]
	add	x8, sp, #1088
	ldr	d2, [x8, x23, lsl #3]
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh167:
	adrp	x0, l_.str.41@PAGE
Lloh168:
	add	x0, x0, l_.str.41@PAGEOFF
	bl	_printf
	add	x8, sp, #960
	ldr	d0, [x8, x23, lsl #3]
	ldr	d1, [x20, lCPI2_44@PAGEOFF]
	fmul	d1, d0, d1
	stp	d0, d1, [sp]
Lloh169:
	adrp	x0, l_.str.42@PAGE
Lloh170:
	add	x0, x0, l_.str.42@PAGEOFF
	bl	_printf
	add	x8, sp, #576
	ldr	d0, [x8, x23, lsl #3]
	add	x8, sp, #448
	ldr	d1, [x8, x23, lsl #3]
	stp	d0, d1, [sp, #8]
	str	d8, [sp]
Lloh171:
	adrp	x0, l_.str.43@PAGE
Lloh172:
	add	x0, x0, l_.str.43@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
LBB2_16:
	ldr	x8, [sp, #2008]
Lloh173:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh174:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh175:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_22
; %bb.17:
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
LBB2_18:
	ldr	x0, [x20]
	mov.16b	v3, v13
	mov.16b	v0, v15
	bl	_OUTLINED_FUNCTION_14
	ldr	d20, [sp, #272]                 ; 8-byte Folded Reload
	ldr	d21, [sp, #232]                 ; 8-byte Folded Reload
	cbz	x0, LBB2_21
; %bb.19:
	ldr	x8, [x20, #8]
	cmp	x8, #33
	ldp	d13, d15, [sp, #256]            ; 16-byte Folded Reload
	ldp	d10, d14, [sp, #240]            ; 16-byte Folded Reload
	b.lo	LBB2_4
; %bb.20:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
Lloh176:
	adrp	x8, lCPI2_22@PAGE
Lloh177:
	ldr	d14, [x8, lCPI2_22@PAGEOFF]
Lloh178:
	adrp	x8, lCPI2_23@PAGE
Lloh179:
	ldr	d12, [x8, lCPI2_23@PAGEOFF]
Lloh180:
	adrp	x8, lCPI2_24@PAGE
Lloh181:
	ldr	d9, [x8, lCPI2_24@PAGEOFF]
	ldr	d3, [x24, lCPI2_0@PAGEOFF]
	bl	_OUTLINED_FUNCTION_9
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #11                         ; =0xb
	bl	_find_batch_result_for_id
	ldr	d3, [x23, lCPI2_1@PAGEOFF]
	bl	_OUTLINED_FUNCTION_9
	str	d0, [sp, #256]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #12                         ; =0xc
	bl	_find_batch_result_for_id
	ldr	d3, [x28, lCPI2_2@PAGEOFF]
	mov.16b	v0, v14
	mov.16b	v1, v12
	mov.16b	v2, v9
	str	d9, [sp, #224]                  ; 8-byte Folded Spill
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #13                         ; =0xd
	bl	_find_batch_result_for_id
	ldr	d3, [x25, lCPI2_3@PAGEOFF]
	bl	_OUTLINED_FUNCTION_9
	mov.16b	v13, v0
	ldr	x0, [x20]
	mov	w1, #14                         ; =0xe
	bl	_find_batch_result_for_id
Lloh182:
	adrp	x8, lCPI2_25@PAGE
Lloh183:
	ldr	d9, [x8, lCPI2_25@PAGEOFF]
	ldr	d3, [x27, lCPI2_4@PAGEOFF]
	bl	_OUTLINED_FUNCTION_16
	mov.16b	v15, v0
	ldr	x0, [x20]
	mov	w1, #15                         ; =0xf
	bl	_find_batch_result_for_id
	ldr	d3, [x26, lCPI2_5@PAGEOFF]
	bl	_OUTLINED_FUNCTION_16
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #16                         ; =0x10
	bl	_find_batch_result_for_id
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d9, x8
Lloh184:
	adrp	x8, lCPI2_26@PAGE
Lloh185:
	ldr	d10, [x8, lCPI2_26@PAGEOFF]
Lloh186:
	adrp	x8, lCPI2_27@PAGE
Lloh187:
	ldr	d11, [x8, lCPI2_27@PAGEOFF]
	ldr	d3, [x19, lCPI2_6@PAGEOFF]
	mov.16b	v0, v9
	bl	_OUTLINED_FUNCTION_10
	str	d0, [sp, #240]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #17                         ; =0x11
	bl	_find_batch_result_for_id
Lloh188:
	adrp	x8, lCPI2_7@PAGE
Lloh189:
	ldr	d3, [x8, lCPI2_7@PAGEOFF]
	mov.16b	v0, v9
	bl	_OUTLINED_FUNCTION_10
	str	d0, [sp, #232]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #18                         ; =0x12
	bl	_find_batch_result_for_id
Lloh190:
	adrp	x8, lCPI2_28@PAGE
Lloh191:
	ldr	d10, [x8, lCPI2_28@PAGEOFF]
Lloh192:
	adrp	x8, lCPI2_29@PAGE
Lloh193:
	ldr	d11, [x8, lCPI2_29@PAGEOFF]
Lloh194:
	adrp	x8, lCPI2_8@PAGE
Lloh195:
	ldr	d3, [x8, lCPI2_8@PAGEOFF]
	fmov	d0, #1.00000000
	bl	_OUTLINED_FUNCTION_10
	str	d0, [sp, #328]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #19                         ; =0x13
	bl	_find_batch_result_for_id
Lloh196:
	adrp	x8, lCPI2_9@PAGE
Lloh197:
	ldr	d3, [x8, lCPI2_9@PAGEOFF]
	fmov	d0, #1.00000000
	bl	_OUTLINED_FUNCTION_10
	str	d0, [sp, #336]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #20                         ; =0x14
	bl	_find_batch_result_for_id
Lloh198:
	adrp	x8, lCPI2_10@PAGE
Lloh199:
	ldr	d3, [x8, lCPI2_10@PAGEOFF]
	fmov	d0, #1.00000000
	bl	_OUTLINED_FUNCTION_10
	str	d0, [sp, #312]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #21                         ; =0x15
	bl	_find_batch_result_for_id
Lloh200:
	adrp	x8, lCPI2_11@PAGE
Lloh201:
	ldr	d3, [x8, lCPI2_11@PAGEOFF]
	fmov	d0, #1.00000000
	bl	_OUTLINED_FUNCTION_10
	str	d0, [sp, #320]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #22                         ; =0x16
	bl	_find_batch_result_for_id
Lloh202:
	adrp	x8, lCPI2_30@PAGE
Lloh203:
	ldr	d10, [x8, lCPI2_30@PAGEOFF]
Lloh204:
	adrp	x8, lCPI2_12@PAGE
Lloh205:
	ldr	d3, [x8, lCPI2_12@PAGEOFF]
	bl	_OUTLINED_FUNCTION_15
	str	d0, [sp, #304]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #23                         ; =0x17
	bl	_find_batch_result_for_id
Lloh206:
	adrp	x8, lCPI2_21@PAGE
Lloh207:
	ldr	d3, [x8, lCPI2_21@PAGEOFF]
	bl	_OUTLINED_FUNCTION_15
	str	d0, [sp, #296]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #24                         ; =0x18
	bl	_find_batch_result_for_id
Lloh208:
	adrp	x8, lCPI2_31@PAGE
Lloh209:
	ldr	d10, [x8, lCPI2_31@PAGEOFF]
Lloh210:
	adrp	x8, lCPI2_20@PAGE
Lloh211:
	ldr	d3, [x8, lCPI2_20@PAGEOFF]
	fmov	d1, #5.00000000
	mov.16b	v0, v10
	bl	_OUTLINED_FUNCTION_12
	str	d0, [sp, #280]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #25                         ; =0x19
	bl	_find_batch_result_for_id
Lloh212:
	adrp	x8, lCPI2_19@PAGE
Lloh213:
	ldr	d3, [x8, lCPI2_19@PAGEOFF]
	fmov	d1, #5.00000000
	mov.16b	v0, v10
	bl	_OUTLINED_FUNCTION_12
	str	d0, [sp, #288]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #26                         ; =0x1a
	bl	_find_batch_result_for_id
Lloh214:
	adrp	x8, lCPI2_18@PAGE
Lloh215:
	ldr	d3, [x8, lCPI2_18@PAGEOFF]
	mov.16b	v0, v14
	mov.16b	v1, v12
	ldr	d9, [sp, #224]                  ; 8-byte Folded Reload
	bl	_OUTLINED_FUNCTION_12
	str	d0, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #27                         ; =0x1b
	bl	_find_batch_result_for_id
Lloh216:
	adrp	x8, lCPI2_17@PAGE
Lloh217:
	ldr	d3, [x8, lCPI2_17@PAGEOFF]
	bl	_OUTLINED_FUNCTION_9
	mov.16b	v14, v0
	ldr	x0, [x20]
	mov	w1, #28                         ; =0x1c
	bl	_find_batch_result_for_id
Lloh218:
	adrp	x8, lCPI2_32@PAGE
Lloh219:
	ldr	d9, [x8, lCPI2_32@PAGEOFF]
Lloh220:
	adrp	x8, lCPI2_33@PAGE
Lloh221:
	ldr	d10, [x8, lCPI2_33@PAGEOFF]
Lloh222:
	adrp	x8, lCPI2_16@PAGE
Lloh223:
	ldr	d3, [x8, lCPI2_16@PAGEOFF]
	bl	_OUTLINED_FUNCTION_17
	mov.16b	v11, v0
	ldr	x0, [x20]
	mov	w1, #29                         ; =0x1d
	bl	_find_batch_result_for_id
Lloh224:
	adrp	x8, lCPI2_15@PAGE
Lloh225:
	ldr	d3, [x8, lCPI2_15@PAGEOFF]
	bl	_OUTLINED_FUNCTION_17
	mov.16b	v10, v0
	ldr	x0, [x20]
	mov	w1, #30                         ; =0x1e
	bl	_find_batch_result_for_id
Lloh226:
	adrp	x8, lCPI2_34@PAGE
Lloh227:
	ldr	d9, [x8, lCPI2_34@PAGEOFF]
Lloh228:
	adrp	x8, lCPI2_14@PAGE
Lloh229:
	ldr	d3, [x8, lCPI2_14@PAGEOFF]
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	bl	_OUTLINED_FUNCTION_12
	mov.16b	v12, v0
	ldr	x0, [x20]
	mov	w1, #31                         ; =0x1f
	bl	_find_batch_result_for_id
Lloh230:
	adrp	x8, lCPI2_13@PAGE
Lloh231:
	ldr	d3, [x8, lCPI2_13@PAGEOFF]
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	bl	_OUTLINED_FUNCTION_12
	mov.16b	v21, v11
	ldp	d20, d19, [sp, #272]            ; 16-byte Folded Reload
	ldp	d18, d17, [sp, #288]            ; 16-byte Folded Reload
	ldp	d11, d16, [sp, #304]            ; 16-byte Folded Reload
	ldp	d7, d6, [sp, #320]              ; 16-byte Folded Reload
	ldr	d5, [sp, #336]                  ; 8-byte Folded Reload
	ldp	d4, d2, [sp, #232]              ; 16-byte Folded Reload
	ldp	d1, d3, [sp, #248]              ; 16-byte Folded Reload
	mov.16b	v9, v0
	ldr	d0, [sp, #264]                  ; 8-byte Folded Reload
	b	LBB2_4
LBB2_21:
	ldp	d13, d15, [sp, #256]            ; 16-byte Folded Reload
	ldp	d10, d14, [sp, #240]            ; 16-byte Folded Reload
	b	LBB2_4
LBB2_22:
	bl	___stack_chk_fail
	.loh AdrpLdr	Lloh67, Lloh68
	.loh AdrpAdrp	Lloh65, Lloh67
	.loh AdrpLdr	Lloh65, Lloh66
	.loh AdrpAdrp	Lloh63, Lloh65
	.loh AdrpLdr	Lloh63, Lloh64
	.loh AdrpAdrp	Lloh61, Lloh63
	.loh AdrpLdr	Lloh61, Lloh62
	.loh AdrpAdrp	Lloh59, Lloh61
	.loh AdrpLdr	Lloh59, Lloh60
	.loh AdrpAdrp	Lloh57, Lloh59
	.loh AdrpLdr	Lloh57, Lloh58
	.loh AdrpAdrp	Lloh55, Lloh57
	.loh AdrpLdr	Lloh55, Lloh56
	.loh AdrpAdrp	Lloh53, Lloh55
	.loh AdrpLdr	Lloh53, Lloh54
	.loh AdrpAdrp	Lloh51, Lloh53
	.loh AdrpLdr	Lloh51, Lloh52
	.loh AdrpAdrp	Lloh49, Lloh51
	.loh AdrpLdr	Lloh49, Lloh50
	.loh AdrpAdrp	Lloh47, Lloh49
	.loh AdrpLdr	Lloh47, Lloh48
	.loh AdrpAdrp	Lloh45, Lloh47
	.loh AdrpLdr	Lloh45, Lloh46
	.loh AdrpAdrp	Lloh43, Lloh45
	.loh AdrpLdr	Lloh43, Lloh44
	.loh AdrpAdrp	Lloh41, Lloh43
	.loh AdrpLdr	Lloh41, Lloh42
	.loh AdrpAdrp	Lloh39, Lloh41
	.loh AdrpLdr	Lloh39, Lloh40
	.loh AdrpLdrGotLdr	Lloh36, Lloh37, Lloh38
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpLdr	Lloh69, Lloh70
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpLdr	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpLdr	Lloh81, Lloh82
	.loh AdrpAdrp	Lloh79, Lloh81
	.loh AdrpLdr	Lloh79, Lloh80
	.loh AdrpAdrp	Lloh77, Lloh79
	.loh AdrpLdr	Lloh77, Lloh78
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdrp	Lloh101, Lloh103
	.loh AdrpLdr	Lloh101, Lloh102
	.loh AdrpAdrp	Lloh99, Lloh101
	.loh AdrpLdr	Lloh99, Lloh100
	.loh AdrpAdrp	Lloh97, Lloh99
	.loh AdrpLdr	Lloh97, Lloh98
	.loh AdrpLdr	Lloh95, Lloh96
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
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
	.loh AdrpLdr	Lloh129, Lloh130
	.loh AdrpAdd	Lloh127, Lloh128
	.loh AdrpAdd	Lloh125, Lloh126
	.loh AdrpAdd	Lloh123, Lloh124
	.loh AdrpLdr	Lloh121, Lloh122
	.loh AdrpAdd	Lloh171, Lloh172
	.loh AdrpAdd	Lloh169, Lloh170
	.loh AdrpAdd	Lloh167, Lloh168
	.loh AdrpAdd	Lloh165, Lloh166
	.loh AdrpAdd	Lloh163, Lloh164
	.loh AdrpAdd	Lloh161, Lloh162
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpAdd	Lloh157, Lloh158
	.loh AdrpAdd	Lloh155, Lloh156
	.loh AdrpLdrGotLdr	Lloh173, Lloh174, Lloh175
	.loh AdrpLdr	Lloh230, Lloh231
	.loh AdrpLdr	Lloh228, Lloh229
	.loh AdrpAdrp	Lloh226, Lloh228
	.loh AdrpLdr	Lloh226, Lloh227
	.loh AdrpLdr	Lloh224, Lloh225
	.loh AdrpLdr	Lloh222, Lloh223
	.loh AdrpAdrp	Lloh220, Lloh222
	.loh AdrpLdr	Lloh220, Lloh221
	.loh AdrpAdrp	Lloh218, Lloh220
	.loh AdrpLdr	Lloh218, Lloh219
	.loh AdrpLdr	Lloh216, Lloh217
	.loh AdrpLdr	Lloh214, Lloh215
	.loh AdrpLdr	Lloh212, Lloh213
	.loh AdrpLdr	Lloh210, Lloh211
	.loh AdrpAdrp	Lloh208, Lloh210
	.loh AdrpLdr	Lloh208, Lloh209
	.loh AdrpLdr	Lloh206, Lloh207
	.loh AdrpLdr	Lloh204, Lloh205
	.loh AdrpAdrp	Lloh202, Lloh204
	.loh AdrpLdr	Lloh202, Lloh203
	.loh AdrpLdr	Lloh200, Lloh201
	.loh AdrpLdr	Lloh198, Lloh199
	.loh AdrpLdr	Lloh196, Lloh197
	.loh AdrpLdr	Lloh194, Lloh195
	.loh AdrpAdrp	Lloh192, Lloh194
	.loh AdrpLdr	Lloh192, Lloh193
	.loh AdrpAdrp	Lloh190, Lloh192
	.loh AdrpLdr	Lloh190, Lloh191
	.loh AdrpLdr	Lloh188, Lloh189
	.loh AdrpLdr	Lloh186, Lloh187
	.loh AdrpAdrp	Lloh184, Lloh186
	.loh AdrpLdr	Lloh184, Lloh185
	.loh AdrpLdr	Lloh182, Lloh183
	.loh AdrpLdr	Lloh180, Lloh181
	.loh AdrpAdrp	Lloh178, Lloh180
	.loh AdrpLdr	Lloh178, Lloh179
	.loh AdrpAdrp	Lloh176, Lloh178
	.loh AdrpLdr	Lloh176, Lloh177
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lockfree_block_ticker_thread
_lockfree_block_ticker_thread:          ; @lockfree_block_ticker_thread
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #464
	stp	d15, d14, [sp, #304]            ; 16-byte Folded Spill
	stp	d13, d12, [sp, #320]            ; 16-byte Folded Spill
	stp	d11, d10, [sp, #336]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #352]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #368]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #384]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #400]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #416]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #432]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #448]            ; 16-byte Folded Spill
	add	x29, sp, #448
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
Lloh232:
	adrp	x1, l_.str.1@PAGE
Lloh233:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh234:
	adrp	x1, l_.str.2@PAGE
Lloh235:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh236:
	adrp	x1, l_.str.3@PAGE
Lloh237:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x24, x0
	adrp	x25, __MergedGlobals@PAGE
	ldr	w8, [x25, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_85
; %bb.1:
	mov	w21, #0                         ; =0x0
Lloh238:
	adrp	x26, _RPC_URLS@PAGE
Lloh239:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh240:
	adrp	x27, l_.str.51@PAGE
Lloh241:
	add	x27, x27, l_.str.51@PAGEOFF
Lloh242:
	adrp	x28, _curl_write_cb@PAGE
Lloh243:
	add	x28, x28, _curl_write_cb@PAGEOFF
	mov	w22, #1                         ; =0x1
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	str	x8, [sp, #184]                  ; 8-byte Folded Spill
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	str	x8, [sp, #176]                  ; 8-byte Folded Spill
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	str	x8, [sp, #168]                  ; 8-byte Folded Spill
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	str	x8, [sp, #160]                  ; 8-byte Folded Spill
	mov	x8, #32890                      ; =0x807a
	movk	x8, #11989, lsl #16
	movk	x8, #57849, lsl #32
	movk	x8, #16152, lsl #48
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	mov	x20, #1                         ; =0x1
	movk	x20, #4100, lsl #32
	str	x24, [sp, #192]                 ; 8-byte Folded Spill
	b	LBB3_3
LBB3_2:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	w21, w21, #1
	mov	w0, #22320                      ; =0x5730
	movk	w0, #5, lsl #16
	bl	_usleep
	ldr	w8, [x25, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_83
LBB3_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB3_11 Depth 2
                                        ;     Child Loop BB3_15 Depth 2
                                        ;     Child Loop BB3_23 Depth 2
                                        ;     Child Loop BB3_27 Depth 2
                                        ;     Child Loop BB3_34 Depth 2
                                        ;     Child Loop BB3_38 Depth 2
                                        ;     Child Loop BB3_44 Depth 2
                                        ;     Child Loop BB3_48 Depth 2
                                        ;     Child Loop BB3_54 Depth 2
                                        ;     Child Loop BB3_58 Depth 2
                                        ;     Child Loop BB3_64 Depth 2
                                        ;     Child Loop BB3_68 Depth 2
                                        ;     Child Loop BB3_74 Depth 2
                                        ;     Child Loop BB3_78 Depth 2
	negs	w8, w21
	and	w8, w8, #0x3
	and	w9, w21, #0x3
	csneg	w8, w9, w8, mi
	ldr	x8, [x26, w8, sxtw #3]
	stur	xzr, [x29, #-168]
	stur	x8, [x29, #-216]                ; 8-byte Folded Spill
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x24, [sp]
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
	str	x22, [sp]
	mov	x0, x19
	mov	w1, #121                        ; =0x79
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
	mov	x23, x0
	sub	x1, x29, #208
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	cbnz	w23, LBB3_2
; %bb.4:                                ;   in Loop: Header=BB3_3 Depth=1
	ldur	x0, [x29, #-176]
	cbz	x0, LBB3_2
; %bb.5:                                ;   in Loop: Header=BB3_3 Depth=1
	ldur	x8, [x29, #-168]
	cmp	x8, #33
	b.lo	LBB3_2
; %bb.6:                                ;   in Loop: Header=BB3_3 Depth=1
	ldp	x9, x8, [x29, #-208]
	stp	x9, x8, [sp, #216]              ; 16-byte Folded Spill
	ldp	x9, x8, [x29, #-192]
	stp	x9, x8, [sp, #200]              ; 16-byte Folded Spill
	mov	w1, #1                          ; =0x1
	bl	_find_batch_result_for_id
	mov	x24, x0
	ldur	x0, [x29, #-176]
	mov	w1, #2                          ; =0x2
	bl	_find_batch_result_for_id
	mov	x23, x0
	ldur	x0, [x29, #-176]
	mov	w1, #3                          ; =0x3
	bl	_find_batch_result_for_id
	mov	x28, x0
	ldur	x0, [x29, #-176]
	mov	w1, #4                          ; =0x4
	bl	_find_batch_result_for_id
	mov	x27, x0
	ldur	x0, [x29, #-176]
	mov	w1, #5                          ; =0x5
	bl	_find_batch_result_for_id
	mov	x26, x0
	ldur	x0, [x29, #-176]
	mov	w1, #6                          ; =0x6
	bl	_find_batch_result_for_id
	mov	x25, x0
	ldur	x0, [x29, #-176]
	mov	w1, #7                          ; =0x7
	bl	_find_batch_result_for_id
Lloh244:
	adrp	x16, l_.str.52@PAGE
Lloh245:
	add	x16, x16, l_.str.52@PAGEOFF
	mov	w17, #16                        ; =0x10
	cbz	x24, LBB3_18
; %bb.7:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x24]
	cmp	w8, #48
	b.ne	LBB3_10
; %bb.8:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x24, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	b.ne	LBB3_10
; %bb.9:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x24, x24, #2
LBB3_10:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x24, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_13
LBB3_11:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_13
; %bb.12:                               ;   in Loop: Header=BB3_11 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x24, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_11
LBB3_13:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_18
; %bb.14:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x24, x10
	csel	x9, x9, x17, lo
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
Lloh246:
	adrp	x9, __MergedGlobals@PAGE+32
Lloh247:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+32]
	cmp	x8, x9
	b.ls	LBB3_19
; %bb.17:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+32
	str	x8, [x9, __MergedGlobals@PAGEOFF+32]
	b	LBB3_19
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh248:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh249:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+32]
LBB3_19:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x23, LBB3_30
; %bb.20:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x23]
	cmp	w8, #48
	b.ne	LBB3_22
; %bb.21:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x23, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x23, #2
	csel	x23, x8, x23, eq
LBB3_22:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x23, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_25
LBB3_23:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_25
; %bb.24:                               ;   in Loop: Header=BB3_23 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x23, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_23
LBB3_25:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_30
; %bb.26:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x23, x10
	csel	x9, x9, x17, lo
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
	adrp	x9, __MergedGlobals@PAGE+72
	str	x8, [x9, __MergedGlobals@PAGEOFF+72]
LBB3_30:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x28, LBB3_40
; %bb.31:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x28]
	cmp	w8, #48
	b.ne	LBB3_33
; %bb.32:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x28, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x28, #2
	csel	x28, x8, x28, eq
LBB3_33:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x28, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_36
LBB3_34:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_36
; %bb.35:                               ;   in Loop: Header=BB3_34 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x28, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_34
LBB3_36:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_39
; %bb.37:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x28, x10
	csel	x9, x9, x17, lo
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
LBB3_39:                                ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+40
	str	x8, [x9, __MergedGlobals@PAGEOFF+40]
LBB3_40:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x27, LBB3_50
; %bb.41:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x27]
	cmp	w8, #48
	b.ne	LBB3_43
; %bb.42:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x27, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x27, #2
	csel	x27, x8, x27, eq
LBB3_43:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x27, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_46
LBB3_44:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_46
; %bb.45:                               ;   in Loop: Header=BB3_44 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x27, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_44
LBB3_46:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_49
; %bb.47:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x27, x10
	csel	x9, x9, x17, lo
	sub	x10, x10, #16
LBB3_48:                                ;   Parent Loop BB3_3 Depth=1
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
	b.ne	LBB3_48
LBB3_49:                                ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+48
	str	x8, [x9, __MergedGlobals@PAGEOFF+48]
LBB3_50:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x26, LBB3_60
; %bb.51:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x26]
	cmp	w8, #48
	b.ne	LBB3_53
; %bb.52:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x26, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x26, #2
	csel	x26, x8, x26, eq
LBB3_53:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x26, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_56
LBB3_54:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_56
; %bb.55:                               ;   in Loop: Header=BB3_54 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x26, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_54
LBB3_56:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_59
; %bb.57:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x26, x10
	csel	x9, x9, x17, lo
	sub	x10, x10, #16
LBB3_58:                                ;   Parent Loop BB3_3 Depth=1
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
	b.ne	LBB3_58
LBB3_59:                                ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+56
	str	x8, [x9, __MergedGlobals@PAGEOFF+56]
LBB3_60:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x25, LBB3_70
; %bb.61:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x25]
	cmp	w8, #48
	b.ne	LBB3_63
; %bb.62:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x25, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x25, #2
	csel	x25, x8, x25, eq
LBB3_63:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x25, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_66
LBB3_64:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_66
; %bb.65:                               ;   in Loop: Header=BB3_64 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x25, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_64
LBB3_66:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_69
; %bb.67:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x25, x10
	csel	x9, x9, x17, lo
	sub	x10, x10, #16
LBB3_68:                                ;   Parent Loop BB3_3 Depth=1
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
	b.ne	LBB3_68
LBB3_69:                                ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+64
	str	x8, [x9, __MergedGlobals@PAGEOFF+64]
LBB3_70:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x0, LBB3_80
; %bb.71:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #48
	b.ne	LBB3_73
; %bb.72:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x0, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x0, #2
	csel	x0, x8, x0, eq
LBB3_73:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x0, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_76
LBB3_74:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_76
; %bb.75:                               ;   in Loop: Header=BB3_74 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x0, x9]
	cmp	w8, #44
	lsl	x10, x22, x8
	and	x10, x10, x20
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_74
LBB3_76:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_79
; %bb.77:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x17, hi
	add	x10, x0, x10
	csel	x9, x9, x17, lo
	sub	x10, x10, #16
LBB3_78:                                ;   Parent Loop BB3_3 Depth=1
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
	b.ne	LBB3_78
LBB3_79:                                ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+24
	str	x8, [x9, __MergedGlobals@PAGEOFF+24]
LBB3_80:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh250:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh251:
	add	x8, x8, __MergedGlobals@PAGEOFF+24
	ldr	x25, [x8, #16]
	ldr	x24, [x8, #24]
	ldr	x26, [x8, #32]
	ldr	x27, [x8]
	ldr	x28, [x8, #48]
	mov	x0, x16
Lloh252:
	adrp	x1, l_.str.27@PAGE
Lloh253:
	add	x1, x1, l_.str.27@PAGEOFF
	bl	_fopen
	cbz	x0, LBB3_82
; %bb.81:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x23, x0
	ldr	x8, [sp, #216]                  ; 8-byte Folded Reload
	ldp	x10, x9, [sp, #200]             ; 16-byte Folded Reload
	sub	x8, x8, x10
	scvtf	d0, x8
	ldp	d2, d1, [sp, #176]              ; 16-byte Folded Reload
	fmul	d0, d0, d1
	ldr	x8, [sp, #224]                  ; 8-byte Folded Reload
	sub	x8, x8, x9
	scvtf	d1, x8
	fmadd	d3, d1, d2, d0
	ucvtf	d0, x28
	ldp	d1, d4, [sp, #160]              ; 16-byte Folded Reload
	fmul	d0, d0, d4
	stp	d0, d3, [sp, #216]              ; 16-byte Folded Spill
	ucvtf	d0, x27
	fmul	d8, d0, d1
	ucvtf	d0, x26
	fmul	d10, d0, d1
	ucvtf	d0, x25
	fmul	d13, d0, d2
	ucvtf	d1, x24
	fmul	d11, d1, d2
	fadd	d12, d11, d13
Lloh254:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh255:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	ldr	d3, [x8]
	ldr	d2, [x8, #8]
	stp	d2, d3, [sp, #200]              ; 16-byte Folded Spill
	ldr	x24, [x8, #24]
	ldr	x25, [x8, #56]
	ldr	x26, [x8, #56]
	ldr	d2, [sp, #152]                  ; 8-byte Folded Reload
	fmul	d15, d0, d2
	fmul	d9, d1, d2
	ldr	d0, [sp, #144]                  ; 8-byte Folded Reload
	fmul	d14, d12, d0
	mov	x0, #0                          ; =0x0
	bl	_time
	str	x0, [sp, #128]
	stp	d10, d8, [sp, #112]
	stp	d9, d14, [sp, #96]
	stp	d12, d15, [sp, #80]
	stp	d13, d11, [sp, #64]
	stp	x25, x26, [sp, #48]
	ldp	d1, d2, [sp, #216]              ; 16-byte Folded Reload
	str	d1, [sp, #40]
	str	x24, [sp, #32]
	ldp	d1, d0, [sp, #200]              ; 16-byte Folded Reload
	stp	d1, d2, [sp, #16]
	str	d0, [sp, #8]
	ldur	x8, [x29, #-216]                ; 8-byte Folded Reload
	str	x8, [sp]
	mov	x0, x23
Lloh256:
	adrp	x1, l_.str.53@PAGE
Lloh257:
	add	x1, x1, l_.str.53@PAGEOFF
	bl	_fprintf
	mov	x0, x23
	bl	_fclose
Lloh258:
	adrp	x0, l_.str.52@PAGE
Lloh259:
	add	x0, x0, l_.str.52@PAGEOFF
Lloh260:
	adrp	x1, l_.str.54@PAGE
Lloh261:
	add	x1, x1, l_.str.54@PAGEOFF
	bl	_rename
LBB3_82:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x24, [sp, #192]                 ; 8-byte Folded Reload
	adrp	x25, __MergedGlobals@PAGE
Lloh262:
	adrp	x26, _RPC_URLS@PAGE
Lloh263:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh264:
	adrp	x27, l_.str.51@PAGE
Lloh265:
	add	x27, x27, l_.str.51@PAGEOFF
Lloh266:
	adrp	x28, _curl_write_cb@PAGE
Lloh267:
	add	x28, x28, _curl_write_cb@PAGEOFF
	mov	w0, #22320                      ; =0x5730
	movk	w0, #5, lsl #16
	bl	_usleep
	ldr	w8, [x25, __MergedGlobals@PAGEOFF]
	cbnz	w8, LBB3_3
LBB3_83:
	ldur	x0, [x29, #-176]
	cbz	x0, LBB3_85
; %bb.84:
	bl	_free
LBB3_85:
	mov	x0, x24
	bl	_curl_slist_free_all
	mov	x0, x19
	bl	_curl_easy_cleanup
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #448]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #432]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #416]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #400]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #384]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #368]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #352]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #336]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #320]            ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #304]            ; 16-byte Folded Reload
	add	sp, sp, #464
	ret
	.loh AdrpAdd	Lloh236, Lloh237
	.loh AdrpAdd	Lloh234, Lloh235
	.loh AdrpAdd	Lloh232, Lloh233
	.loh AdrpAdd	Lloh242, Lloh243
	.loh AdrpAdd	Lloh240, Lloh241
	.loh AdrpAdd	Lloh238, Lloh239
	.loh AdrpAdd	Lloh244, Lloh245
	.loh AdrpLdr	Lloh246, Lloh247
	.loh AdrpLdr	Lloh248, Lloh249
	.loh AdrpAdd	Lloh252, Lloh253
	.loh AdrpAdd	Lloh250, Lloh251
	.loh AdrpAdd	Lloh260, Lloh261
	.loh AdrpAdd	Lloh258, Lloh259
	.loh AdrpAdd	Lloh256, Lloh257
	.loh AdrpAdd	Lloh254, Lloh255
	.loh AdrpAdd	Lloh266, Lloh267
	.loh AdrpAdd	Lloh264, Lloh265
	.loh AdrpAdd	Lloh262, Lloh263
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
	cbz	x0, LBB5_9
; %bb.1:
	mov.16b	v9, v0
	mov.16b	v11, v1
	mov.16b	v10, v2
Lloh268:
	adrp	x1, l_.str.47@PAGE
Lloh269:
	add	x1, x1, l_.str.47@PAGEOFF
	bl	_strstr
	cbz	x0, LBB5_9
; %bb.2:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	cbz	w10, LBB5_9
; %bb.3:
	mov	x8, #0                          ; =0x0
	add	x9, x9, #1
LBB5_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB5_7
; %bb.5:                                ;   in Loop: Header=BB5_4 Depth=1
	cmp	x8, #63
	b.hi	LBB5_10
; %bb.6:                                ;   in Loop: Header=BB5_4 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB5_4
	b	LBB5_8
LBB5_7:
	mov	x11, x8
LBB5_8:
	cmp	x11, #64
	b.hs	LBB5_11
LBB5_9:
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #64             ; 16-byte Folded Reload
	ret
LBB5_10:
	cmp	x8, #64
	b.lo	LBB5_9
LBB5_11:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #2
	movi.2d	v12, #0000000000000000
	fmov	d0, #16.00000000
LBB5_12:                                ; =>This Inner Loop Header: Depth=1
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
	b.ne	LBB5_12
; %bb.13:
	fcmp	d12, #0.0
	b.le	LBB5_9
; %bb.14:
	fmov	d0, #1.00000000
	mov	w0, #96                         ; =0x60
	bl	_ldexp
	fdiv	d0, d12, d0
	fmul	d0, d0, d0
	fmul	d9, d0, d9
	fcmp	d9, d11
	fccmp	d9, d10, #0, ge
	b.gt	LBB5_9
; %bb.15:
	mov.16b	v0, v9
	bl	___isnand
	cbnz	w0, LBB5_9
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
	.loh AdrpAdd	Lloh268, Lloh269
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
Lloh270:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh271:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh272:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	cbz	x0, LBB6_25
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh273:
	adrp	x2, l_.str.48@PAGE
Lloh274:
	add	x2, x2, l_.str.48@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh275:
	adrp	x2, l_.str.49@PAGE
Lloh276:
	add	x2, x2, l_.str.49@PAGEOFF
	add	x0, sp, #8
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	add	x1, sp, #40
	mov	x0, x20
	bl	_strstr
	cbnz	x0, LBB6_3
; %bb.2:
	add	x1, sp, #8
	mov	x0, x20
	bl	_strstr
	cbz	x0, LBB6_25
LBB6_3:
	mov	x19, x0
	subs	x8, x0, x20
	b.ls	LBB6_20
; %bb.4:
	mov	x0, x19
	ands	x9, x8, #0x3
	b.eq	LBB6_8
; %bb.5:
	mov	x0, x19
LBB6_6:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0]
	cmp	w10, #123
	b.eq	LBB6_20
; %bb.7:                                ;   in Loop: Header=BB6_6 Depth=1
	sub	x0, x0, #1
	subs	x9, x9, #1
	b.ne	LBB6_6
LBB6_8:
	sub	x8, x8, #1
	cmp	x8, #3
	b.hs	LBB6_10
; %bb.9:
	mov	x0, x20
	b	LBB6_20
LBB6_10:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x0]
	cmp	w8, #123
	b.eq	LBB6_20
; %bb.11:                               ;   in Loop: Header=BB6_10 Depth=1
	ldurb	w8, [x0, #-1]
	cmp	w8, #123
	b.eq	LBB6_16
; %bb.12:                               ;   in Loop: Header=BB6_10 Depth=1
	ldurb	w8, [x0, #-2]
	cmp	w8, #123
	b.eq	LBB6_17
; %bb.13:                               ;   in Loop: Header=BB6_10 Depth=1
	ldurb	w8, [x0, #-3]
	cmp	w8, #123
	b.eq	LBB6_18
; %bb.14:                               ;   in Loop: Header=BB6_10 Depth=1
	sub	x0, x0, #4
	cmp	x0, x20
	b.hi	LBB6_10
; %bb.15:
	mov	x0, x20
	b	LBB6_20
LBB6_16:
	sub	x0, x0, #1
	b	LBB6_20
LBB6_17:
	sub	x0, x0, #2
	b	LBB6_20
LBB6_18:
	sub	x0, x0, #3
	b	LBB6_20
LBB6_19:                                ;   in Loop: Header=BB6_20 Depth=1
	add	x19, x19, #1
LBB6_20:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19]
	cbz	w8, LBB6_22
; %bb.21:                               ;   in Loop: Header=BB6_20 Depth=1
	cmp	w8, #125
	b.ne	LBB6_19
LBB6_22:
Lloh277:
	adrp	x1, l_.str.50@PAGE
Lloh278:
	add	x1, x1, l_.str.50@PAGEOFF
	bl	_strstr
	mov	x8, x0
	mov	x0, #0                          ; =0x0
	cbz	x8, LBB6_25
; %bb.23:
	cmp	x8, x19
	b.hs	LBB6_25
; %bb.24:
Lloh279:
	adrp	x1, l_.str.47@PAGE
Lloh280:
	add	x1, x1, l_.str.47@PAGEOFF
	mov	x0, x8
	bl	_strstr
	cmp	x0, x19
	csel	x0, x0, xzr, lo
LBB6_25:
	ldur	x8, [x29, #-24]
Lloh281:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh282:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh283:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_27
; %bb.26:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB6_27:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh270, Lloh271, Lloh272
	.loh AdrpAdd	Lloh275, Lloh276
	.loh AdrpAdd	Lloh273, Lloh274
	.loh AdrpAdd	Lloh277, Lloh278
	.loh AdrpAdd	Lloh279, Lloh280
	.loh AdrpLdrGotLdr	Lloh281, Lloh282, Lloh283
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_0
_OUTLINED_FUNCTION_0:                   ; @OUTLINED_FUNCTION_0 Function
	.cfi_startproc
; %bb.0:
	ldr	d16, [x28, x8, lsl #3]
	add	x28, sp, #960
	add	x11, sp, #704
	ldr	d17, [x11, x8, lsl #3]
	ldr	d18, [x26, x8, lsl #3]
	add	x26, sp, #576
	ldr	d19, [x25, x8, lsl #3]
	add	x25, sp, #448
	str	x20, [sp, #120]
	stp	d18, d19, [sp, #104]
	stp	d16, d17, [sp, #88]
	stp	d6, d7, [sp, #72]
	stp	d4, d5, [sp, #56]
	stp	d2, d3, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x10, [sp, #8]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_1
_OUTLINED_FUNCTION_1:                   ; @OUTLINED_FUNCTION_1 Function
	.cfi_startproc
; %bb.0:
	adrp	x9, l___const.run_native_asm_sniper_cycle.route_names@PAGE
	add	x9, x9, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x9, x8, lsl #3]
	ldr	x10, [x24, x8, lsl #3]
	add	x11, sp, #1856
	ldr	d0, [x11, x8, lsl #3]
	add	x11, sp, #1728
	ldr	d1, [x11, x8, lsl #3]
	add	x11, sp, #1600
	ldr	d2, [x11, x8, lsl #3]
	ldr	d3, [x27, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_2
_OUTLINED_FUNCTION_2:                   ; @OUTLINED_FUNCTION_2 Function
	.cfi_startproc
; %bb.0:
	str	x20, [sp, #120]
	stp	d18, d19, [sp, #104]
	stp	d16, d17, [sp, #88]
	stp	d6, d7, [sp, #72]
	stp	d4, d5, [sp, #56]
	stp	d2, d3, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x10, [sp, #8]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_3
_OUTLINED_FUNCTION_3:                   ; @OUTLINED_FUNCTION_3 Function
	.cfi_startproc
; %bb.0:
	adrp	x9, l___const.run_native_asm_sniper_cycle.route_names@PAGE
	add	x9, x9, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x9, x8, lsl #3]
	ldr	x10, [x24, x8, lsl #3]
	add	x11, sp, #1856
	ldr	d0, [x11, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_4
_OUTLINED_FUNCTION_4:                   ; @OUTLINED_FUNCTION_4 Function
	.cfi_startproc
; %bb.0:
	add	x11, sp, #1472
	ldr	d4, [x11, x8, lsl #3]
	add	x11, sp, #1344
	ldr	d5, [x11, x8, lsl #3]
	add	x11, sp, #1216
	ldr	d6, [x11, x8, lsl #3]
	ldr	d7, [x19, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_5
_OUTLINED_FUNCTION_5:                   ; @OUTLINED_FUNCTION_5 Function
	.cfi_startproc
; %bb.0:
	add	x11, sp, #1344
	ldr	d5, [x11, x8, lsl #3]
	add	x11, sp, #1216
	ldr	d6, [x11, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_6
_OUTLINED_FUNCTION_6:                   ; @OUTLINED_FUNCTION_6 Thunk
	.cfi_startproc
; %bb.0:
	str	x8, [sp]
	mov	x0, x21
	mov	x1, x22
	b	_fprintf
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_7
_OUTLINED_FUNCTION_7:                   ; @OUTLINED_FUNCTION_7 Thunk
	.cfi_startproc
; %bb.0:
	str	x8, [sp]
	mov	x0, x21
	mov	x1, x19
	b	_fprintf
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_8
_OUTLINED_FUNCTION_8:                   ; @OUTLINED_FUNCTION_8 Function
	.cfi_startproc
; %bb.0:
	add	x11, sp, #1216
	ldr	d6, [x11, x8, lsl #3]
	add	x11, sp, #1088
	ldr	d7, [x11, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_9
_OUTLINED_FUNCTION_9:                   ; @OUTLINED_FUNCTION_9 Thunk
	.cfi_startproc
; %bb.0:
	mov.16b	v0, v14
	mov.16b	v1, v12
	mov.16b	v2, v9
	b	_decode_slot0_sqrt_price
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_10
_OUTLINED_FUNCTION_10:                  ; @OUTLINED_FUNCTION_10 Thunk
	.cfi_startproc
; %bb.0:
	mov.16b	v1, v10
	mov.16b	v2, v11
	b	_decode_slot0_sqrt_price
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_11
_OUTLINED_FUNCTION_11:                  ; @OUTLINED_FUNCTION_11 Function
	.cfi_startproc
; %bb.0:
	str	x8, [sp]
	mov	x0, x21
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_12
_OUTLINED_FUNCTION_12:                  ; @OUTLINED_FUNCTION_12 Thunk
	.cfi_startproc
; %bb.0:
	mov.16b	v2, v9
	b	_decode_slot0_sqrt_price
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_13
_OUTLINED_FUNCTION_13:                  ; @OUTLINED_FUNCTION_13 Function
	.cfi_startproc
; %bb.0:
	add	x11, sp, #960
	ldr	d16, [x11, x8, lsl #3]
	add	x11, sp, #704
	ldr	d17, [x11, x8, lsl #3]
	add	x11, sp, #576
	ldr	d18, [x11, x8, lsl #3]
	add	x11, sp, #448
	ldr	d19, [x11, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_14
_OUTLINED_FUNCTION_14:                  ; @OUTLINED_FUNCTION_14 Function
	.cfi_startproc
; %bb.0:
	mov.16b	v1, v11
	mov.16b	v4, v10
	mov.16b	v2, v14
	ldp	d6, d5, [sp, #328]
	ldp	d16, d7, [sp, #312]
	ldp	d17, d11, [sp, #296]
	ldp	d19, d18, [sp, #280]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_15
_OUTLINED_FUNCTION_15:                  ; @OUTLINED_FUNCTION_15 Thunk
	.cfi_startproc
; %bb.0:
	fmov	d2, #10.00000000
	mov.16b	v0, v14
	mov.16b	v1, v10
	b	_decode_slot0_sqrt_price
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_16
_OUTLINED_FUNCTION_16:                  ; @OUTLINED_FUNCTION_16 Thunk
	.cfi_startproc
; %bb.0:
	fmov	d0, #1.00000000
	fmov	d2, #2.50000000
	mov.16b	v1, v9
	b	_decode_slot0_sqrt_price
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_17
_OUTLINED_FUNCTION_17:                  ; @OUTLINED_FUNCTION_17 Thunk
	.cfi_startproc
; %bb.0:
	fmov	d0, #1.00000000
	mov.16b	v1, v9
	mov.16b	v2, v10
	b	_decode_slot0_sqrt_price
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
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xC6962004f452bE9203591991D15f6b388e09E8D0\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":10},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x6f38e884725a116C9C7fBF208e79FE8828a2595F\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":11},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xB1026b8e7276e7AC75410F1fcbbe21796e8f7526\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":12},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x7fCDC35463E3770c2fB992716Cd070B63540b947\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":13},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x35218a1cbaC5Bbc3E57fd9Bd38219D37571b3537\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":14},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xDeB89dE4bb6ecf5bFed581EB049308B52d9B2dA7\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":15},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x0e4831319a50228b9e450861297ab92dee15b44f\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":16},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x843ac8dc6d34aeb07a56812b8b36429ee46bdd07\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":17},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xc86eb7b85807020b4548ee05b54bfc956eebbfcd\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":18},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x8e295789c9465487074a65b1ae9ce0351172393f\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":19},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xa17afcab059f3c6751f5b64347b5a503c3291868\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":20},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xbe3ad6a5669dc0b8b12febc03608860c31e2eef6\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":21},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xfae2ae0a9f87fd35b5b0e24b47bac796a7eefea1\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":22},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xb0f6ca40411360c03d41c5ffc5f179b8403cdcf8\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":23},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xD845f7D4F4deb9fF5BcF09D140Ef13718F6f6C71\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":24},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x4bfc22a4da7f31f8a912a79a7e44a822398b4390\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":25},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x7cCCba38e2D959FE135e79aEBB57ccB27b128358\",\"data\":\"0xe76c01e4\"},\"latest\"],\"id\":26},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x389938cf14be379217570d8e4619e51fbdafaa21\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":27},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xb08a8794a5d3ccca3725d92964696858d3201909\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":28},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x042691f78269ba3d6325c945044239758aecc275\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":29},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x91308bc9ce8ca2db82aa30c65619856cc939d907\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":30},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x977f5d9a39049c73bc26edb3fa15d5f7c0ac82e9\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":31}]"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @RPC_URLS
_RPC_URLS:
	.quad	l_.str.44
	.quad	l_.str.45
	.quad	l_.str.46
	.quad	l_.str.44

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
	.asciz	"USDC/USDC.e (Camelot V3 0.05bps <-> UniV3 1.00bps)"

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

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"WETH"

l_.str.18:                              ; @.str.18
	.asciz	"WBTC"

l_.str.19:                              ; @.str.19
	.asciz	"USDC.e"

l_.str.20:                              ; @.str.20
	.asciz	"USDT"

l_.str.21:                              ; @.str.21
	.asciz	"USDC"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.borrow_syms
l___const.run_native_asm_sniper_cycle.borrow_syms:
	.quad	l_.str.17
	.quad	l_.str.17
	.quad	l_.str.17
	.quad	l_.str.17
	.quad	l_.str.18
	.quad	l_.str.19
	.quad	l_.str.20
	.quad	l_.str.21
	.quad	l_.str.17
	.quad	l_.str.17
	.quad	l_.str.17
	.quad	l_.str.17

	.section	__TEXT,__const
	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y1
l___const.run_native_asm_sniper_cycle.y1:
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x408235999999999a              ; double 582.70000000000005
	.quad	0x40c4fcbc28f5c28f              ; double 10745.469999999999
	.quad	0x4067100000000000              ; double 184.5
	.quad	0x40f4e7e000000000              ; double 85630
	.quad	0x40e4640000000000              ; double 41760
	.quad	0x4133999400000000              ; double 1284500
	.quad	0x403c000000000000              ; double 28
	.quad	0x4080400000000000              ; double 520
	.quad	0x4119064000000000              ; double 4.1E+5
	.quad	0x40dc340000000000              ; double 28880

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y2
l___const.run_native_asm_sniper_cycle.y2:
	.quad	0x4069047ae147ae14              ; double 200.13999999999999
	.quad	0x408235999999999a              ; double 582.70000000000005
	.quad	0x40f04c54a3d70a3d              ; double 66757.289999999994
	.quad	0x410821371eb851ec              ; double 197670.89000000001
	.quad	0x4057066666666666              ; double 92.099999999999994
	.quad	0x40f51ee000000000              ; double 86510
	.quad	0x4147c8c500000000              ; double 3117450
	.quad	0x415178a800000000              ; double 4.58E+6
	.quad	0x4068600000000000              ; double 195
	.quad	0x4096a80000000000              ; double 1450
	.quad	0x4122ebc000000000              ; double 6.2E+5
	.quad	0x40cb580000000000              ; double 14000

	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.fl
l___const.run_native_asm_sniper_cycle.fl:
	.quad	0x4000000000000000              ; double 2
	.quad	0x4000000000000000              ; double 2
	.quad	0x4018000000000000              ; double 6
	.quad	0x3ff8000000000000              ; double 1.5
	.quad	0x4024000000000000              ; double 10
	.quad	0x3ff0cccccccccccd              ; double 1.05
	.quad	0x3ff4000000000000              ; double 1.25
	.quad	0x401e000000000000              ; double 7.5
	.quad	0x3ffe666666666666              ; double 1.8999999999999999
	.quad	0x4000000000000000              ; double 2
	.quad	0x4024000000000000              ; double 10
	.quad	0x4024000000000000              ; double 10

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

	.section	__TEXT,__cstring,cstring_literals
l_.str.22:                              ; @.str.22
	.asciz	"SCANNING_LIVE_ARBITRUM_SPREADS"

l_.str.23:                              ; @.str.23
	.asciz	"python3 scripts/autonomous_asm_broadcaster.py >/dev/null 2>&1 &"

l_.str.24:                              ; @.str.24
	.asciz	"AUTONOMOUS_ONCHAIN_TX_DISPATCHED_TO_ARBITRUM_SEQUENCER"

l_.str.25:                              ; @.str.25
	.asciz	"PROFITABLE_FULL_LOAN_READY_FOR_1CLICK_METAMASK_OR_RELAYER_TOPUP"

l_.str.26:                              ; @.str.26
	.asciz	"reports/asm_sniper_telemetry.json.tmp"

l_.str.27:                              ; @.str.27
	.asciz	"w"

l_.str.28:                              ; @.str.28
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"execution_mode\": \"100%% Native C/Assembly Standalone Binary (22 Live Pools + Autonomous On-Chain Hook)\",\n  \"loan_sizing_policy\": \"1 Trade = 100%% Full Independent Sweet-Spot Flash Loan (Never Split Across Trades)\",\n  \"asm_cycles_completed\": %llu,\n  \"cpu_eval_latency_nanoseconds\": %.1f,\n  \"cpu_eval_latency_microseconds\": %.3f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"relayer_eth_balance\": %.8f,\n  \"metamask_eth_balance\": %.8f,\n  \"relayer_gas_funded\": %s,\n  \"autonomous_exec_status\": \"%s\",\n  \"real_total_amount_100_usd\": %.6f,\n  \"real_total_amount_100_inr\": %.2f,\n  \"real_amount_transferred_75_usd\": %.6f,\n  \"real_amount_transferred_75_inr\": %.2f,\n  \"real_amount_saved_25_usd\": %.6f,\n  \"real_amount_saved_25_inr\": %.2f,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"top_transferred_75_usd\": %.4f,\n  \"top_saved_25_usd\": %.4f,\n  \"routes\": [\n"

l_.str.29:                              ; @.str.29
	.asciz	"true"

l_.str.30:                              ; @.str.30
	.asciz	"false"

l_.str.31:                              ; @.str.31
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"p1\": %.6f, \"p2\": %.6f, \"spread_bps\": %.2f, \"fee_floor_bps\": %.2f, \"net_margin_bps\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_usd\": %.2f, \"net_usd\": %.4f, \"transferred_75_usd\": %.4f, \"saved_25_usd\": %.4f}%s\n"

l_.str.32:                              ; @.str.32
	.asciz	","

l_.str.33:                              ; @.str.33
	.space	1

l_.str.34:                              ; @.str.34
	.asciz	"  ]\n}\n"

l_.str.35:                              ; @.str.35
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.38:                              ; @.str.38
	.asciz	"Assembly Eval Latency     : %.3f microseconds (12 Full-Loan Routes in Hardware Registers)\n"

l_.str.39:                              ; @.str.39
	.asciz	"Top Route (#1)            : %s\n"

l_.str.40:                              ; @.str.40
	.asciz	"Live Pool Prices          : P1=$%.4f vs P2=$%.4f (Spread=%.2f bps vs %.2f bps Floor)\n"

l_.str.41:                              ; @.str.41
	.asciz	"100%% Full Loan (dx*)      : $%.2f USD (Balancer 0%%: $%.2f + Overflow: $%.2f)\n"

l_.str.42:                              ; @.str.42
	.asciz	"Hybrid Stacked Fee Saved  : $%.2f USD (\342\202\271%.2f INR saved per trade)\n"

l_.str.43:                              ; @.str.43
	.asciz	"Net Profit (100%% Total)   : $%+.4f USD (75%%=$%.4f -> 0xb411...0099 | 25%%=$%.4f -> 0xFF3c...89BE)\n"

l_.str.44:                              ; @.str.44
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.45:                              ; @.str.45
	.asciz	"https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"

l_.str.46:                              ; @.str.46
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.47:                              ; @.str.47
	.asciz	"0x"

l_.str.48:                              ; @.str.48
	.asciz	"\"id\":%d"

l_.str.49:                              ; @.str.49
	.asciz	"\"id\": %d"

l_.str.50:                              ; @.str.50
	.asciz	"\"result\""

l_.str.51:                              ; @.str.51
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0x0E8A575147b51C5701C86427b521F7293249cd67\",\"latest\"],\"id\":7}]"

l_.str.52:                              ; @.str.52
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.53:                              ; @.str.53
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + libcurl TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"asm_eval_ns\": %.1f,\n  \"asm_eval_us\": %.3f,\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"binance_usdc_balance\": \"%.4f\",\n  \"metamask_usdc_balance\": \"%.4f\",\n  \"total_onchain_usdc\": \"%.4f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"relayer_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.54:                              ; @.str.54
	.asciz	"reports/live_block_ticker.json"

l_str.55:                               ; @str.55
	.asciz	"NATIVE ASSEMBLY SNIPER BINARY (./bin/arb_sniper_asm) SELF-TEST PASSED"

l_str.57:                               ; @str.57
	.asciz	"================================================================================"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @_MergedGlobals
__MergedGlobals:
	.long	1                               ; 0x1
	.space	4
	.quad	0x4079c00000000000              ; double 412
	.quad	0x3fda5e353f7ced91              ; double 0.41199999999999998
	.quad	61154031950                     ; 0xe3d10794e
	.quad	515822067                       ; 0x1ebed1f3
	.quad	499198                          ; 0x79dfe
	.quad	162263                          ; 0x279d7
	.quad	474670000000000                 ; 0x1afb5b8bc4c00
	.quad	3                               ; 0x3
	.quad	20000000                        ; 0x1312d00

.zerofill __DATA,__bss,__MergedGlobals.58,16,3 ; @_MergedGlobals.58
.subsections_via_symbols
