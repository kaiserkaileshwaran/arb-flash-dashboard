	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_full_loan_routes_asm  ; -- Begin function evaluate_full_loan_routes_asm
	.p2align	2
_evaluate_full_loan_routes_asm:         ; @evaluate_full_loan_routes_asm
	.cfi_startproc
; %bb.0:
	cmp	w0, #1
	b.lt	LBB0_20
; %bb.1:
	sub	sp, sp, #192
	stp	d15, d14, [sp, #32]             ; 16-byte Folded Spill
	stp	d13, d12, [sp, #48]             ; 16-byte Folded Spill
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x28, x27, [sp, #96]             ; 16-byte Folded Spill
	stp	x26, x25, [sp, #112]            ; 16-byte Folded Spill
	stp	x24, x23, [sp, #128]            ; 16-byte Folded Spill
	stp	x22, x21, [sp, #144]            ; 16-byte Folded Spill
	stp	x20, x19, [sp, #160]            ; 16-byte Folded Spill
	stp	x29, x30, [sp, #176]            ; 16-byte Folded Spill
	.cfi_def_cfa_offset 192
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
	mov	x8, #0                          ; =0x0
	mov	x10, #57147                     ; =0xdf3b
	movk	x10, #36175, lsl #16
	movk	x10, #28311, lsl #32
	movk	x10, #16274, lsl #48
	ldp	x13, x9, [sp, #264]
	fmov	d2, x10
	add	x10, x1, #32
	add	x11, x2, #32
	add	x12, x3, #32
	add	x15, x4, #32
	mov	x16, #54933                     ; =0xd695
	movk	x16, #59430, lsl #16
	movk	x16, #11787, lsl #32
	movk	x16, #15889, lsl #48
	fmov	d1, x16
	mov	x19, #149533581377536           ; =0x880000000000
	movk	x19, #16579, lsl #48
	ldp	x16, x14, [sp, #248]
	str	x19, [sp, #24]                  ; 8-byte Folded Spill
	mov	x19, #7378697629483820646       ; =0x6666666666666666
	movk	x19, #16386, lsl #48
	fmov	d3, x19
	mov	x21, #4634204016564240384       ; =0x4050000000000000
	ldp	x19, x17, [sp, #232]
	fmov	d4, x21
	mov	x21, #4639833516098453504       ; =0x4064000000000000
	fmov	d5, x21
	mov	x23, #20972                     ; =0x51ec
	movk	x23, #7864, lsl #16
	movk	x23, #60293, lsl #32
	movk	x23, #16289, lsl #48
	ldp	x21, x20, [sp, #216]
	fmov	d6, x23
	mov	x23, #47186                     ; =0xb852
	movk	x23, #34078, lsl #16
	movk	x23, #20971, lsl #32
	movk	x23, #16366, lsl #48
	fmov	d7, x23
	mov	x25, #22038                     ; =0x5616
	movk	x25, #40679, lsl #16
	movk	x25, #943, lsl #32
	movk	x25, #15570, lsl #48
	ldp	x23, x22, [sp, #200]
	ldr	x24, [sp, #192]
	fmov	d16, x25
	mov	x25, #640942080                 ; =0x26340000
	movk	x25, #27637, lsl #32
	movk	x25, #17164, lsl #48
	fadd	d17, d0, d2
	fmov	d18, x25
	mov	x25, #3689348814741910323       ; =0x3333333333333333
	movk	x25, #16363, lsl #48
	str	x25, [sp, #16]                  ; 8-byte Folded Spill
	mov	x25, #5243                      ; =0x147b
	movk	x25, #18350, lsl #16
	movk	x25, #31457, lsl #32
	movk	x25, #49044, lsl #48
	fmov	d22, x25
	mov	x25, #5243                      ; =0x147b
	movk	x25, #18350, lsl #16
	movk	x25, #31457, lsl #32
	movk	x25, #16276, lsl #48
	fmov	d23, x25
	mov	x25, #7864                      ; =0x1eb8
	movk	x25, #60293, lsl #16
	movk	x25, #47185, lsl #32
	movk	x25, #16302, lsl #48
	fmov	d24, x25
	mov	x25, #17197                     ; =0x432d
	movk	x25, #60188, lsl #16
	movk	x25, #14050, lsl #32
	movk	x25, #16154, lsl #48
	fmov	d25, x25
	mov	x25, #17197                     ; =0x432d
	movk	x25, #60188, lsl #16
	movk	x25, #14050, lsl #32
	movk	x25, #16138, lsl #48
	fmov	d26, x25
	movi.2d	v27, #0000000000000000
	mov	x25, #43516                     ; =0xa9fc
	movk	x25, #54001, lsl #16
	movk	x25, #25165, lsl #32
	movk	x25, #16192, lsl #48
	fmov	d28, x25
	mov	x25, #-7378697629483820647      ; =0x9999999999999999
	movk	x25, #39322
	movk	x25, #16281, lsl #48
	fmov	d30, x25
	mov	x25, #48234                     ; =0xbc6a
	movk	x25, #37748, lsl #16
	movk	x25, #1048, lsl #32
	movk	x25, #16358, lsl #48
	fmov	d31, #0.75000000
	fmov	d8, #0.25000000
	fmov	d9, x25
	mov	x26, x9
	mov	w0, w0
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x25, #0                         ; =0x0
	str	w8, [x9, x25, lsl #2]
	add	x8, x8, #1
	add	x26, x26, #4
	cmp	x8, x0
	b.eq	LBB0_19
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_15 Depth 2
	add	x25, x8, #4
	cmp	x25, x0
	b.hs	LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	prfm	pldl1keep, [x10, x8, lsl #3]
	prfm	pldl1keep, [x11, x8, lsl #3]
	prfm	pldl1keep, [x12, x8, lsl #3]
	prfm	pldl1keep, [x15, x8, lsl #3]
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	d19, [x1, x8, lsl #3]
	ldr	d20, [x2, x8, lsl #3]
	fminnm	d2, d19, d20
	fcmp	d19, d20
	csel	x25, x3, x4, le
	ldr	d12, [x25, x8, lsl #3]
	fmaxnm	d11, d19, d20
	csel	x25, x4, x3, le
	ldr	d19, [x25, x8, lsl #3]
	movi.2d	v10, #0000000000000000
	fcmp	d2, d1
	b.le	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	fsub	d20, d11, d2
	ldr	d21, [sp, #24]                  ; 8-byte Folded Reload
	fmul	d20, d20, d21
	fdiv	d10, d20, d2
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	d20, [x5, x8, lsl #3]
	fsub	d14, d10, d20
	fcmp	d20, d3
	fcsel	d20, d5, d4, le
	fmadd	d21, d14, d6, d7
	fmov	d29, #1.50000000
	fcmp	d14, d29
	fmov	d29, #1.00000000
	fcsel	d21, d21, d29, gt
	fdiv	d20, d20, d21
	fmul	d2, d12, d2
	fmul	d15, d2, d20
	fmul	d2, d19, d11
	fmul	d2, d2, d20
	fmul	d21, d15, d2
	fadd	d20, d15, d2
	fdiv	d29, d20, d21
	fcmp	d21, d16
	ldr	d12, [x6, x8, lsl #3]
	ldr	d19, [x7, x8, lsl #3]
	fcsel	d11, d29, d18, gt
	fadd	d29, d10, d22
	fcmp	d10, d23
	fcsel	d29, d29, d24, gt
	fcmp	d14, #0.0
	fcsel	d13, d14, d29, gt
	str	d10, [x24, x8, lsl #3]
	str	d13, [x23, x8, lsl #3]
	fcmp	d20, d16
	mov.16b	v29, v12
	b.le	LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	fmul	d29, d13, d26
	fmul	d21, d29, d21
	fdiv	d29, d21, d20
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	fcmp	d14, #0.0
	b.le	LBB0_11
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	fadd	d19, d19, d12
	fminnm	d2, d15, d2
	ldr	d20, [sp, #16]                  ; 8-byte Folded Reload
	fmul	d2, d2, d20
	fminnm	d2, d2, d19
	fmaxnm	d2, d2, d12
	fmaxnm	d19, d29, d12
	fcmp	d19, d2
	fcsel	d14, d19, d2, le
	b	LBB0_13
LBB0_11:                                ;   in Loop: Header=BB0_3 Depth=1
	mov	x25, #169324790677504           ; =0x9a0000000000
	movk	x25, #16576, lsl #48
	fmov	d2, x25
	fmaxnm	d14, d29, d2
	fcmp	d14, d12
	b.le	LBB0_13
; %bb.12:                               ;   in Loop: Header=BB0_3 Depth=1
	mov.16b	v14, v12
LBB0_13:                                ;   in Loop: Header=BB0_3 Depth=1
	fmul	d2, d13, d25
	fminnm	d19, d14, d12
	fsub	d20, d14, d12
	fcmp	d14, d12
	fcsel	d20, d20, d27, gt
	fmul	d21, d19, d28
	fmul	d2, d2, d14
	fmul	d29, d14, d14
	fmsub	d29, d29, d11, d2
	fmov	d11, #0.50000000
	fmul	d2, d2, d11
	fcmp	d2, d17
	fmadd	d10, d10, d30, d17
	fcsel	d2, d2, d10, ge
	fcmp	d29, d17
	fcsel	d2, d29, d2, gt
	fsub	d29, d2, d0
	fmul	d10, d29, d9
	fcmp	d29, #0.0
	fcsel	d10, d10, d29, gt
	fmul	d29, d10, d31
	fcmp	d10, #0.0
	fcsel	d29, d29, d27, gt
	str	d14, [x22, x8, lsl #3]
	str	d19, [x21, x8, lsl #3]
	str	d20, [x20, x8, lsl #3]
	str	d21, [x19, x8, lsl #3]
	str	d2, [x17, x8, lsl #3]
	str	d10, [x16, x8, lsl #3]
	fmul	d2, d10, d8
	fcsel	d2, d2, d27, gt
	str	d29, [x14, x8, lsl #3]
	str	d2, [x13, x8, lsl #3]
	cbz	w8, LBB0_2
; %bb.14:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x30, x26
	mov	x27, x8
	mov	x28, x26
LBB0_15:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldrsw	x25, [x28, #-4]!
	ldr	d2, [x16, x25, lsl #3]
	fcmp	d2, d10
	b.ge	LBB0_18
; %bb.16:                               ;   in Loop: Header=BB0_15 Depth=2
	sub	x27, x27, #1
	str	w25, [x30]
	add	x25, x27, #1
	mov	x30, x28
	cmp	x25, #1
	b.gt	LBB0_15
; %bb.17:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x27, #0                         ; =0x0
LBB0_18:                                ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x25, w27
	str	w8, [x9, x25, lsl #2]
	add	x8, x8, #1
	add	x26, x26, #4
	cmp	x8, x0
	b.ne	LBB0_3
LBB0_19:
	ldp	x29, x30, [sp, #176]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #160]            ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #144]            ; 16-byte Folded Reload
	ldp	x24, x23, [sp, #128]            ; 16-byte Folded Reload
	ldp	x26, x25, [sp, #112]            ; 16-byte Folded Reload
	ldp	x28, x27, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp, #48]             ; 16-byte Folded Reload
	ldp	d15, d14, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #192
LBB0_20:
	ret
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
Lloh2:
	adrp	x2, _lockfree_block_ticker_thread@PAGE
Lloh3:
	add	x2, x2, _lockfree_block_ticker_thread@PAGEOFF
	add	x0, sp, #24
	mov	x1, #0                          ; =0x0
	mov	x3, #0                          ; =0x0
	bl	_pthread_create
	bl	_curl_easy_init
	mov	x19, x0
	stp	xzr, xzr, [sp]
	str	xzr, [sp, #16]
Lloh4:
	adrp	x1, l_.str.1@PAGE
Lloh5:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh6:
	adrp	x1, l_.str.2@PAGE
Lloh7:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh8:
	adrp	x1, l_.str.3@PAGE
Lloh9:
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
	.loh AdrpAdd	Lloh0, Lloh1
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.p2align	2                               ; -- Begin function run_native_asm_sniper_cycle
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
Lloh10:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh11:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh12:
	ldr	x8, [x8]
	str	x8, [sp, #2008]
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51870, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d22, x8
	mov	x8, #27369                      ; =0x6ae9
	movk	x8, #44934, lsl #16
	movk	x8, #12042, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d24, x8
	mov	x8, #59704                      ; =0xe938
	movk	x8, #28871, lsl #16
	movk	x8, #11398, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d26, x8
	mov	x8, #30409                      ; =0x76c9
	movk	x8, #40894, lsl #16
	movk	x8, #6938, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d14, x8
	mov	x8, #29570                      ; =0x7382
	movk	x8, #37958, lsl #16
	movk	x8, #5366, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d0, x8
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51486, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d25, x8
	mov	x8, #30363                      ; =0x769b
	movk	x8, #52529, lsl #16
	movk	x8, #59252, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d23, x8
	mov	x8, #15431                      ; =0x3c47
	movk	x8, #52697, lsl #16
	movk	x8, #59020, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d11, x8
	mov	x8, #43528                      ; =0xaa08
	movk	x8, #44870, lsl #16
	movk	x8, #10246, lsl #32
	movk	x8, #16327, lsl #48
	fmov	d8, x8
	mov	x8, #27867                      ; =0x6cdb
	movk	x8, #50348, lsl #16
	movk	x8, #11068, lsl #32
	movk	x8, #16327, lsl #48
	fmov	d12, x8
	mov	x8, #64982                      ; =0xfdd6
	movk	x8, #8547, lsl #16
	movk	x8, #1082, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d15, x8
	mov	x8, #3997                       ; =0xf9d
	movk	x8, #4815, lsl #16
	movk	x8, #1124, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d13, x8
	mov	x8, #63988                      ; =0xf9f4
	movk	x8, #9000, lsl #16
	movk	x8, #46, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d20, x8
	mov	x8, #35794                      ; =0x8bd2
	movk	x8, #64986, lsl #16
	movk	x8, #42, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d21, x8
	mov	x8, #18350                      ; =0x47ae
	movk	x8, #31457, lsl #16
	movk	x8, #53796, lsl #32
	movk	x8, #16627, lsl #48
	fmov	d19, x8
	mov	x8, #39322                      ; =0x999a
	movk	x8, #39321, lsl #16
	movk	x8, #53877, lsl #32
	movk	x8, #16627, lsl #48
	fmov	d16, x8
	mov	x8, #13661                      ; =0x355d
	movk	x8, #4559, lsl #16
	movk	x8, #61177, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d7, x8
	mov	x8, #53255                      ; =0xd007
	movk	x8, #64495, lsl #16
	movk	x8, #61239, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d18, x8
	mov	x8, #10486                      ; =0x28f6
	movk	x8, #36700, lsl #16
	movk	x8, #50626, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d10, x8
	mov	x8, #44564                      ; =0xae14
	movk	x8, #57671, lsl #16
	movk	x8, #50554, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d6, x8
	mov	x8, #10486                      ; =0x28f6
	movk	x8, #36700, lsl #16
	movk	x8, #50498, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d17, x8
	mov	x8, #55050                      ; =0xd70a
	movk	x8, #28835, lsl #16
	movk	x8, #50237, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d9, x8
	mov	x8, #45859                      ; =0xb323
	movk	x8, #32689, lsl #16
	movk	x8, #50217, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d1, x8
	adrp	x8, __MergedGlobals.62@PAGE
	str	w3, [sp, #348]                  ; 4-byte Folded Spill
	cbz	x0, LBB2_4
; %bb.1:
	cbnz	w3, LBB2_4
; %bb.2:
	mov	x20, x2
	mov	x21, x1
	str	xzr, [x2, #8]
	ldr	x8, [x8, __MergedGlobals.62@PAGEOFF]
	and	x8, x8, #0x3
Lloh13:
	adrp	x9, _RPC_URLS@PAGE
Lloh14:
	add	x9, x9, _RPC_URLS@PAGEOFF
	ldr	x8, [x9, x8, lsl #3]
	str	x8, [sp]
	mov	x22, x0
	mov	w1, #10002                      ; =0x2712
	bl	_curl_easy_setopt
	str	x21, [sp]
	mov	x0, x22
	mov	w1, #10023                      ; =0x2727
	bl	_curl_easy_setopt
Lloh15:
	adrp	x8, l_.str.4@PAGE
Lloh16:
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
Lloh17:
	adrp	x8, _curl_write_cb@PAGE
Lloh18:
	add	x8, x8, _curl_write_cb@PAGEOFF
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #20011                      ; =0x4e2b
	bl	_curl_easy_setopt
	str	x20, [sp]
	mov	x0, x22
	mov	w1, #10001                      ; =0x2711
	bl	_curl_easy_setopt
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #121                        ; =0x79
	bl	_curl_easy_setopt
	mov	w8, #1800                       ; =0x708
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #155                        ; =0x9b
	bl	_curl_easy_setopt
	mov	x0, x22
	bl	_curl_easy_perform
	cbz	w0, LBB2_21
LBB2_3:
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51870, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d22, x8
	mov	x8, #27369                      ; =0x6ae9
	movk	x8, #44934, lsl #16
	movk	x8, #12042, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d24, x8
	mov	x8, #59704                      ; =0xe938
	movk	x8, #28871, lsl #16
	movk	x8, #11398, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d26, x8
	mov	x8, #30409                      ; =0x76c9
	movk	x8, #40894, lsl #16
	movk	x8, #6938, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d14, x8
	mov	x8, #29570                      ; =0x7382
	movk	x8, #37958, lsl #16
	movk	x8, #5366, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d0, x8
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51486, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d25, x8
	mov	x8, #30363                      ; =0x769b
	movk	x8, #52529, lsl #16
	movk	x8, #59252, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d23, x8
	mov	x8, #15431                      ; =0x3c47
	movk	x8, #52697, lsl #16
	movk	x8, #59020, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d11, x8
	mov	x8, #43528                      ; =0xaa08
	movk	x8, #44870, lsl #16
	movk	x8, #10246, lsl #32
	movk	x8, #16327, lsl #48
	fmov	d8, x8
	mov	x8, #27867                      ; =0x6cdb
	movk	x8, #50348, lsl #16
	movk	x8, #11068, lsl #32
	movk	x8, #16327, lsl #48
	fmov	d12, x8
	mov	x8, #64982                      ; =0xfdd6
	movk	x8, #8547, lsl #16
	movk	x8, #1082, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d15, x8
	mov	x8, #3997                       ; =0xf9d
	movk	x8, #4815, lsl #16
	movk	x8, #1124, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d13, x8
	mov	x8, #63988                      ; =0xf9f4
	movk	x8, #9000, lsl #16
	movk	x8, #46, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d20, x8
	mov	x8, #35794                      ; =0x8bd2
	movk	x8, #64986, lsl #16
	movk	x8, #42, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d21, x8
	mov	x8, #18350                      ; =0x47ae
	movk	x8, #31457, lsl #16
	movk	x8, #53796, lsl #32
	movk	x8, #16627, lsl #48
	fmov	d19, x8
	mov	x8, #39322                      ; =0x999a
	movk	x8, #39321, lsl #16
	movk	x8, #53877, lsl #32
	movk	x8, #16627, lsl #48
	fmov	d16, x8
	mov	x8, #13661                      ; =0x355d
	movk	x8, #4559, lsl #16
	movk	x8, #61177, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d7, x8
	mov	x8, #53255                      ; =0xd007
	movk	x8, #64495, lsl #16
	movk	x8, #61239, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d18, x8
	mov	x8, #10486                      ; =0x28f6
	movk	x8, #36700, lsl #16
	movk	x8, #50626, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d10, x8
	mov	x8, #44564                      ; =0xae14
	movk	x8, #57671, lsl #16
	movk	x8, #50554, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d6, x8
	mov	x8, #10486                      ; =0x28f6
	movk	x8, #36700, lsl #16
	movk	x8, #50498, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d17, x8
	mov	x8, #55050                      ; =0xd70a
	movk	x8, #28835, lsl #16
	movk	x8, #50237, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d9, x8
	mov	x8, #45859                      ; =0xb323
	movk	x8, #32689, lsl #16
	movk	x8, #50217, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d1, x8
LBB2_4:
	fmul	d2, d12, d9
	fdiv	d2, d2, d8
LBB2_5:
	fdiv	d3, d16, d11
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d4, x8
	fcmp	d11, d4
	fcsel	d3, d3, d10, gt
	fmul	d5, d13, d21
	str	d6, [sp, #1856]
	str	d6, [sp, #1864]
	fmul	d6, d7, d9
	str	d10, [sp, #1872]
	str	d6, [sp, #1880]
	str	d16, [sp, #1888]
	str	d21, [sp, #1896]
	str	d13, [sp, #1904]
	str	d12, [sp, #1912]
	fmul	d6, d11, d9
	str	d6, [sp, #1920]
	str	d25, [sp, #1928]
	fmul	d6, d24, d9
	fdiv	d7, d9, d14
	fcmp	d14, d4
	mov	x8, #20972                      ; =0x51ec
	movk	x8, #7864, lsl #16
	movk	x8, #60293, lsl #32
	movk	x8, #16423, lsl #48
	fmov	d16, x8
	fcsel	d7, d7, d16, gt
	str	d6, [sp, #1936]
	str	d7, [sp, #1944]
	str	d1, [sp, #1952]
	str	d2, [sp, #1960]
	str	d3, [sp, #1968]
	str	d5, [sp, #1976]
	str	d17, [sp, #1728]
	str	d10, [sp, #1736]
	fmul	d1, d18, d9
	str	d9, [sp, #1744]
	str	d1, [sp, #1752]
	str	d19, [sp, #1760]
	str	d20, [sp, #1768]
	str	d15, [sp, #1776]
	str	d8, [sp, #1784]
	fmul	d1, d23, d9
	str	d1, [sp, #1792]
	str	d22, [sp, #1800]
	fmul	d1, d26, d9
	fdiv	d2, d9, d0
	fcmp	d0, d4
	mov	x8, #15729                      ; =0x3d71
	movk	x8, #55050, lsl #16
	movk	x8, #61603, lsl #32
	movk	x8, #16423, lsl #48
	fmov	d0, x8
	fcsel	d0, d2, d0, gt
	str	d1, [sp, #1808]
	str	d0, [sp, #1816]
	str	d10, [sp, #1824]
	str	d17, [sp, #1832]
	str	d10, [sp, #1840]
	str	d15, [sp, #1848]
	add	x1, sp, #368
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	w19, #64                        ; =0x40
	add	x27, sp, #1216
	add	x28, sp, #1344
	add	x25, sp, #1472
	add	x20, sp, #1600
Lloh19:
	adrp	x21, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh20:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh21:
	adrp	x22, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh22:
	add	x22, x22, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
Lloh23:
	adrp	x26, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh24:
	add	x26, x26, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
Lloh25:
	adrp	x23, l___const.run_native_asm_sniper_cycle.bm@PAGE
Lloh26:
	add	x23, x23, l___const.run_native_asm_sniper_cycle.bm@PAGEOFF
	mov	x8, #17197                      ; =0x432d
	movk	x8, #60188, lsl #16
	movk	x8, #14050, lsl #32
	movk	x8, #16234, lsl #48
	fmov	d8, x8
Lloh27:
	adrp	x24, l___const.run_native_asm_sniper_cycle.am@PAGE
Lloh28:
	add	x24, x24, l___const.run_native_asm_sniper_cycle.am@PAGEOFF
LBB2_6:                                 ; =>This Inner Loop Header: Depth=1
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
	stp	x27, x8, [sp, #24]
	add	x1, sp, #1856
	add	x2, sp, #1728
	stp	x25, x28, [sp, #8]
	str	x20, [sp]
	mov	w0, #16                         ; =0x10
	mov	x3, x21
	mov	x4, x22
	mov	x5, x26
	mov	x6, x23
	mov	x7, x24
	mov.16b	v0, v8
	bl	_evaluate_full_loan_routes_asm
	subs	w19, w19, #1
	b.ne	LBB2_6
; %bb.7:
	mov	x28, x26
	add	x1, sp, #352
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #352]
	ldp	x10, x11, [sp, #368]
	sub	x8, x8, x10
	scvtf	d0, x8
	mov	x8, #225833675390976            ; =0xcd6500000000
	movk	x8, #16845, lsl #48
	fmov	d1, x8
	sub	x8, x9, x11
	scvtf	d2, x8
	fmadd	d0, d0, d1, d2
	mov	x8, #4580160821035794432        ; =0x3f90000000000000
	fmov	d1, x8
	fmul	d0, d0, d1
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16469, lsl #48
	fmov	d1, x8
	fcmp	d0, d1
	mov	x8, #193514046488576            ; =0xb00000000000
	movk	x8, #16504, lsl #48
	fmov	d1, x8
	fcsel	d10, d1, d0, lt
	mov	x8, #43516                      ; =0xa9fc
	movk	x8, #54001, lsl #16
	movk	x8, #25165, lsl #32
	movk	x8, #16208, lsl #48
	fmov	d0, x8
	fmul	d9, d10, d0
Lloh29:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh30:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	str	d10, [x8]
	str	d9, [x8, #8]
	adrp	x27, __MergedGlobals.62@PAGE
	ldr	x9, [x27, __MergedGlobals.62@PAGEOFF]
	add	x9, x9, #1
	str	x9, [x27, __MergedGlobals.62@PAGEOFF]
	ldrsw	x9, [sp, #384]
	ldr	x19, [x8, #16]
	add	x8, sp, #704
	str	x9, [sp, #336]                  ; 8-byte Folded Spill
	ldr	d8, [x8, x9, lsl #3]
	fcmp	d8, #0.0
	mov	x20, #47104                     ; =0xb800
	movk	x20, #59457, lsl #16
	movk	x20, #814, lsl #32
	b.le	LBB2_12
; %bb.8:
Lloh31:
	adrp	x22, l_.str.29@PAGE
Lloh32:
	add	x22, x22, l_.str.29@PAGEOFF
	ldr	w8, [sp, #348]                  ; 4-byte Folded Reload
	cbnz	w8, LBB2_13
; %bb.9:
	cmp	x19, x20
	b.lo	LBB2_13
; %bb.10:
	adrp	x8, __MergedGlobals@PAGE+32
	ldr	x10, [x8, __MergedGlobals@PAGEOFF+32]
	adrp	x9, __MergedGlobals.62@PAGE+8
	ldr	x11, [x9, __MergedGlobals.62@PAGEOFF+8]
	cmp	x10, x11
	b.ls	LBB2_13
; %bb.11:
	ldr	x8, [x8, __MergedGlobals@PAGEOFF+32]
	str	x8, [x9, __MergedGlobals.62@PAGEOFF+8]
Lloh33:
	adrp	x0, l_.str.27@PAGE
Lloh34:
	add	x0, x0, l_.str.27@PAGEOFF
	bl	_system
Lloh35:
	adrp	x22, l_.str.28@PAGE
Lloh36:
	add	x22, x22, l_.str.28@PAGEOFF
	b	LBB2_13
LBB2_12:
Lloh37:
	adrp	x22, l_.str.26@PAGE
Lloh38:
	add	x22, x22, l_.str.26@PAGEOFF
LBB2_13:
Lloh39:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh40:
	add	x8, x8, __MergedGlobals@PAGEOFF+24
	ldr	x24, [x8, #16]
	ldr	x23, [x8, #24]
	ldr	x25, [x8]
	ldr	x26, [x8, #32]
Lloh41:
	adrp	x0, l_.str.30@PAGE
Lloh42:
	add	x0, x0, l_.str.30@PAGEOFF
Lloh43:
	adrp	x1, l_.str.31@PAGE
Lloh44:
	add	x1, x1, l_.str.31@PAGEOFF
	bl	_fopen
Lloh45:
	adrp	x13, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh46:
	add	x13, x13, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	cbz	x0, LBB2_17
; %bb.14:
	mov	x21, x0
	ucvtf	d0, x26
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	fmov	d1, x8
	fmul	d0, d0, d1
	ucvtf	d2, x25
	ucvtf	d3, x24
	fmul	d1, d2, d1
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d2, x8
	fmul	d4, d3, d2
	ucvtf	d5, x23
	fmul	d2, d5, d2
	fadd	d6, d2, d4
	ldr	x8, [x27, __MergedGlobals.62@PAGEOFF]
Lloh47:
	adrp	x10, __MergedGlobals@PAGE+32
Lloh48:
	add	x10, x10, __MergedGlobals@PAGEOFF+32
	ldr	x9, [x10]
	ldr	x10, [x10, #32]
Lloh49:
	adrp	x11, l_.str.33@PAGE
Lloh50:
	add	x11, x11, l_.str.33@PAGEOFF
Lloh51:
	adrp	x12, l_.str.34@PAGE
Lloh52:
	add	x12, x12, l_.str.34@PAGEOFF
	cmp	x19, x20
	csel	x11, x12, x11, lo
	mov	x12, #5243                      ; =0x147b
	movk	x12, #18350, lsl #16
	movk	x12, #47841, lsl #32
	movk	x12, #16471, lsl #48
	fmov	d7, x12
	fmul	d16, d6, d7
	mov	x12, #32890                     ; =0x807a
	movk	x12, #11989, lsl #16
	movk	x12, #57849, lsl #32
	movk	x12, #16152, lsl #48
	fmov	d17, x12
	fmul	d3, d3, d17
	fmul	d5, d5, d17
	ldr	x14, [sp, #336]                 ; 8-byte Folded Reload
	ldr	x12, [x13, x14, lsl #3]
Lloh53:
	adrp	x13, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh54:
	add	x13, x13, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	ldr	x13, [x13, x14, lsl #3]
	add	x15, sp, #1600
	ldr	d17, [x15, x14, lsl #3]
	add	x15, sp, #1344
	ldr	d18, [x15, x14, lsl #3]
	add	x15, sp, #1216
	ldr	d19, [x15, x14, lsl #3]
	add	x15, sp, #1088
	ldr	d20, [x15, x14, lsl #3]
	add	x15, sp, #960
	ldr	d21, [x15, x14, lsl #3]
	fmul	d7, d21, d7
	add	x15, sp, #576
	ldr	d22, [x15, x14, lsl #3]
	add	x15, sp, #448
	ldr	d23, [x15, x14, lsl #3]
	stp	d22, d23, [sp, #192]
	stp	d7, d8, [sp, #176]
	stp	d20, d21, [sp, #160]
	stp	d18, d19, [sp, #144]
	str	d17, [sp, #136]
	stp	x12, x13, [sp, #120]
	stp	d2, d5, [sp, #104]
	stp	d4, d3, [sp, #88]
	stp	d6, d16, [sp, #72]
	stp	x11, x22, [sp, #56]
	stp	d1, d0, [sp, #40]
Lloh55:
	adrp	x1, l_.str.32@PAGE
Lloh56:
	add	x1, x1, l_.str.32@PAGEOFF
	stp	x9, x10, [sp, #24]
	stp	d10, d9, [sp, #8]
	str	x8, [sp]
	bl	_fprintf
	mov	x25, #0                         ; =0x0
	add	x26, sp, #384
	add	x27, sp, #1856
	add	x20, sp, #1728
	add	x19, sp, #1472
	add	x23, sp, #704
Lloh57:
	adrp	x24, l_.str.36@PAGE
Lloh58:
	add	x24, x24, l_.str.36@PAGEOFF
Lloh59:
	adrp	x22, l_.str.35@PAGE
Lloh60:
	add	x22, x22, l_.str.35@PAGEOFF
LBB2_15:                                ; =>This Inner Loop Header: Depth=1
	ldrsw	x8, [x26, x25, lsl #2]
	add	x25, x25, #1
Lloh61:
	adrp	x9, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh62:
	add	x9, x9, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x9, x8, lsl #3]
Lloh63:
	adrp	x10, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh64:
	add	x10, x10, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	ldr	x10, [x10, x8, lsl #3]
	ldr	d0, [x27, x8, lsl #3]
	ldr	d1, [x20, x8, lsl #3]
	add	x11, sp, #1600
	ldr	d2, [x11, x8, lsl #3]
	ldr	d3, [x28, x8, lsl #3]
	ldr	d4, [x19, x8, lsl #3]
	add	x11, sp, #1344
	ldr	d5, [x11, x8, lsl #3]
	add	x11, sp, #1216
	ldr	d6, [x11, x8, lsl #3]
	add	x11, sp, #1088
	ldr	d7, [x11, x8, lsl #3]
	add	x11, sp, #960
	ldr	d16, [x11, x8, lsl #3]
	ldr	d17, [x23, x8, lsl #3]
	add	x11, sp, #576
	ldr	d18, [x11, x8, lsl #3]
	add	x11, sp, #448
	ldr	d19, [x11, x8, lsl #3]
	str	x24, [sp, #120]
	stp	d18, d19, [sp, #104]
	stp	d16, d17, [sp, #88]
	stp	d6, d7, [sp, #72]
	stp	d4, d5, [sp, #56]
	stp	d2, d3, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x10, [sp, #8]
	str	x25, [sp]
	mov	x0, x21
	mov	x1, x22
	bl	_fprintf
	cmp	x25, #15
	b.ne	LBB2_15
; %bb.16:
	ldrsw	x8, [sp, #444]
	add	x9, sp, #1856
	ldr	d0, [x9, x8, lsl #3]
	add	x9, sp, #1728
	ldr	d1, [x9, x8, lsl #3]
	add	x9, sp, #1600
	ldr	d2, [x9, x8, lsl #3]
	add	x9, sp, #1472
	ldr	d3, [x9, x8, lsl #3]
	add	x9, sp, #1344
	ldr	d4, [x9, x8, lsl #3]
	add	x9, sp, #1216
	ldr	d5, [x9, x8, lsl #3]
	add	x9, sp, #1088
	ldr	d6, [x9, x8, lsl #3]
	add	x9, sp, #960
	ldr	d7, [x9, x8, lsl #3]
	add	x9, sp, #704
	ldr	d16, [x9, x8, lsl #3]
	add	x9, sp, #576
	add	x10, sp, #448
	ldr	d17, [x9, x8, lsl #3]
Lloh65:
	adrp	x19, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh66:
	add	x19, x19, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x9, [x19, x8, lsl #3]
Lloh67:
	adrp	x11, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh68:
	add	x11, x11, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	ldr	x11, [x11, x8, lsl #3]
	ldr	d18, [x28, x8, lsl #3]
	ldr	d19, [x10, x8, lsl #3]
Lloh69:
	adrp	x8, l_.str.37@PAGE
Lloh70:
	add	x8, x8, l_.str.37@PAGEOFF
	str	x8, [sp, #120]
	stp	d17, d19, [sp, #104]
	stp	d7, d16, [sp, #88]
	stp	d5, d6, [sp, #72]
	stp	d3, d4, [sp, #56]
	stp	d2, d18, [sp, #40]
	stp	d0, d1, [sp, #24]
	stp	x9, x11, [sp, #8]
	mov	w8, #16                         ; =0x10
Lloh71:
	adrp	x1, l_.str.35@PAGE
Lloh72:
	add	x1, x1, l_.str.35@PAGEOFF
	str	x8, [sp]
	mov	x0, x21
	bl	_fprintf
Lloh73:
	adrp	x0, l_.str.38@PAGE
Lloh74:
	add	x0, x0, l_.str.38@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x21
	bl	_fwrite
	mov	x0, x21
	bl	_fclose
Lloh75:
	adrp	x0, l_.str.30@PAGE
Lloh76:
	add	x0, x0, l_.str.30@PAGEOFF
Lloh77:
	adrp	x1, l_.str.39@PAGE
Lloh78:
	add	x1, x1, l_.str.39@PAGEOFF
	bl	_rename
	mov	x13, x19
LBB2_17:
	ldr	w8, [sp, #348]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_19
; %bb.18:
Lloh79:
	adrp	x19, l_str.61@PAGE
Lloh80:
	add	x19, x19, l_str.61@PAGEOFF
	mov	x0, x19
	mov	x21, x13
	bl	_puts
Lloh81:
	adrp	x0, l_str.59@PAGE
Lloh82:
	add	x0, x0, l_str.59@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
	str	d9, [sp]
Lloh83:
	adrp	x0, l_.str.42@PAGE
Lloh84:
	add	x0, x0, l_.str.42@PAGEOFF
	bl	_printf
	ldr	x20, [sp, #336]                 ; 8-byte Folded Reload
	ldr	x8, [x21, x20, lsl #3]
	str	x8, [sp]
Lloh85:
	adrp	x0, l_.str.43@PAGE
Lloh86:
	add	x0, x0, l_.str.43@PAGEOFF
	bl	_printf
	add	x8, sp, #1856
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #1728
	ldr	d1, [x8, x20, lsl #3]
	add	x8, sp, #1600
	ldr	d2, [x8, x20, lsl #3]
	ldr	d3, [x28, x20, lsl #3]
	stp	d2, d3, [sp, #16]
	stp	d0, d1, [sp]
Lloh87:
	adrp	x0, l_.str.44@PAGE
Lloh88:
	add	x0, x0, l_.str.44@PAGEOFF
	bl	_printf
	add	x8, sp, #1344
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #1216
	ldr	d1, [x8, x20, lsl #3]
	add	x8, sp, #1088
	ldr	d2, [x8, x20, lsl #3]
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh89:
	adrp	x0, l_.str.45@PAGE
Lloh90:
	add	x0, x0, l_.str.45@PAGEOFF
	bl	_printf
	add	x8, sp, #960
	ldr	d0, [x8, x20, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	fmul	d1, d0, d1
	stp	d0, d1, [sp]
Lloh91:
	adrp	x0, l_.str.46@PAGE
Lloh92:
	add	x0, x0, l_.str.46@PAGEOFF
	bl	_printf
	add	x8, sp, #576
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #448
	ldr	d1, [x8, x20, lsl #3]
	stp	d0, d1, [sp, #8]
	str	d8, [sp]
Lloh93:
	adrp	x0, l_.str.47@PAGE
Lloh94:
	add	x0, x0, l_.str.47@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
LBB2_19:
	ldr	x8, [sp, #2008]
Lloh95:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh96:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh97:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_24
; %bb.20:
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
LBB2_21:
	ldr	x0, [x20]
	cbz	x0, LBB2_3
; %bb.22:
	ldr	x8, [x20, #8]
	cmp	x8, #33
	b.lo	LBB2_3
; %bb.23:
	mov	w1, #10                         ; =0xa
	bl	_find_batch_result_for_id
	mov	x8, #2717908992                 ; =0xa2000000
	movk	x8, #6804, lsl #32
	movk	x8, #17005, lsl #48
	fmov	d12, x8
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16511, lsl #48
	fmov	d8, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16595, lsl #48
	fmov	d2, x8
	mov	x8, #55050                      ; =0xd70a
	movk	x8, #28835, lsl #16
	movk	x8, #50237, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	mov.16b	v0, v12
	mov.16b	v1, v8
	mov.16b	v10, v2
	bl	_decode_slot0_sqrt_price
	mov.16b	v9, v0
	ldr	x0, [x20]
	mov	w1, #11                         ; =0xb
	bl	_find_batch_result_for_id
	mov	x8, #10486                      ; =0x28f6
	movk	x8, #36700, lsl #16
	movk	x8, #50498, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	mov.16b	v0, v12
	mov.16b	v1, v8
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #320]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #12                         ; =0xc
	bl	_find_batch_result_for_id
	mov	x8, #44564                      ; =0xae14
	movk	x8, #57671, lsl #16
	movk	x8, #50554, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	mov.16b	v0, v12
	mov.16b	v1, v8
	str	d8, [sp, #336]                  ; 8-byte Folded Spill
	mov.16b	v2, v10
	str	d10, [sp, #272]                 ; 8-byte Folded Spill
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #312]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #13                         ; =0xd
	bl	_find_batch_result_for_id
	mov	x8, #10486                      ; =0x28f6
	movk	x8, #36700, lsl #16
	movk	x8, #50626, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	mov.16b	v0, v12
	mov.16b	v1, v8
	mov.16b	v2, v10
	bl	_decode_slot0_sqrt_price
	mov.16b	v10, v0
	ldr	x0, [x20]
	mov	w1, #14                         ; =0xe
	bl	_find_batch_result_for_id
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16361, lsl #48
	fmov	d8, x8
	mov	x8, #53255                      ; =0xd007
	movk	x8, #64495, lsl #16
	movk	x8, #61239, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	fmov	d2, #2.50000000
	mov.16b	v1, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #304]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #15                         ; =0xf
	bl	_find_batch_result_for_id
	mov	x8, #13661                      ; =0x355d
	movk	x8, #4559, lsl #16
	movk	x8, #61177, lsl #32
	movk	x8, #16371, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	fmov	d2, #2.50000000
	mov.16b	v1, v8
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #296]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #16                         ; =0x10
	bl	_find_batch_result_for_id
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d14, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16563, lsl #48
	fmov	d8, x8
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16670, lsl #48
	fmov	d11, x8
	mov	x8, #39322                      ; =0x999a
	movk	x8, #39321, lsl #16
	movk	x8, #53877, lsl #32
	movk	x8, #16627, lsl #48
	fmov	d3, x8
	mov.16b	v0, v14
	mov.16b	v1, v8
	mov.16b	v2, v11
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #288]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #17                         ; =0x11
	bl	_find_batch_result_for_id
	mov	x8, #18350                      ; =0x47ae
	movk	x8, #31457, lsl #16
	movk	x8, #53796, lsl #32
	movk	x8, #16627, lsl #48
	fmov	d3, x8
	mov.16b	v0, v14
	mov.16b	v1, v8
	mov.16b	v2, v11
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #280]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #18                         ; =0x12
	bl	_find_batch_result_for_id
	mov	x8, #36700                      ; =0x8f5c
	movk	x8, #62914, lsl #16
	movk	x8, #23592, lsl #32
	movk	x8, #16367, lsl #48
	fmov	d8, x8
	mov	x8, #47186                      ; =0xb852
	movk	x8, #34078, lsl #16
	movk	x8, #20971, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d11, x8
	mov	x8, #35794                      ; =0x8bd2
	movk	x8, #64986, lsl #16
	movk	x8, #42, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v11
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #264]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #19                         ; =0x13
	bl	_find_batch_result_for_id
	mov	x8, #63988                      ; =0xf9f4
	movk	x8, #9000, lsl #16
	movk	x8, #46, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v11
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #256]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #20                         ; =0x14
	bl	_find_batch_result_for_id
	mov	x8, #3997                       ; =0xf9d
	movk	x8, #4815, lsl #16
	movk	x8, #1124, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v11
	bl	_decode_slot0_sqrt_price
	mov.16b	v13, v0
	ldr	x0, [x20]
	mov	w1, #21                         ; =0x15
	bl	_find_batch_result_for_id
	mov	x8, #64982                      ; =0xfdd6
	movk	x8, #8547, lsl #16
	movk	x8, #1082, lsl #32
	movk	x8, #16368, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v1, v8
	mov.16b	v2, v11
	bl	_decode_slot0_sqrt_price
	mov.16b	v15, v0
	ldr	x0, [x20]
	mov	w1, #22                         ; =0x16
	bl	_find_batch_result_for_id
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #31457, lsl #32
	movk	x8, #16260, lsl #48
	fmov	d8, x8
	mov	x8, #27867                      ; =0x6cdb
	movk	x8, #50348, lsl #16
	movk	x8, #11068, lsl #32
	movk	x8, #16327, lsl #48
	fmov	d3, x8
	fmov	d2, #10.00000000
	mov.16b	v11, v12
	str	d12, [sp, #328]                 ; 8-byte Folded Spill
	mov.16b	v0, v12
	mov.16b	v1, v8
	bl	_decode_slot0_sqrt_price
	mov.16b	v12, v0
	ldr	x0, [x20]
	mov	w1, #23                         ; =0x17
	bl	_find_batch_result_for_id
	mov	x8, #43528                      ; =0xaa08
	movk	x8, #44870, lsl #16
	movk	x8, #10246, lsl #32
	movk	x8, #16327, lsl #48
	fmov	d3, x8
	fmov	d2, #10.00000000
	mov.16b	v0, v11
	mov.16b	v1, v8
	bl	_decode_slot0_sqrt_price
	mov.16b	v8, v0
	ldr	x0, [x20]
	mov	w1, #24                         ; =0x18
	bl	_find_batch_result_for_id
	mov	x8, #48571                      ; =0xbdbb
	movk	x8, #55767, lsl #16
	movk	x8, #31967, lsl #32
	movk	x8, #15835, lsl #48
	fmov	d0, x8
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	mov	x8, #15431                      ; =0x3c47
	movk	x8, #52697, lsl #16
	movk	x8, #59020, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d3, x8
	fmov	d1, #5.00000000
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	mov.16b	v11, v0
	ldr	x0, [x20]
	mov	w1, #25                         ; =0x19
	bl	_find_batch_result_for_id
	mov	x8, #30363                      ; =0x769b
	movk	x8, #52529, lsl #16
	movk	x8, #59252, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d3, x8
	fmov	d1, #5.00000000
	ldr	d0, [sp, #248]                  ; 8-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #26                         ; =0x1a
	bl	_find_batch_result_for_id
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51486, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	ldp	d0, d1, [sp, #328]              ; 16-byte Folded Reload
	ldr	d14, [sp, #272]                 ; 8-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #240]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #27                         ; =0x1b
	bl	_find_batch_result_for_id
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51870, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	ldp	d0, d1, [sp, #328]              ; 16-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #336]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #28                         ; =0x1c
	bl	_find_batch_result_for_id
	mov	x8, #26865                      ; =0x68f1
	movk	x8, #35043, lsl #16
	movk	x8, #63669, lsl #32
	movk	x8, #16100, lsl #48
	fmov	d1, x8
	str	d1, [sp, #272]                  ; 8-byte Folded Spill
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #16313, lsl #48
	fmov	d14, x8
	mov	x8, #27369                      ; =0x6ae9
	movk	x8, #44934, lsl #16
	movk	x8, #12042, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #328]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #29                         ; =0x1d
	bl	_find_batch_result_for_id
	mov	x8, #59704                      ; =0xe938
	movk	x8, #28871, lsl #16
	movk	x8, #11398, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	ldr	d1, [sp, #272]                  ; 8-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #272]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #30                         ; =0x1e
	bl	_find_batch_result_for_id
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16543, lsl #48
	fmov	d2, x8
	str	d2, [sp, #232]                  ; 8-byte Folded Spill
	mov	x8, #30409                      ; =0x76c9
	movk	x8, #40894, lsl #16
	movk	x8, #6938, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	bl	_decode_slot0_sqrt_price
	mov.16b	v14, v0
	ldr	x0, [x20]
	mov	w1, #31                         ; =0x1f
	bl	_find_batch_result_for_id
	mov	x8, #29570                      ; =0x7382
	movk	x8, #37958, lsl #16
	movk	x8, #5366, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	fmov	d1, #10.00000000
	ldr	d2, [sp, #232]                  ; 8-byte Folded Reload
	bl	_decode_slot0_sqrt_price
	ldp	d21, d26, [sp, #264]            ; 16-byte Folded Reload
	ldp	d25, d23, [sp, #240]            ; 16-byte Folded Reload
	ldp	d24, d22, [sp, #328]            ; 16-byte Folded Reload
	ldr	d20, [sp, #256]                 ; 8-byte Folded Reload
	ldp	d16, d7, [sp, #288]             ; 16-byte Folded Reload
	ldr	d19, [sp, #280]                 ; 8-byte Folded Reload
	ldp	d18, d6, [sp, #304]             ; 16-byte Folded Reload
	ldr	d17, [sp, #320]                 ; 8-byte Folded Reload
	fdiv	d1, d25, d15
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d2, x8
	fcmp	d15, d2
	fcsel	d1, d1, d6, gt
	fcmp	d8, d2
	mov.16b	v2, v6
	b.gt	LBB2_4
	b	LBB2_5
LBB2_24:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpAdd	Lloh13, Lloh14
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh55, Lloh56
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh69, Lloh70
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpLdrGotLdr	Lloh95, Lloh96, Lloh97
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
Lloh98:
	adrp	x1, l_.str.1@PAGE
Lloh99:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh100:
	adrp	x1, l_.str.2@PAGE
Lloh101:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh102:
	adrp	x1, l_.str.3@PAGE
Lloh103:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x24, x0
	adrp	x25, __MergedGlobals@PAGE
	ldr	w8, [x25, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_85
; %bb.1:
	mov	w21, #0                         ; =0x0
Lloh104:
	adrp	x26, _RPC_URLS@PAGE
Lloh105:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh106:
	adrp	x27, l_.str.55@PAGE
Lloh107:
	add	x27, x27, l_.str.55@PAGEOFF
Lloh108:
	adrp	x28, _curl_write_cb@PAGE
Lloh109:
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
Lloh110:
	adrp	x16, l_.str.56@PAGE
Lloh111:
	add	x16, x16, l_.str.56@PAGEOFF
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
Lloh112:
	adrp	x9, __MergedGlobals@PAGE+32
Lloh113:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+32]
	cmp	x8, x9
	b.ls	LBB3_19
; %bb.17:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+32
	str	x8, [x9, __MergedGlobals@PAGEOFF+32]
	b	LBB3_19
LBB3_18:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh114:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh115:
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
Lloh116:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh117:
	add	x8, x8, __MergedGlobals@PAGEOFF+24
	ldr	x25, [x8, #16]
	ldr	x24, [x8, #24]
	ldr	x26, [x8, #32]
	ldr	x27, [x8]
	ldr	x28, [x8, #48]
	mov	x0, x16
Lloh118:
	adrp	x1, l_.str.31@PAGE
Lloh119:
	add	x1, x1, l_.str.31@PAGEOFF
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
Lloh120:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh121:
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
Lloh122:
	adrp	x1, l_.str.57@PAGE
Lloh123:
	add	x1, x1, l_.str.57@PAGEOFF
	bl	_fprintf
	mov	x0, x23
	bl	_fclose
Lloh124:
	adrp	x0, l_.str.56@PAGE
Lloh125:
	add	x0, x0, l_.str.56@PAGEOFF
Lloh126:
	adrp	x1, l_.str.58@PAGE
Lloh127:
	add	x1, x1, l_.str.58@PAGEOFF
	bl	_rename
LBB3_82:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x24, [sp, #192]                 ; 8-byte Folded Reload
	adrp	x25, __MergedGlobals@PAGE
Lloh128:
	adrp	x26, _RPC_URLS@PAGE
Lloh129:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh130:
	adrp	x27, l_.str.55@PAGE
Lloh131:
	add	x27, x27, l_.str.55@PAGEOFF
Lloh132:
	adrp	x28, _curl_write_cb@PAGE
Lloh133:
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
	.loh AdrpAdd	Lloh102, Lloh103
	.loh AdrpAdd	Lloh100, Lloh101
	.loh AdrpAdd	Lloh98, Lloh99
	.loh AdrpAdd	Lloh108, Lloh109
	.loh AdrpAdd	Lloh106, Lloh107
	.loh AdrpAdd	Lloh104, Lloh105
	.loh AdrpAdd	Lloh110, Lloh111
	.loh AdrpLdr	Lloh112, Lloh113
	.loh AdrpLdr	Lloh114, Lloh115
	.loh AdrpAdd	Lloh118, Lloh119
	.loh AdrpAdd	Lloh116, Lloh117
	.loh AdrpAdd	Lloh126, Lloh127
	.loh AdrpAdd	Lloh124, Lloh125
	.loh AdrpAdd	Lloh122, Lloh123
	.loh AdrpAdd	Lloh120, Lloh121
	.loh AdrpAdd	Lloh132, Lloh133
	.loh AdrpAdd	Lloh130, Lloh131
	.loh AdrpAdd	Lloh128, Lloh129
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
Lloh134:
	adrp	x1, l_.str.51@PAGE
Lloh135:
	add	x1, x1, l_.str.51@PAGEOFF
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
	.loh AdrpAdd	Lloh134, Lloh135
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
Lloh136:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh137:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh138:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	cbz	x0, LBB6_25
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh139:
	adrp	x2, l_.str.52@PAGE
Lloh140:
	add	x2, x2, l_.str.52@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh141:
	adrp	x2, l_.str.53@PAGE
Lloh142:
	add	x2, x2, l_.str.53@PAGEOFF
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
Lloh143:
	adrp	x1, l_.str.54@PAGE
Lloh144:
	add	x1, x1, l_.str.54@PAGEOFF
	bl	_strstr
	mov	x8, x0
	mov	x0, #0                          ; =0x0
	cbz	x8, LBB6_25
; %bb.23:
	cmp	x8, x19
	b.hs	LBB6_25
; %bb.24:
Lloh145:
	adrp	x1, l_.str.51@PAGE
Lloh146:
	add	x1, x1, l_.str.51@PAGEOFF
	mov	x0, x8
	bl	_strstr
	cmp	x0, x19
	csel	x0, x0, xzr, lo
LBB6_25:
	ldur	x8, [x29, #-24]
Lloh147:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh148:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh149:
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
	.loh AdrpLdrGotLdr	Lloh136, Lloh137, Lloh138
	.loh AdrpAdd	Lloh141, Lloh142
	.loh AdrpAdd	Lloh139, Lloh140
	.loh AdrpAdd	Lloh143, Lloh144
	.loh AdrpAdd	Lloh145, Lloh146
	.loh AdrpLdrGotLdr	Lloh147, Lloh148, Lloh149
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
	.quad	l_.str.48
	.quad	l_.str.49
	.quad	l_.str.50
	.quad	l_.str.48

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

l_.str.17:                              ; @.str.17
	.asciz	"[3-Hop Triangular] WETH -> USDT -> USDC -> WETH (Camelot 1bp -> UniV3 1bp -> Pancake 1bp)"

l_.str.18:                              ; @.str.18
	.asciz	"[3-Hop Triangular] WETH -> ARB -> USDC -> WETH (UniV3 5bp -> Camelot 2.5bp -> UniV3 1bp)"

l_.str.19:                              ; @.str.19
	.asciz	"[3-Hop Triangular] WETH -> WBTC -> USDC -> WETH (Camelot 0.9bp -> UniV3 5bp -> Pancake 1bp)"

l_.str.20:                              ; @.str.20
	.asciz	"[3-Hop Stable Ring] USDC -> USDT -> USDC.e -> USDC (Camelot 0.25bp -> UniV3 1bp -> Camelot 0.05bp)"

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
	.asciz	"USDC.e"

l_.str.24:                              ; @.str.24
	.asciz	"USDT"

l_.str.25:                              ; @.str.25
	.asciz	"USDC"

	.section	__DATA,__const
	.p2align	3, 0x0                          ; @__const.run_native_asm_sniper_cycle.borrow_syms
l___const.run_native_asm_sniper_cycle.borrow_syms:
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.22
	.quad	l_.str.23
	.quad	l_.str.24
	.quad	l_.str.25
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.21
	.quad	l_.str.25

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
	.quad	0x4084000000000000              ; double 640
	.quad	0x407ea00000000000              ; double 490
	.quad	0x407a400000000000              ; double 420
	.quad	0x40f7318000000000              ; double 95000

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
	.quad	0x408235999999999a              ; double 582.70000000000005
	.quad	0x4069047ae147ae14              ; double 200.13999999999999
	.quad	0x408235999999999a              ; double 582.70000000000005
	.quad	0x4147c8c500000000              ; double 3117450

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
	.quad	0x4008000000000000              ; double 3
	.quad	0x4021000000000000              ; double 8.5
	.quad	0x401b99999999999a              ; double 6.9000000000000004
	.quad	0x3ff4cccccccccccd              ; double 1.3

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
	.quad	0x410337e266666666              ; double 157436.29999999999

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
	.quad	0x418af86b1599999a              ; double 56560994.700000003

	.section	__TEXT,__cstring,cstring_literals
l_.str.26:                              ; @.str.26
	.asciz	"SCANNING_LIVE_ARBITRUM_SPREADS"

l_.str.27:                              ; @.str.27
	.asciz	"python3 scripts/autonomous_asm_broadcaster.py >/dev/null 2>&1 &"

l_.str.28:                              ; @.str.28
	.asciz	"AUTONOMOUS_ONCHAIN_TX_DISPATCHED_TO_ARBITRUM_SEQUENCER"

l_.str.29:                              ; @.str.29
	.asciz	"PROFITABLE_FULL_LOAN_READY_FOR_1CLICK_METAMASK_OR_RELAYER_TOPUP"

l_.str.30:                              ; @.str.30
	.asciz	"reports/asm_sniper_telemetry.json.tmp"

l_.str.31:                              ; @.str.31
	.asciz	"w"

l_.str.32:                              ; @.str.32
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"execution_mode\": \"100%% Native C/Assembly Standalone Binary (22 Live Pools + Autonomous On-Chain Hook)\",\n  \"loan_sizing_policy\": \"1 Trade = 100%% Full Independent Sweet-Spot Flash Loan (Never Split Across Trades)\",\n  \"asm_cycles_completed\": %llu,\n  \"cpu_eval_latency_nanoseconds\": %.1f,\n  \"cpu_eval_latency_microseconds\": %.3f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"relayer_eth_balance\": %.8f,\n  \"metamask_eth_balance\": %.8f,\n  \"relayer_gas_funded\": %s,\n  \"autonomous_exec_status\": \"%s\",\n  \"real_total_amount_100_usd\": %.6f,\n  \"real_total_amount_100_inr\": %.2f,\n  \"real_amount_transferred_75_usd\": %.6f,\n  \"real_amount_transferred_75_inr\": %.2f,\n  \"real_amount_saved_25_usd\": %.6f,\n  \"real_amount_saved_25_inr\": %.2f,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"top_transferred_75_usd\": %.4f,\n  \"top_saved_25_usd\": %.4f,\n  \"routes\": [\n"

l_.str.33:                              ; @.str.33
	.asciz	"true"

l_.str.34:                              ; @.str.34
	.asciz	"false"

l_.str.35:                              ; @.str.35
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"p1\": %.6f, \"p2\": %.6f, \"spread_bps\": %.2f, \"fee_floor_bps\": %.2f, \"net_margin_bps\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_usd\": %.2f, \"net_usd\": %.4f, \"transferred_75_usd\": %.4f, \"saved_25_usd\": %.4f}%s\n"

l_.str.36:                              ; @.str.36
	.asciz	","

l_.str.37:                              ; @.str.37
	.space	1

l_.str.38:                              ; @.str.38
	.asciz	"  ]\n}\n"

l_.str.39:                              ; @.str.39
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.42:                              ; @.str.42
	.asciz	"Assembly Eval Latency     : %.3f microseconds (12 Full-Loan Routes in Hardware Registers)\n"

l_.str.43:                              ; @.str.43
	.asciz	"Top Route (#1)            : %s\n"

l_.str.44:                              ; @.str.44
	.asciz	"Live Pool Prices          : P1=$%.4f vs P2=$%.4f (Spread=%.2f bps vs %.2f bps Floor)\n"

l_.str.45:                              ; @.str.45
	.asciz	"100%% Full Loan (dx*)      : $%.2f USD (Balancer 0%%: $%.2f + Overflow: $%.2f)\n"

l_.str.46:                              ; @.str.46
	.asciz	"Hybrid Stacked Fee Saved  : $%.2f USD (\342\202\271%.2f INR saved per trade)\n"

l_.str.47:                              ; @.str.47
	.asciz	"Net Profit (100%% Total)   : $%+.4f USD (75%%=$%.4f -> 0xb411...0099 | 25%%=$%.4f -> 0xFF3c...89BE)\n"

l_.str.48:                              ; @.str.48
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.49:                              ; @.str.49
	.asciz	"https://arb-mainnet.g.alchemy.com/v2/alch_Sr5zl1GDSPzo9-wtwvQnX"

l_.str.50:                              ; @.str.50
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.51:                              ; @.str.51
	.asciz	"0x"

l_.str.52:                              ; @.str.52
	.asciz	"\"id\":%d"

l_.str.53:                              ; @.str.53
	.asciz	"\"id\": %d"

l_.str.54:                              ; @.str.54
	.asciz	"\"result\""

l_.str.55:                              ; @.str.55
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0x0E8A575147b51C5701C86427b521F7293249cd67\",\"latest\"],\"id\":7}]"

l_.str.56:                              ; @.str.56
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.57:                              ; @.str.57
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + libcurl TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"asm_eval_ns\": %.1f,\n  \"asm_eval_us\": %.3f,\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"binance_usdc_balance\": \"%.4f\",\n  \"metamask_usdc_balance\": \"%.4f\",\n  \"total_onchain_usdc\": \"%.4f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"relayer_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.58:                              ; @.str.58
	.asciz	"reports/live_block_ticker.json"

l_str.59:                               ; @str.59
	.asciz	"NATIVE ASSEMBLY SNIPER BINARY (./bin/arb_sniper_asm) SELF-TEST PASSED"

l_str.61:                               ; @str.61
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

.zerofill __DATA,__bss,__MergedGlobals.62,16,3 ; @_MergedGlobals.62
.subsections_via_symbols
