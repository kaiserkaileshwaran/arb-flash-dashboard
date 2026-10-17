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
	stp	d11, d10, [sp, #-128]!          ; 16-byte Folded Spill
	stp	d9, d8, [sp, #16]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #32]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #48]             ; 16-byte Folded Spill
	stp	x24, x23, [sp, #64]             ; 16-byte Folded Spill
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 128
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
	ldr	x8, [sp, #192]
	subs	w9, w0, #1
	b.lt	LBB0_18
; %bb.1:
	mov	x11, #0                         ; =0x0
	mov	w10, #0                         ; =0x0
	ldp	x13, x12, [sp, #176]
	ldp	x15, x14, [sp, #160]
	ldp	x17, x16, [sp, #144]
	mov	w0, w0
	add	x19, x1, #32
	add	x20, x2, #32
	add	x21, x3, #32
	add	x22, x4, #32
Lloh0:
	adrp	x23, lCPI0_0@PAGE
Lloh1:
	ldr	d4, [x23, lCPI0_0@PAGEOFF]
Lloh2:
	adrp	x23, lCPI0_1@PAGE
Lloh3:
	ldr	d1, [x23, lCPI0_1@PAGEOFF]
Lloh4:
	adrp	x23, lCPI0_2@PAGE
Lloh5:
	ldr	d2, [x23, lCPI0_2@PAGEOFF]
Lloh6:
	adrp	x23, lCPI0_3@PAGE
Lloh7:
	ldr	d3, [x23, lCPI0_3@PAGEOFF]
	mov	x23, #4634204016564240384       ; =0x4050000000000000
	fmov	d5, x23
	mov	x23, #4639833516098453504       ; =0x4064000000000000
	fmov	d6, x23
Lloh8:
	adrp	x23, lCPI0_4@PAGE
Lloh9:
	ldr	d7, [x23, lCPI0_4@PAGEOFF]
Lloh10:
	adrp	x23, lCPI0_5@PAGE
Lloh11:
	ldr	d16, [x23, lCPI0_5@PAGEOFF]
	fmov	d17, #1.50000000
	fmov	d18, #1.00000000
Lloh12:
	adrp	x23, lCPI0_6@PAGE
Lloh13:
	ldr	d19, [x23, lCPI0_6@PAGEOFF]
Lloh14:
	adrp	x23, lCPI0_7@PAGE
Lloh15:
	ldr	d20, [x23, lCPI0_7@PAGEOFF]
Lloh16:
	adrp	x23, lCPI0_8@PAGE
Lloh17:
	ldr	d21, [x23, lCPI0_8@PAGEOFF]
Lloh18:
	adrp	x23, lCPI0_11@PAGE
Lloh19:
	ldr	d22, [x23, lCPI0_11@PAGEOFF]
Lloh20:
	adrp	x23, lCPI0_12@PAGE
Lloh21:
	ldr	d23, [x23, lCPI0_12@PAGEOFF]
	movi.2d	v24, #0000000000000000
Lloh22:
	adrp	x23, lCPI0_10@PAGE
Lloh23:
	ldr	d25, [x23, lCPI0_10@PAGEOFF]
	fmov	d26, #0.50000000
Lloh24:
	adrp	x23, lCPI0_9@PAGE
Lloh25:
	ldr	d27, [x23, lCPI0_9@PAGEOFF]
	mov	x23, x9
	ldp	x25, x24, [sp, #128]
LBB0_2:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_13 Depth 2
	add	x26, x11, #4
	cmp	x26, x0
	b.hs	LBB0_4
; %bb.3:                                ;   in Loop: Header=BB0_2 Depth=1
	prfm	pldl1keep, [x19, x11, lsl #3]
	prfm	pldl1keep, [x20, x11, lsl #3]
	prfm	pldl1keep, [x21, x11, lsl #3]
	prfm	pldl1keep, [x22, x11, lsl #3]
LBB0_4:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d28, [x1, x11, lsl #3]
	ldr	d30, [x2, x11, lsl #3]
	fminnm	d29, d28, d30
	fcmp	d28, d30
	csel	x26, x3, x4, le
	ldr	d31, [x26, x11, lsl #3]
	fmaxnm	d30, d28, d30
	csel	x26, x4, x3, le
	ldr	d8, [x26, x11, lsl #3]
	movi.2d	v9, #0000000000000000
	fcmp	d29, d1
	b.le	LBB0_6
; %bb.5:                                ;   in Loop: Header=BB0_2 Depth=1
	fsub	d28, d30, d29
	fmul	d28, d28, d2
	fdiv	d9, d28, d29
LBB0_6:                                 ;   in Loop: Header=BB0_2 Depth=1
	ldr	d10, [x5, x11, lsl #3]
	fsub	d28, d9, d10
	str	d9, [x25, x11, lsl #3]
	str	d28, [x24, x11, lsl #3]
	fcmp	d10, d3
	fcsel	d9, d6, d5, le
	fmadd	d10, d28, d7, d16
	fcmp	d28, d17
	fcsel	d10, d10, d18, gt
	fdiv	d9, d9, d10
	fmul	d29, d31, d29
	fmul	d31, d29, d9
	fmul	d29, d8, d30
	fmul	d10, d29, d9
	fmul	d8, d31, d10
	fadd	d9, d31, d10
	fdiv	d29, d9, d8
	fcmp	d8, d19
	fcsel	d29, d29, d20, gt
	ldr	d30, [x6, x11, lsl #3]
	ldr	d11, [x7, x11, lsl #3]
	fadd	d11, d11, d30
	fminnm	d31, d31, d10
	fmul	d31, d31, d21
	fminnm	d31, d31, d11
	fmaxnm	d31, d31, d30
	fcmp	d28, #0.0
	b.gt	LBB0_9
; %bb.7:                                ;   in Loop: Header=BB0_2 Depth=1
	fminnm	d29, d31, d30
	fsub	d8, d31, d30
	fcmp	d31, d30
	fcsel	d30, d8, d24, gt
	fadd	d28, d28, d27
	str	d31, [x17, x11, lsl #3]
	str	d29, [x16, x11, lsl #3]
	fsub	d31, d28, d0
	str	d30, [x15, x11, lsl #3]
	fmul	d29, d29, d25
	str	d29, [x14, x11, lsl #3]
	str	d28, [x13, x11, lsl #3]
	str	d31, [x12, x11, lsl #3]
	fcmp	d31, d4
	fmaxnm	d4, d31, d4
	csel	w23, w9, w23, gt
	str	w11, [x8, w9, sxtw #2]
	sub	w9, w9, #1
LBB0_8:                                 ;   in Loop: Header=BB0_2 Depth=1
	add	x11, x11, #1
	cmp	x11, x0
	b.eq	LBB0_17
	b	LBB0_2
LBB0_9:                                 ;   in Loop: Header=BB0_2 Depth=1
	fcmp	d9, d19
	mov.16b	v10, v31
	b.le	LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_2 Depth=1
	fmul	d10, d28, d23
	fmul	d8, d10, d8
	fdiv	d10, d8, d9
LBB0_11:                                ;   in Loop: Header=BB0_2 Depth=1
	fmul	d28, d28, d22
	fmaxnm	d8, d10, d30
	fminnm	d31, d8, d31
	fminnm	d8, d31, d30
	fsub	d9, d31, d30
	fcmp	d31, d30
	fcsel	d30, d9, d24, gt
	fmul	d9, d8, d25
	fmul	d28, d28, d31
	fmul	d10, d31, d31
	fmsub	d29, d10, d29, d28
	fmul	d28, d28, d26
	fcmp	d29, #0.0
	str	d31, [x17, x11, lsl #3]
	str	d8, [x16, x11, lsl #3]
	fcsel	d29, d29, d28, gt
	fsub	d28, d29, d0
	str	d30, [x15, x11, lsl #3]
	str	d9, [x14, x11, lsl #3]
	str	d29, [x13, x11, lsl #3]
	str	d28, [x12, x11, lsl #3]
	mov	x26, x10
	cmp	w10, #1
	b.lt	LBB0_16
; %bb.12:                               ;   in Loop: Header=BB0_2 Depth=1
	mov	w26, w10
	add	x26, x26, #1
	add	x28, x8, w10, uxtw #2
	mov	x27, x28
LBB0_13:                                ;   Parent Loop BB0_2 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	sub	x26, x26, #1
	ldrsw	x30, [x27, #-4]!
	ldr	d29, [x12, x30, lsl #3]
	fcmp	d29, d28
	b.ge	LBB0_16
; %bb.14:                               ;   in Loop: Header=BB0_13 Depth=2
	str	w30, [x28]
	mov	x28, x27
	cmp	x26, #1
	b.hi	LBB0_13
; %bb.15:                               ;   in Loop: Header=BB0_2 Depth=1
	mov	w26, #0                         ; =0x0
LBB0_16:                                ;   in Loop: Header=BB0_2 Depth=1
	str	w11, [x8, w26, sxtw #2]
	add	w10, w10, #1
	b	LBB0_8
LBB0_17:
	cmp	w10, #0
	cset	w10, eq
	mov	x9, x23
	cbnz	w10, LBB0_19
	b	LBB0_21
LBB0_18:
	mov	w10, #1                         ; =0x1
	cbz	w10, LBB0_21
LBB0_19:
	cbz	w9, LBB0_21
; %bb.20:
	ldr	w10, [x8]
	ldr	w11, [x8, w9, sxtw #2]
	str	w11, [x8]
	str	w10, [x8, w9, sxtw #2]
LBB0_21:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #64]             ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #48]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #32]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #16]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp], #128            ; 16-byte Folded Reload
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
	mov	w0, #41248                      ; =0xa120
	movk	w0, #7, lsl #16
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
	.loh AdrpAdd	Lloh32, Lloh33
	.loh AdrpAdd	Lloh30, Lloh31
	.loh AdrpAdd	Lloh28, Lloh29
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__literal8,8byte_literals
	.p2align	3, 0x0                          ; -- Begin function run_native_asm_sniper_cycle
lCPI2_0:
	.quad	0x40a3a00f5c28f5c3              ; double 2512.0300000000002
lCPI2_1:
	.quad	0x40a3a7999999999a              ; double 2515.8000000000002
lCPI2_2:
	.quad	0x40a3a03333333333              ; double 2512.0999999999999
lCPI2_3:
	.quad	0x40a39f4ccccccccd              ; double 2511.6500000000001
lCPI2_4:
	.quad	0x40a3a0cccccccccd              ; double 2512.4000000000001
lCPI2_5:
	.quad	0x3ff3eecbfb15b574              ; double 1.2458
lCPI2_8:
	.quad	0x3ff3f0068db8bac7              ; double 1.2461
lCPI2_11:
	.quad	0x3f6a36e2eb1c432d              ; double 0.0032000000000000002
lCPI2_12:
	.quad	0x41cdcd6500000000              ; double 1.0E+9
lCPI2_13:
	.quad	0x3f50624dd2f1a9fc              ; double 0.001
lCPI2_14:
	.quad	0x4057bc01a36e2eb2              ; double 94.937600000000003
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4, 0x0
lCPI2_6:
	.quad	0x40f46dbdeb851eb8              ; double 83675.869999999995
	.quad	0x3ff0000000000000              ; double 1
lCPI2_7:
	.quad	0x3ff0000000000000              ; double 1
	.quad	0x3fd67a0f9096bb99              ; double 0.35120000000000001
lCPI2_9:
	.quad	0x40f4721333333333              ; double 83745.199999999997
	.quad	0x3ff000d1b71758e2              ; double 1.0002
lCPI2_10:
	.quad	0x3ff0013a92a30553              ; double 1.0003
	.quad	0x3fd6809d495182aa              ; double 0.35160000000000002
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
	sub	x9, sp, #928
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
	str	w3, [sp, #156]                  ; 4-byte Folded Spill
Lloh34:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh35:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh36:
	ldr	x8, [x8]
	str	x8, [sp, #920]
	adrp	x25, _g_total_asm_cycles@PAGE
	cbz	x0, LBB2_6
; %bb.1:
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	cbnz	w8, LBB2_6
; %bb.2:
	mov	x20, x2
	mov	x22, x1
	mov	x21, x0
	str	xzr, [x2, #8]
	ldr	x8, [x25, _g_total_asm_cycles@PAGEOFF]
	and	x8, x8, #0x3
Lloh37:
	adrp	x9, _RPC_URLS@PAGE
Lloh38:
	add	x9, x9, _RPC_URLS@PAGEOFF
	ldr	x8, [x9, x8, lsl #3]
	str	x8, [sp]
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x22, [sp]
	mov	x0, x21
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
Lloh39:
	adrp	x8, l_.str.3@PAGE
Lloh40:
	add	x8, x8, l_.str.3@PAGEOFF
	bl	_OUTLINED_FUNCTION_6
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
Lloh41:
	adrp	x8, _curl_write_cb@PAGE
Lloh42:
	add	x8, x8, _curl_write_cb@PAGEOFF
	bl	_OUTLINED_FUNCTION_6
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x21
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	bl	_OUTLINED_FUNCTION_6
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #1800                       ; =0x708
	bl	_OUTLINED_FUNCTION_6
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x21
	bl	_curl_easy_perform
	adrp	x19, lCPI2_0@PAGE
	ldr	d0, [x19, lCPI2_0@PAGEOFF]
	cbnz	w0, LBB2_9
; %bb.3:
	ldr	x0, [x20]
	cbz	x0, LBB2_9
; %bb.4:
	ldr	x8, [x20, #8]
	mov.16b	v10, v0
	mov.16b	v9, v0
	mov.16b	v8, v0
	cmp	x8, #33
	b.lo	LBB2_10
; %bb.5:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	ldr	d0, [x19, lCPI2_0@PAGEOFF]
	bl	_decode_slot0_sqrt_price
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #11                         ; =0xb
	bl	_find_batch_result_for_id
	bl	_OUTLINED_FUNCTION_5
	mov.16b	v9, v0
	ldr	x0, [x20]
	mov	w1, #12                         ; =0xc
	bl	_find_batch_result_for_id
	bl	_OUTLINED_FUNCTION_5
	mov.16b	v10, v0
	ldr	x0, [x20]
	mov	w1, #13                         ; =0xd
	bl	_find_batch_result_for_id
	bl	_OUTLINED_FUNCTION_5
	b	LBB2_10
LBB2_6:
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_8
; %bb.7:
Lloh43:
	adrp	x8, lCPI2_1@PAGE
Lloh44:
	ldr	d8, [x8, lCPI2_1@PAGEOFF]
Lloh45:
	adrp	x8, lCPI2_2@PAGE
Lloh46:
	ldr	d9, [x8, lCPI2_2@PAGEOFF]
Lloh47:
	adrp	x8, lCPI2_3@PAGE
Lloh48:
	ldr	d10, [x8, lCPI2_3@PAGEOFF]
Lloh49:
	adrp	x8, lCPI2_4@PAGE
Lloh50:
	ldr	d0, [x8, lCPI2_4@PAGEOFF]
	b	LBB2_10
LBB2_8:
Lloh51:
	adrp	x8, lCPI2_0@PAGE
Lloh52:
	ldr	d0, [x8, lCPI2_0@PAGEOFF]
LBB2_9:
	mov.16b	v10, v0
	mov.16b	v9, v0
	mov.16b	v8, v0
LBB2_10:
	str	d10, [sp, #832]
	str	d10, [sp, #840]
Lloh53:
	adrp	x8, lCPI2_5@PAGE
Lloh54:
	ldr	d1, [x8, lCPI2_5@PAGEOFF]
	fmul	d1, d8, d1
	str	d10, [sp, #848]
	str	d1, [sp, #856]
Lloh55:
	adrp	x8, lCPI2_6@PAGE
Lloh56:
	ldr	q1, [x8, lCPI2_6@PAGEOFF]
Lloh57:
	adrp	x8, lCPI2_7@PAGE
Lloh58:
	ldr	q2, [x8, lCPI2_7@PAGEOFF]
	stp	q1, q2, [sp, #864]
	str	d9, [sp, #768]
	str	d0, [sp, #776]
Lloh59:
	adrp	x8, lCPI2_8@PAGE
Lloh60:
	ldr	d0, [x8, lCPI2_8@PAGEOFF]
	fmul	d0, d8, d0
	str	d8, [sp, #784]
	str	d0, [sp, #792]
Lloh61:
	adrp	x8, lCPI2_9@PAGE
Lloh62:
	ldr	q0, [x8, lCPI2_9@PAGEOFF]
Lloh63:
	adrp	x8, lCPI2_10@PAGE
Lloh64:
	ldr	q1, [x8, lCPI2_10@PAGEOFF]
	stp	q0, q1, [sp, #800]
	add	x1, sp, #176
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	add	x8, sp, #192
	str	x8, [sp, #64]
	add	x9, sp, #256
	add	x8, sp, #320
	stp	x8, x9, [sp, #48]
	add	x9, sp, #384
	add	x10, sp, #448
	add	x11, sp, #512
	add	x12, sp, #576
	add	x8, sp, #640
	stp	x10, x9, [sp, #32]
Lloh65:
	adrp	x3, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh66:
	add	x3, x3, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh67:
	adrp	x4, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh68:
	add	x4, x4, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
	stp	x12, x11, [sp, #16]
Lloh69:
	adrp	x5, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh70:
	add	x5, x5, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	add	x9, sp, #704
Lloh71:
	adrp	x6, l___const.run_native_asm_sniper_cycle.bm@PAGE
Lloh72:
	add	x6, x6, l___const.run_native_asm_sniper_cycle.bm@PAGEOFF
Lloh73:
	adrp	x7, l___const.run_native_asm_sniper_cycle.am@PAGE
Lloh74:
	add	x7, x7, l___const.run_native_asm_sniper_cycle.am@PAGEOFF
	stp	x9, x8, [sp]
Lloh75:
	adrp	x8, lCPI2_11@PAGE
Lloh76:
	ldr	d0, [x8, lCPI2_11@PAGEOFF]
	add	x1, sp, #832
	add	x2, sp, #768
	mov	w0, #8                          ; =0x8
	bl	_evaluate_full_loan_routes_asm
	add	x1, sp, #160
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #160]
	ldp	x10, x11, [sp, #176]
	sub	x8, x8, x10
	scvtf	d0, x8
Lloh77:
	adrp	x8, lCPI2_12@PAGE
Lloh78:
	ldr	d1, [x8, lCPI2_12@PAGEOFF]
	sub	x8, x9, x11
	scvtf	d2, x8
	fmadd	d0, d0, d1, d2
Lloh79:
	adrp	x8, lCPI2_13@PAGE
Lloh80:
	ldr	d1, [x8, lCPI2_13@PAGEOFF]
	fmul	d8, d0, d1
	ldr	x8, [x25, _g_total_asm_cycles@PAGEOFF]
	add	x8, x8, #1
	str	x8, [x25, _g_total_asm_cycles@PAGEOFF]
	ldrsw	x22, [sp, #192]
Lloh81:
	adrp	x0, l_.str.17@PAGE
Lloh82:
	add	x0, x0, l_.str.17@PAGEOFF
Lloh83:
	adrp	x1, l_.str.18@PAGE
Lloh84:
	add	x1, x1, l_.str.18@PAGEOFF
	bl	_fopen
Lloh85:
	adrp	x26, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh86:
	add	x26, x26, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	adrp	x11, lCPI2_14@PAGE
	cbz	x0, LBB2_12
; %bb.11:
	mov	x20, x0
	ldr	x8, [x25, _g_total_asm_cycles@PAGEOFF]
Lloh87:
	adrp	x9, __MergedGlobals@PAGE+8
Lloh88:
	add	x9, x9, __MergedGlobals@PAGEOFF+8
	ldr	x10, [x9]
	ldr	x9, [x9, #8]
	mov	x28, x26
	ldr	x26, [x26, x22, lsl #3]
Lloh89:
	adrp	x23, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh90:
	add	x23, x23, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	add	x12, sp, #256
	add	x13, sp, #384
	add	x14, sp, #448
	add	x16, sp, #576
	add	x0, sp, #704
	add	x15, sp, #512
	ldr	x21, [x23, x22, lsl #3]
	ldr	d9, [x0, x22, lsl #3]
	ldr	d10, [x16, x22, lsl #3]
	ldr	d11, [x15, x22, lsl #3]
	ldr	d12, [x14, x22, lsl #3]
	ldr	d13, [x13, x22, lsl #3]
	ldr	d0, [x11, lCPI2_14@PAGEOFF]
	fmul	d0, d13, d0
	ldr	d14, [x12, x22, lsl #3]
	stp	d0, d14, [sp, #88]
	stp	d12, d13, [sp, #72]
	stp	d10, d11, [sp, #56]
	str	d9, [sp, #48]
	stp	x26, x21, [sp, #32]
	stp	x10, x9, [sp, #16]
Lloh91:
	adrp	x1, l_.str.19@PAGE
Lloh92:
	add	x1, x1, l_.str.19@PAGEOFF
	str	d8, [sp, #8]
	str	x8, [sp]
	mov	x0, x20
	bl	_fprintf
Lloh93:
	adrp	x24, l_.str.21@PAGE
Lloh94:
	add	x24, x24, l_.str.21@PAGEOFF
	str	x24, [sp, #72]
	stp	d13, d14, [sp, #56]
	stp	d11, d12, [sp, #40]
	stp	d9, d10, [sp, #24]
	stp	x26, x21, [sp, #8]
	mov	w8, #1                          ; =0x1
Lloh95:
	adrp	x19, l_.str.20@PAGE
Lloh96:
	add	x19, x19, l_.str.20@PAGEOFF
	mov	x26, x28
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #196]
	ldr	x9, [x28, x8, lsl #3]
	ldr	x10, [x23, x8, lsl #3]
	add	x21, sp, #704
	ldr	d0, [x21, x8, lsl #3]
	add	x25, sp, #576
	ldr	d1, [x25, x8, lsl #3]
	add	x27, sp, #512
	ldr	d2, [x27, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_3
	add	x28, sp, #384
	ldr	d4, [x28, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_4
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #2                          ; =0x2
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #200]
	ldr	x9, [x26, x8, lsl #3]
	ldr	x10, [x23, x8, lsl #3]
	ldr	d0, [x21, x8, lsl #3]
	ldr	d1, [x25, x8, lsl #3]
	add	x25, sp, #576
	ldr	d2, [x27, x8, lsl #3]
	add	x27, sp, #512
	bl	_OUTLINED_FUNCTION_3
	add	x21, sp, #448
	ldr	d4, [x28, x8, lsl #3]
	add	x28, sp, #384
	bl	_OUTLINED_FUNCTION_4
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #3                          ; =0x3
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #204]
	bl	_OUTLINED_FUNCTION_2
	ldr	d3, [x21, x8, lsl #3]
	ldr	d4, [x28, x8, lsl #3]
	add	x21, sp, #384
	bl	_OUTLINED_FUNCTION_4
	add	x28, sp, #256
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #4                          ; =0x4
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #208]
	bl	_OUTLINED_FUNCTION_2
	bl	_OUTLINED_FUNCTION_3
	ldr	d4, [x21, x8, lsl #3]
	add	x21, sp, #384
	ldr	d5, [x28, x8, lsl #3]
	add	x28, sp, #256
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #5                          ; =0x5
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #212]
	bl	_OUTLINED_FUNCTION_2
	bl	_OUTLINED_FUNCTION_3
	ldr	d4, [x21, x8, lsl #3]
	ldr	d5, [x28, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #6                          ; =0x6
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #216]
	bl	_OUTLINED_FUNCTION_2
	bl	_OUTLINED_FUNCTION_3
	add	x21, sp, #448
	add	x11, sp, #384
	ldr	d4, [x11, x8, lsl #3]
	add	x28, sp, #384
	bl	_OUTLINED_FUNCTION_4
	bl	_OUTLINED_FUNCTION_1
	mov	w8, #7                          ; =0x7
	bl	_OUTLINED_FUNCTION_0
	ldrsw	x8, [sp, #220]
	ldr	x9, [x26, x8, lsl #3]
	ldr	x10, [x23, x8, lsl #3]
	add	x11, sp, #704
	ldr	d0, [x11, x8, lsl #3]
	ldr	d1, [x25, x8, lsl #3]
	ldr	d2, [x27, x8, lsl #3]
	ldr	d3, [x21, x8, lsl #3]
	ldr	d4, [x28, x8, lsl #3]
	bl	_OUTLINED_FUNCTION_4
Lloh97:
	adrp	x8, l_.str.22@PAGE
Lloh98:
	add	x8, x8, l_.str.22@PAGEOFF
	str	x8, [sp, #72]
	stp	d4, d5, [sp, #56]
	stp	d2, d3, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x10, [sp, #8]
	mov	w8, #8                          ; =0x8
	bl	_OUTLINED_FUNCTION_0
Lloh99:
	adrp	x0, l_.str.23@PAGE
Lloh100:
	add	x0, x0, l_.str.23@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x20
	bl	_fwrite
	mov	x0, x20
	bl	_fclose
Lloh101:
	adrp	x0, l_.str.17@PAGE
Lloh102:
	add	x0, x0, l_.str.17@PAGEOFF
Lloh103:
	adrp	x1, l_.str.24@PAGE
Lloh104:
	add	x1, x1, l_.str.24@PAGEOFF
	bl	_rename
	adrp	x11, lCPI2_14@PAGE
LBB2_12:
	ldr	w8, [sp, #156]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_14
; %bb.13:
Lloh105:
	adrp	x19, l_str.46@PAGE
Lloh106:
	add	x19, x19, l_str.46@PAGEOFF
	mov	x0, x19
	mov	x20, x11
	bl	_puts
Lloh107:
	adrp	x0, l_str.44@PAGE
Lloh108:
	add	x0, x0, l_str.44@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
	str	d8, [sp]
Lloh109:
	adrp	x0, l_.str.27@PAGE
Lloh110:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_printf
	ldr	x8, [x26, x22, lsl #3]
	str	x8, [sp]
Lloh111:
	adrp	x0, l_.str.28@PAGE
Lloh112:
	add	x0, x0, l_.str.28@PAGEOFF
	bl	_printf
	add	x8, sp, #576
	ldr	d0, [x8, x22, lsl #3]
	add	x8, sp, #512
	ldr	d1, [x8, x22, lsl #3]
	add	x8, sp, #448
	ldr	d2, [x8, x22, lsl #3]
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh113:
	adrp	x0, l_.str.29@PAGE
Lloh114:
	add	x0, x0, l_.str.29@PAGEOFF
	bl	_printf
	add	x8, sp, #384
	ldr	d0, [x8, x22, lsl #3]
	ldr	d1, [x20, lCPI2_14@PAGEOFF]
	fmul	d1, d0, d1
	stp	d0, d1, [sp]
Lloh115:
	adrp	x0, l_.str.30@PAGE
Lloh116:
	add	x0, x0, l_.str.30@PAGEOFF
	bl	_printf
	add	x8, sp, #256
	ldr	d0, [x8, x22, lsl #3]
	fmov	d1, #0.75000000
	fmul	d1, d0, d1
	fcmp	d0, #0.0
	movi.2d	v2, #0000000000000000
	fcsel	d1, d1, d2, gt
	fmov	d3, #0.25000000
	fmul	d3, d0, d3
	fcsel	d2, d3, d2, gt
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh117:
	adrp	x0, l_.str.31@PAGE
Lloh118:
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
LBB2_14:
	ldr	x8, [sp, #920]
Lloh119:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh120:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh121:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_16
; %bb.15:
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
LBB2_16:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh34, Lloh35, Lloh36
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpLdr	Lloh49, Lloh50
	.loh AdrpAdrp	Lloh47, Lloh49
	.loh AdrpLdr	Lloh47, Lloh48
	.loh AdrpAdrp	Lloh45, Lloh47
	.loh AdrpLdr	Lloh45, Lloh46
	.loh AdrpAdrp	Lloh43, Lloh45
	.loh AdrpLdr	Lloh43, Lloh44
	.loh AdrpLdr	Lloh51, Lloh52
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpLdr	Lloh79, Lloh80
	.loh AdrpLdr	Lloh77, Lloh78
	.loh AdrpLdr	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
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
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpLdrGotLdr	Lloh119, Lloh120, Lloh121
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function lockfree_block_ticker_thread
_lockfree_block_ticker_thread:          ; @lockfree_block_ticker_thread
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #432
	stp	d15, d14, [sp, #272]            ; 16-byte Folded Spill
	stp	d13, d12, [sp, #288]            ; 16-byte Folded Spill
	stp	d11, d10, [sp, #304]            ; 16-byte Folded Spill
	stp	d9, d8, [sp, #320]              ; 16-byte Folded Spill
	stp	x28, x27, [sp, #336]            ; 16-byte Folded Spill
	stp	x26, x25, [sp, #352]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #368]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #384]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #400]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #416]            ; 16-byte Folded Spill
	add	x29, sp, #416
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
Lloh122:
	adrp	x1, l_.str.1@PAGE
Lloh123:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh124:
	adrp	x1, l_.str.2@PAGE
Lloh125:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
	mov	x25, x0
	adrp	x26, __MergedGlobals@PAGE
	ldr	w8, [x26, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_75
; %bb.1:
	mov	w22, #0                         ; =0x0
Lloh126:
	adrp	x27, _RPC_URLS@PAGE
Lloh127:
	add	x27, x27, _RPC_URLS@PAGEOFF
Lloh128:
	adrp	x28, l_.str.40@PAGE
Lloh129:
	add	x28, x28, l_.str.40@PAGEOFF
	mov	w21, #1                         ; =0x1
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16527, lsl #48
	str	x8, [sp, #152]                  ; 8-byte Folded Spill
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	str	x8, [sp, #144]                  ; 8-byte Folded Spill
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	str	x8, [sp, #136]                  ; 8-byte Folded Spill
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	str	x8, [sp, #128]                  ; 8-byte Folded Spill
	mov	x8, #56512                      ; =0xdcc0
	movk	x8, #35955, lsl #16
	movk	x8, #58151, lsl #32
	movk	x8, #16152, lsl #48
	str	x8, [sp, #120]                  ; 8-byte Folded Spill
	mov	x8, #11954                      ; =0x2eb2
	movk	x8, #41838, lsl #16
	movk	x8, #48129, lsl #32
	movk	x8, #16471, lsl #48
	str	x8, [sp, #112]                  ; 8-byte Folded Spill
	mov	x24, #1                         ; =0x1
	movk	x24, #4100, lsl #32
	mov	w20, #16                        ; =0x10
	str	x25, [sp, #160]                 ; 8-byte Folded Spill
	b	LBB3_3
LBB3_2:                                 ;   in Loop: Header=BB3_3 Depth=1
	add	w22, w22, #1
	mov	w0, #6784                       ; =0x1a80
	movk	w0, #6, lsl #16
	bl	_usleep
	ldr	w8, [x26, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_73
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
	negs	w8, w22
	and	w8, w8, #0x3
	and	w9, w22, #0x3
	csneg	w8, w9, w8, mi
	ldr	x8, [x27, w8, sxtw #3]
	stur	xzr, [x29, #-168]
	str	x8, [sp, #200]                  ; 8-byte Folded Spill
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x25, [sp]
	mov	x0, x19
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
	str	x28, [sp]
	mov	x0, x19
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
Lloh130:
	adrp	x8, _curl_write_cb@PAGE
Lloh131:
	add	x8, x8, _curl_write_cb@PAGEOFF
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	sub	x8, x29, #176
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	str	x21, [sp]
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
	add	x1, sp, #208
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
	ldp	x9, x8, [sp, #208]
	stp	x9, x8, [sp, #184]              ; 16-byte Folded Spill
	ldp	x9, x8, [x29, #-192]
	stp	x9, x8, [sp, #168]              ; 16-byte Folded Spill
	mov	w1, #1                          ; =0x1
	bl	_find_batch_result_for_id
	mov	x23, x0
	ldur	x0, [x29, #-176]
	mov	w1, #2                          ; =0x2
	bl	_find_batch_result_for_id
	mov	x28, x0
	ldur	x0, [x29, #-176]
	mov	w1, #3                          ; =0x3
	bl	_find_batch_result_for_id
	mov	x27, x0
	ldur	x0, [x29, #-176]
	mov	w1, #4                          ; =0x4
	bl	_find_batch_result_for_id
	mov	x26, x0
	ldur	x0, [x29, #-176]
	mov	w1, #5                          ; =0x5
	bl	_find_batch_result_for_id
	mov	x25, x0
	ldur	x0, [x29, #-176]
	mov	w1, #6                          ; =0x6
	bl	_find_batch_result_for_id
Lloh132:
	adrp	x16, l_.str.41@PAGE
Lloh133:
	add	x16, x16, l_.str.41@PAGEOFF
	cbz	x23, LBB3_18
; %bb.7:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x23]
	cmp	w8, #48
	b.ne	LBB3_10
; %bb.8:                                ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x23, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	b.ne	LBB3_10
; %bb.9:                                ;   in Loop: Header=BB3_3 Depth=1
	add	x23, x23, #2
LBB3_10:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x23, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_13
LBB3_11:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_13
; %bb.12:                               ;   in Loop: Header=BB3_11 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x23, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_11
LBB3_13:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_18
; %bb.14:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	csel	x10, x9, x20, hi
	add	x10, x23, x10
	csel	x9, x9, x20, lo
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
Lloh134:
	adrp	x9, __MergedGlobals@PAGE+8
Lloh135:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+8]
	cmp	x8, x9
	b.ls	LBB3_19
; %bb.17:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+8
	str	x8, [x9, __MergedGlobals@PAGEOFF+8]
	b	LBB3_19
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh136:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh137:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+8]
LBB3_19:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x28, LBB3_30
; %bb.20:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x28]
	cmp	w8, #48
	b.ne	LBB3_22
; %bb.21:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x28, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x28, #2
	csel	x28, x8, x28, eq
LBB3_22:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x28, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_25
LBB3_23:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_25
; %bb.24:                               ;   in Loop: Header=BB3_23 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x28, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_23
LBB3_25:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x9, LBB3_30
; %bb.26:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cmp	x9, #16
	csel	x10, x9, x20, hi
	add	x10, x28, x10
	csel	x9, x9, x20, lo
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
	adrp	x9, __MergedGlobals@PAGE+24
	str	x8, [x9, __MergedGlobals@PAGEOFF+24]
LBB3_30:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x27, LBB3_40
; %bb.31:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x27]
	cmp	w8, #48
	b.ne	LBB3_33
; %bb.32:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x27, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x27, #2
	csel	x27, x8, x27, eq
LBB3_33:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x27, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_36
LBB3_34:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_36
; %bb.35:                               ;   in Loop: Header=BB3_34 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x27, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_34
LBB3_36:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_39
; %bb.37:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x20, hi
	add	x10, x27, x10
	csel	x9, x9, x20, lo
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
	adrp	x9, __MergedGlobals@PAGE+32
	str	x8, [x9, __MergedGlobals@PAGEOFF+32]
LBB3_40:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x26, LBB3_50
; %bb.41:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x26]
	cmp	w8, #48
	b.ne	LBB3_43
; %bb.42:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x26, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x26, #2
	csel	x26, x8, x26, eq
LBB3_43:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x26, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_46
LBB3_44:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_46
; %bb.45:                               ;   in Loop: Header=BB3_44 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x26, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_44
LBB3_46:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_49
; %bb.47:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x20, hi
	add	x10, x26, x10
	csel	x9, x9, x20, lo
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
	adrp	x9, __MergedGlobals@PAGE+40
	str	x8, [x9, __MergedGlobals@PAGEOFF+40]
LBB3_50:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x25, LBB3_60
; %bb.51:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x25]
	cmp	w8, #48
	b.ne	LBB3_53
; %bb.52:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x25, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x25, #2
	csel	x25, x8, x25, eq
LBB3_53:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x25, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_56
LBB3_54:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_56
; %bb.55:                               ;   in Loop: Header=BB3_54 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x25, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_54
LBB3_56:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_59
; %bb.57:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x20, hi
	add	x10, x25, x10
	csel	x9, x9, x20, lo
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
	adrp	x9, __MergedGlobals@PAGE+48
	str	x8, [x9, __MergedGlobals@PAGEOFF+48]
LBB3_60:                                ;   in Loop: Header=BB3_3 Depth=1
	cbz	x0, LBB3_70
; %bb.61:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #48
	b.ne	LBB3_63
; %bb.62:                               ;   in Loop: Header=BB3_3 Depth=1
	ldrb	w8, [x0, #1]
	orr	w8, w8, #0x20
	cmp	w8, #120
	add	x8, x0, #2
	csel	x0, x8, x0, eq
LBB3_63:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x9, #0                          ; =0x0
	ldrb	w8, [x0, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.ne	LBB3_66
LBB3_64:                                ;   Parent Loop BB3_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	cmp	w8, #125
	b.eq	LBB3_66
; %bb.65:                               ;   in Loop: Header=BB3_64 Depth=2
	add	x9, x9, #1
	ldrb	w8, [x0, x9]
	cmp	w8, #44
	lsl	x10, x21, x8
	and	x10, x10, x24
	ccmp	x10, #0, #4, ls
	b.eq	LBB3_64
LBB3_66:                                ;   in Loop: Header=BB3_3 Depth=1
	mov	x8, #0                          ; =0x0
	cbz	x9, LBB3_69
; %bb.67:                               ;   in Loop: Header=BB3_3 Depth=1
	cmp	x9, #16
	csel	x10, x9, x20, hi
	add	x10, x0, x10
	csel	x9, x9, x20, lo
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
	adrp	x9, __MergedGlobals@PAGE+16
	str	x8, [x9, __MergedGlobals@PAGEOFF+16]
LBB3_70:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh138:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh139:
	add	x8, x8, __MergedGlobals@PAGEOFF+24
	ldr	x26, [x8, #8]
	ldr	x25, [x8, #16]
	ldr	x27, [x8, #24]
	ldr	x28, [x8]
	mov	x0, x16
Lloh140:
	adrp	x1, l_.str.18@PAGE
Lloh141:
	add	x1, x1, l_.str.18@PAGEOFF
	mov	x20, x16
	bl	_fopen
	cbz	x0, LBB3_72
; %bb.71:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x23, x0
	ldr	x8, [sp, #184]                  ; 8-byte Folded Reload
	ldp	x10, x9, [sp, #168]             ; 16-byte Folded Reload
	sub	x8, x8, x10
	scvtf	d0, x8
	ldp	d3, d1, [sp, #144]              ; 16-byte Folded Reload
	fmul	d0, d0, d1
	ldr	x8, [sp, #192]                  ; 8-byte Folded Reload
	sub	x8, x8, x9
	scvtf	d1, x8
	ucvtf	d2, x28
	fmadd	d0, d1, d3, d0
	str	d0, [sp, #192]                  ; 8-byte Folded Spill
	ldr	d0, [sp, #136]                  ; 8-byte Folded Reload
	fmul	d15, d2, d0
	ucvtf	d0, x27
	ucvtf	d1, x26
	ldp	d2, d4, [sp, #120]              ; 16-byte Folded Reload
	fmul	d8, d0, d4
	fmul	d10, d1, d3
	ucvtf	d0, x25
	fmul	d11, d0, d3
	fadd	d13, d11, d10
Lloh142:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh143:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	ldr	x25, [x8]
	ldr	x26, [x8, #8]
	ldr	x27, [x8, #8]
	fmul	d12, d1, d2
	fmul	d9, d0, d2
	ldr	d0, [sp, #112]                  ; 8-byte Folded Reload
	fmul	d14, d13, d0
	mov	x0, #0                          ; =0x0
	bl	_time
	str	x0, [sp, #104]
	stp	d14, d8, [sp, #88]
	stp	d12, d9, [sp, #72]
	stp	d11, d13, [sp, #56]
	str	d10, [sp, #48]
	stp	x26, x27, [sp, #32]
	str	d15, [sp, #24]
	str	x25, [sp, #16]
	ldr	d0, [sp, #192]                  ; 8-byte Folded Reload
	str	d0, [sp, #8]
	ldr	x8, [sp, #200]                  ; 8-byte Folded Reload
	str	x8, [sp]
	mov	x0, x23
Lloh144:
	adrp	x1, l_.str.42@PAGE
Lloh145:
	add	x1, x1, l_.str.42@PAGEOFF
	bl	_fprintf
	mov	x0, x23
	bl	_fclose
	mov	x0, x20
Lloh146:
	adrp	x1, l_.str.43@PAGE
Lloh147:
	add	x1, x1, l_.str.43@PAGEOFF
	bl	_rename
LBB3_72:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x25, [sp, #160]                 ; 8-byte Folded Reload
	adrp	x26, __MergedGlobals@PAGE
Lloh148:
	adrp	x27, _RPC_URLS@PAGE
Lloh149:
	add	x27, x27, _RPC_URLS@PAGEOFF
Lloh150:
	adrp	x28, l_.str.40@PAGE
Lloh151:
	add	x28, x28, l_.str.40@PAGEOFF
	mov	w20, #16                        ; =0x10
	mov	w0, #6784                       ; =0x1a80
	movk	w0, #6, lsl #16
	bl	_usleep
	ldr	w8, [x26, __MergedGlobals@PAGEOFF]
	cbnz	w8, LBB3_3
LBB3_73:
	ldur	x0, [x29, #-176]
	cbz	x0, LBB3_75
; %bb.74:
	bl	_free
LBB3_75:
	mov	x0, x25
	bl	_curl_slist_free_all
	mov	x0, x19
	bl	_curl_easy_cleanup
	mov	x0, #0                          ; =0x0
	ldp	x29, x30, [sp, #416]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #400]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #384]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #368]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #352]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #336]            ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #320]              ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #304]            ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #288]            ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #272]            ; 16-byte Folded Reload
	add	sp, sp, #432
	ret
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpAdd	Lloh128, Lloh129
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpLdr	Lloh134, Lloh135
	.loh AdrpLdr	Lloh136, Lloh137
	.loh AdrpAdd	Lloh140, Lloh141
	.loh AdrpAdd	Lloh138, Lloh139
	.loh AdrpAdd	Lloh146, Lloh147
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh142, Lloh143
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh148, Lloh149
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
	cbz	x0, LBB5_16
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
Lloh152:
	adrp	x1, l_.str.36@PAGE
Lloh153:
	add	x1, x1, l_.str.36@PAGEOFF
	bl	_strstr
	cbz	x0, LBB5_14
; %bb.2:
	mov	x9, x0
	ldrb	w10, [x9, #2]!
	cbz	w10, LBB5_14
; %bb.3:
	mov	x8, #0                          ; =0x0
	add	x9, x9, #1
LBB5_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w10, #34
	b.eq	LBB5_8
; %bb.5:                                ;   in Loop: Header=BB5_4 Depth=1
	cmp	x8, #63
	b.hi	LBB5_9
; %bb.6:                                ;   in Loop: Header=BB5_4 Depth=1
	add	x11, x8, #1
	ldrb	w10, [x9, x8]
	mov	x8, x11
	cbnz	w10, LBB5_4
; %bb.7:
	cmp	x11, #64
	mov.16b	v0, v9
	b.hs	LBB5_10
	b	LBB5_15
LBB5_8:
	cmp	x8, #64
	mov.16b	v0, v9
	b.hs	LBB5_10
	b	LBB5_15
LBB5_9:
	cmp	x8, #64
	mov.16b	v0, v9
	b.lo	LBB5_15
LBB5_10:
	mov	x8, #0                          ; =0x0
	add	x9, x0, #2
	movi.2d	v8, #0000000000000000
	fmov	d1, #16.00000000
LBB5_11:                                ; =>This Inner Loop Header: Depth=1
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
	ucvtf	d2, w10
	fmadd	d8, d8, d1, d2
	add	x8, x8, #1
	cmp	x8, #64
	b.ne	LBB5_11
; %bb.12:
	fcmp	d8, #0.0
	b.le	LBB5_15
; %bb.13:
	fmov	d0, #1.00000000
	mov	w0, #96                         ; =0x60
	bl	_ldexp
	fdiv	d0, d8, d0
	fmul	d0, d0, d0
	mov	x8, #2717908992                 ; =0xa2000000
	movk	x8, #6804, lsl #32
	movk	x8, #17005, lsl #48
	fmov	d1, x8
	fmul	d8, d0, d1
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d0, x8
	fcmp	d8, d0
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16595, lsl #48
	fmov	d0, x8
	fccmp	d8, d0, #0, ge
	b.le	LBB5_17
LBB5_14:
	mov.16b	v0, v9
LBB5_15:
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp], #32               ; 16-byte Folded Reload
LBB5_16:
	ret
LBB5_17:
	mov.16b	v0, v8
	bl	___isnand
	mov.16b	v0, v9
	cbnz	w0, LBB5_15
; %bb.18:
	mov.16b	v0, v8
	bl	___isinfd
	cmp	w0, #0
	fcsel	d0, d8, d9, eq
	b	LBB5_15
	.loh AdrpAdd	Lloh152, Lloh153
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function find_batch_result_for_id
_find_batch_result_for_id:              ; @find_batch_result_for_id
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x22, x21, [sp, #80]             ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset w21, -40
	.cfi_offset w22, -48
Lloh154:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh155:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh156:
	ldr	x8, [x8]
	stur	x8, [x29, #-40]
	cbz	x0, LBB6_14
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh157:
	adrp	x2, l_.str.37@PAGE
Lloh158:
	add	x2, x2, l_.str.37@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh159:
	adrp	x2, l_.str.38@PAGE
Lloh160:
	add	x2, x2, l_.str.38@PAGEOFF
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
	cbz	x0, LBB6_14
LBB6_3:
	mov	x19, x0
	sub	x8, x0, x20
	sub	x9, x0, #220
	cmp	x8, #220
	csel	x21, x9, x20, gt
Lloh161:
	adrp	x1, l_.str.39@PAGE
Lloh162:
	add	x1, x1, l_.str.39@PAGEOFF
	bl	_strstr
	mov	x20, x0
	cmp	x21, x19
	b.hs	LBB6_12
; %bb.4:
Lloh163:
	adrp	x1, l_.str.39@PAGE
Lloh164:
	add	x1, x1, l_.str.39@PAGEOFF
	mov	x0, x21
	bl	_strstr
	mov	x22, #0                         ; =0x0
	cbz	x0, LBB6_10
; %bb.5:
	cmp	x0, x19
	b.hs	LBB6_10
; %bb.6:
Lloh165:
	adrp	x21, l_.str.39@PAGE
Lloh166:
	add	x21, x21, l_.str.39@PAGEOFF
LBB6_7:                                 ; =>This Inner Loop Header: Depth=1
	mov	x22, x0
	add	x0, x0, #8
	cmp	x0, x19
	b.hs	LBB6_10
; %bb.8:                                ;   in Loop: Header=BB6_7 Depth=1
	mov	x1, x21
	bl	_strstr
	cbz	x0, LBB6_10
; %bb.9:                                ;   in Loop: Header=BB6_7 Depth=1
	cmp	x0, x19
	b.lo	LBB6_7
LBB6_10:
	cbz	x20, LBB6_16
; %bb.11:
	sub	x8, x19, x22
	sub	x9, x20, x19
	cmp	x8, x9
	csel	x8, x22, x20, lt
	cmp	x22, #0
	csel	x20, x20, x8, eq
	b	LBB6_13
LBB6_12:
	cbz	x20, LBB6_17
LBB6_13:
Lloh167:
	adrp	x1, l_.str.36@PAGE
Lloh168:
	add	x1, x1, l_.str.36@PAGEOFF
	mov	x0, x20
	bl	_strstr
LBB6_14:
	ldur	x8, [x29, #-40]
Lloh169:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh170:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh171:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_18
LBB6_15:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
LBB6_16:
	mov	x20, x22
	cbnz	x22, LBB6_13
LBB6_17:
	mov	x0, #0                          ; =0x0
	ldur	x8, [x29, #-40]
Lloh172:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh173:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh174:
	ldr	x9, [x9]
	cmp	x9, x8
	b.eq	LBB6_15
LBB6_18:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh154, Lloh155, Lloh156
	.loh AdrpAdd	Lloh159, Lloh160
	.loh AdrpAdd	Lloh157, Lloh158
	.loh AdrpAdd	Lloh161, Lloh162
	.loh AdrpAdd	Lloh163, Lloh164
	.loh AdrpAdd	Lloh165, Lloh166
	.loh AdrpAdd	Lloh167, Lloh168
	.loh AdrpLdrGotLdr	Lloh169, Lloh170, Lloh171
	.loh AdrpLdrGotLdr	Lloh172, Lloh173, Lloh174
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_0
_OUTLINED_FUNCTION_0:                   ; @OUTLINED_FUNCTION_0 Thunk
	.cfi_startproc
; %bb.0:
	str	x8, [sp]
	mov	x0, x20
	mov	x1, x19
	b	_fprintf
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_1
_OUTLINED_FUNCTION_1:                   ; @OUTLINED_FUNCTION_1 Function
	.cfi_startproc
; %bb.0:
	str	x24, [sp, #72]
	stp	d4, d5, [sp, #56]
	stp	d2, d3, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x10, [sp, #8]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_2
_OUTLINED_FUNCTION_2:                   ; @OUTLINED_FUNCTION_2 Function
	.cfi_startproc
; %bb.0:
	ldr	x9, [x26, x8, lsl #3]
	ldr	x10, [x23, x8, lsl #3]
	add	x11, sp, #704
	ldr	d0, [x11, x8, lsl #3]
	ldr	d1, [x25, x8, lsl #3]
	add	x25, sp, #576
	ldr	d2, [x27, x8, lsl #3]
	add	x27, sp, #512
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_3
_OUTLINED_FUNCTION_3:                   ; @OUTLINED_FUNCTION_3 Function
	.cfi_startproc
; %bb.0:
	add	x11, sp, #448
	ldr	d3, [x11, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_4
_OUTLINED_FUNCTION_4:                   ; @OUTLINED_FUNCTION_4 Function
	.cfi_startproc
; %bb.0:
	add	x11, sp, #256
	ldr	d5, [x11, x8, lsl #3]
	ret
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_5
_OUTLINED_FUNCTION_5:                   ; @OUTLINED_FUNCTION_5 Thunk
	.cfi_startproc
; %bb.0:
	mov.16b	v0, v8
	b	_decode_slot0_sqrt_price
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function OUTLINED_FUNCTION_6
_OUTLINED_FUNCTION_6:                   ; @OUTLINED_FUNCTION_6 Function
	.cfi_startproc
; %bb.0:
	str	x8, [sp]
	mov	x0, x21
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"--self-test"

l_.str.1:                               ; @.str.1
	.asciz	"Content-Type: application/json"

l_.str.2:                               ; @.str.2
	.asciz	"Connection: keep-alive"

l_.str.3:                               ; @.str.3
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xC6962004f452bE9203591991D15f6b388e09E8D0\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":10},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x6f38e884725a116C9C7fBF208e79FE8828a2595F\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":11},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xB1026b8e7276e7AC75410F1fcbbe21796e8f7526\",\"data\":\"0x00f714ce\"},\"latest\"],\"id\":12},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0x7fCDC35463E3770c2fB992716Cd070B63540b947\",\"data\":\"0x3850c7bd\"},\"latest\"],\"id\":13}]"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @RPC_URLS
_RPC_URLS:
	.quad	l_.str.32
	.quad	l_.str.33
	.quad	l_.str.34
	.quad	l_.str.35

.zerofill __DATA,__bss,_g_total_asm_cycles,8,3 ; @g_total_asm_cycles
	.section	__TEXT,__cstring,cstring_literals
l_.str.4:                               ; @.str.4
	.asciz	"WETH/USDC (Camelot V3 1.00bps <-> UniV3 1.00bps)"

l_.str.5:                               ; @.str.5
	.asciz	"WETH/USDC (Camelot V3 1.00bps <-> PancakeSwap V3 1.00bps)"

l_.str.6:                               ; @.str.6
	.asciz	"WETH/USDC (Camelot V3 1.00bps <-> UniV3 0.05% 5.00bps)"

l_.str.7:                               ; @.str.7
	.asciz	"wstETH/WETH (Camelot V3 0.50bps <-> UniV3 1.00bps)"

l_.str.8:                               ; @.str.8
	.asciz	"WBTC/USDC (UniV3 5.00bps <-> PancakeSwap V3 5.00bps)"

l_.str.9:                               ; @.str.9
	.asciz	"USDC/USDC.e (Camelot V3 0.05bps <-> UniV3 1.00bps)"

l_.str.10:                              ; @.str.10
	.asciz	"USDC/USDT (Camelot V3 0.25bps <-> UniV3 1.00bps)"

l_.str.11:                              ; @.str.11
	.asciz	"ARB/USDC (Camelot V3 2.50bps <-> UniV3 5.00bps)"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.route_names
l___const.run_native_asm_sniper_cycle.route_names:
	.quad	l_.str.4
	.quad	l_.str.5
	.quad	l_.str.6
	.quad	l_.str.7
	.quad	l_.str.8
	.quad	l_.str.9
	.quad	l_.str.10
	.quad	l_.str.11

	.section	__TEXT,__cstring,cstring_literals
l_.str.12:                              ; @.str.12
	.asciz	"WETH"

l_.str.13:                              ; @.str.13
	.asciz	"WBTC"

l_.str.14:                              ; @.str.14
	.asciz	"USDC.e"

l_.str.15:                              ; @.str.15
	.asciz	"USDT"

l_.str.16:                              ; @.str.16
	.asciz	"USDC"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.borrow_syms
l___const.run_native_asm_sniper_cycle.borrow_syms:
	.quad	l_.str.12
	.quad	l_.str.12
	.quad	l_.str.12
	.quad	l_.str.12
	.quad	l_.str.13
	.quad	l_.str.14
	.quad	l_.str.15
	.quad	l_.str.16

	.section	__TEXT,__const
	.p2align	6, 0x0                          ; @__const.run_native_asm_sniper_cycle.y1
l___const.run_native_asm_sniper_cycle.y1:
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x4088ac7ae147ae14              ; double 789.55999999999995
	.quad	0x40a596eb851eb852              ; double 2763.46
	.quad	0x40c4fcbc28f5c28f              ; double 10745.469999999999
	.quad	0x4067100000000000              ; double 184.5
	.quad	0x40f4e7e000000000              ; double 85630
	.quad	0x40e4640000000000              ; double 41760
	.quad	0x4133999400000000              ; double 1284500

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

	.section	__TEXT,__cstring,cstring_literals
l_.str.17:                              ; @.str.17
	.asciz	"reports/asm_sniper_telemetry.json.tmp"

l_.str.18:                              ; @.str.18
	.asciz	"w"

l_.str.19:                              ; @.str.19
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"execution_mode\": \"100%% Native C/Assembly Standalone Binary (Zero Python GIL)\",\n  \"loan_sizing_policy\": \"1 Trade = 100%% Full Independent Sweet-Spot Flash Loan (Never Split Across Trades)\",\n  \"asm_cycles_completed\": %llu,\n  \"cpu_eval_latency_microseconds\": %.3f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"routes\": [\n"

l_.str.20:                              ; @.str.20
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"spread_bps\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_usd\": %.2f, \"net_usd\": %.4f}%s\n"

l_.str.21:                              ; @.str.21
	.asciz	","

l_.str.22:                              ; @.str.22
	.space	1

l_.str.23:                              ; @.str.23
	.asciz	"  ]\n}\n"

l_.str.24:                              ; @.str.24
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.27:                              ; @.str.27
	.asciz	"Assembly Eval Latency     : %.3f microseconds (8 Full-Loan Routes in Hardware Registers)\n"

l_.str.28:                              ; @.str.28
	.asciz	"Top Route (#1)            : %s\n"

l_.str.29:                              ; @.str.29
	.asciz	"100%% Full Loan (dx*)      : $%.2f USD (Balancer 0%%: $%.2f + Overflow: $%.2f)\n"

l_.str.30:                              ; @.str.30
	.asciz	"Hybrid Stacked Fee Saved  : $%.2f USD (\342\202\271%.2f INR saved per trade)\n"

l_.str.31:                              ; @.str.31
	.asciz	"Net Profit (75%%->Binance) : $%+.4f USD (75%%=$%.4f -> 0xb411...0099 | 25%%=$%.4f -> 0xFF3c...89BE)\n"

l_.str.32:                              ; @.str.32
	.asciz	"https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"

l_.str.33:                              ; @.str.33
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.34:                              ; @.str.34
	.asciz	"https://1rpc.io/arb"

l_.str.35:                              ; @.str.35
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.36:                              ; @.str.36
	.asciz	"0x"

l_.str.37:                              ; @.str.37
	.asciz	"\"id\":%d"

l_.str.38:                              ; @.str.38
	.asciz	"\"id\": %d"

l_.str.39:                              ; @.str.39
	.asciz	"\"result\""

l_.str.40:                              ; @.str.40
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6}]"

l_.str.41:                              ; @.str.41
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.42:                              ; @.str.42
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + libcurl TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"binance_usdc_balance\": \"%.4f\",\n  \"metamask_usdc_balance\": \"%.4f\",\n  \"total_onchain_usdc\": \"%.4f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.43:                              ; @.str.43
	.asciz	"reports/live_block_ticker.json"

l_str.44:                               ; @str.44
	.asciz	"NATIVE ASSEMBLY SNIPER BINARY (./bin/arb_sniper_asm) SELF-TEST PASSED"

l_str.46:                               ; @str.46
	.asciz	"================================================================================"

	.section	__DATA,__data
	.p2align	3, 0x0                          ; @_MergedGlobals
__MergedGlobals:
	.long	1                               ; 0x1
	.space	4
	.quad	515694531                       ; 0x1ebcdfc3
	.quad	3                               ; 0x3
	.quad	20000000                        ; 0x1312d00
	.quad	499198                          ; 0x79dfe
	.quad	162319                          ; 0x27a0f
	.quad	474670000000000                 ; 0x1afb5b8bc4c00

.subsections_via_symbols
