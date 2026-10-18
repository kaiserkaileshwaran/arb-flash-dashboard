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
	.cfi_def_cfa_offset 160
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
	mov	w9, #1                          ; =0x1
	ldp	x11, x23, [sp, #232]
	mov	x10, #59921                     ; =0xea11
	movk	x10, #33069, lsl #16
	movk	x10, #38809, lsl #32
	movk	x10, #15729, lsl #48
	fmov	d1, x10
	mov	x10, #149533581377536           ; =0x880000000000
	movk	x10, #16579, lsl #48
	fmov	d2, x10
	ldp	x13, x12, [sp, #216]
	mov	x10, #7378697629483820646       ; =0x6666666666666666
	movk	x10, #16386, lsl #48
	fmov	d3, x10
	mov	x10, #4634204016564240384       ; =0x4050000000000000
	fmov	d4, x10
	ldp	x15, x14, [sp, #200]
	mov	x10, #4639833516098453504       ; =0x4064000000000000
	fmov	d5, x10
	mov	x10, #20972                     ; =0x51ec
	movk	x10, #7864, lsl #16
	movk	x10, #60293, lsl #32
	movk	x10, #16289, lsl #48
	fmov	d6, x10
	ldp	x17, x16, [sp, #184]
	mov	x10, #26865                     ; =0x68f1
	movk	x10, #35043, lsl #16
	movk	x10, #63669, lsl #32
	movk	x10, #48868, lsl #48
	fmov	d7, x10
	mov	x10, #26865                     ; =0x68f1
	movk	x10, #35043, lsl #16
	movk	x10, #63669, lsl #32
	movk	x10, #16100, lsl #48
	fmov	d16, x10
	ldp	x20, x19, [sp, #168]
	mov	x10, #7864                      ; =0x1eb8
	movk	x10, #60293, lsl #16
	movk	x10, #47185, lsl #32
	movk	x10, #16270, lsl #48
	fmov	d17, x10
	mov	x10, #17197                     ; =0x432d
	movk	x10, #60188, lsl #16
	movk	x10, #14050, lsl #32
	movk	x10, #16154, lsl #48
	fmov	d18, x10
	ldr	x21, [sp, #160]
	mov	x10, #22038                     ; =0x5616
	movk	x10, #40679, lsl #16
	movk	x10, #943, lsl #32
	movk	x10, #15570, lsl #48
	fmov	d19, #-1.50000000
	fmov	d20, x10
	mov	x10, #43516                     ; =0xa9fc
	movk	x10, #54001, lsl #16
	movk	x10, #25165, lsl #32
	movk	x10, #16192, lsl #48
	fmov	d21, x10
	fmov	d22, #1.00000000
	mov	x10, #640942080                 ; =0x26340000
	movk	x10, #27637, lsl #32
	movk	x10, #49932, lsl #48
	fmov	d23, #1.50000000
	fmov	d24, x10
	mov	x10, #-7378697629483820647      ; =0x9999999999999999
	movk	x10, #39322
	movk	x10, #16353, lsl #48
	fmov	d25, x10
	mov	x10, #57147                     ; =0xdf3b
	movk	x10, #36175, lsl #16
	movk	x10, #28311, lsl #32
	movk	x10, #16290, lsl #48
	fmov	d27, #15.00000000
	fmov	d28, x10
	mov	x10, #-3689348814741910324      ; =0xcccccccccccccccc
	movk	x10, #52429
	movk	x10, #16348, lsl #48
	fmov	d29, x10
	movi.2d	v30, #0000000000000000
	mov	x22, #35184372088832            ; =0x200000000000
	movk	x22, #16475, lsl #48
	mov	x25, #3689348814741910323       ; =0x3333333333333333
	movk	x25, #16474, lsl #48
	fmov	d31, #0.75000000
	mov	x26, #48234                     ; =0xbc6a
	movk	x26, #37748, lsl #16
	movk	x26, #1048, lsl #32
	movk	x26, #16358, lsl #48
	mov	x27, #34184                     ; =0x8588
	movk	x27, #54106, lsl #16
	movk	x27, #58300, lsl #32
	movk	x27, #16244, lsl #48
	mov	x10, x23
	mov	w0, w0
	b	LBB0_3
LBB0_2:                                 ;   in Loop: Header=BB0_3 Depth=1
	mov	x24, #0                         ; =0x0
	str	w8, [x23, x24, lsl #2]
	add	x8, x8, #1
	add	x9, x9, #1
	add	x10, x10, #4
	cmp	x8, x0
	b.eq	LBB0_19
LBB0_3:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB0_14 Depth 2
	add	x28, x8, #4
	cmp	x28, x0
	b.hs	LBB0_5
; %bb.4:                                ;   in Loop: Header=BB0_3 Depth=1
	prfm	pldl1keep, [x1, x28, lsl #3]
	prfm	pldl1keep, [x2, x28, lsl #3]
	prfm	pldl1keep, [x3, x28, lsl #3]
	prfm	pldl1keep, [x4, x28, lsl #3]
LBB0_5:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	d8, [x1, x8, lsl #3]
	ldr	d9, [x2, x8, lsl #3]
	fcmp	d8, d9
	fcsel	d10, d8, d9, ls
	csel	x24, x3, x4, ls
	ldr	d12, [x24, x8, lsl #3]
	fcsel	d11, d9, d8, ls
	csel	x24, x4, x3, ls
	ldr	d13, [x24, x8, lsl #3]
	movi.2d	v8, #0000000000000000
	fcmp	d10, d1
	b.le	LBB0_7
; %bb.6:                                ;   in Loop: Header=BB0_3 Depth=1
	fsub	d8, d11, d10
	fdiv	d8, d8, d10
	fmul	d8, d8, d2
LBB0_7:                                 ;   in Loop: Header=BB0_3 Depth=1
	ldr	d14, [x5, x8, lsl #3]
	fsub	d9, d8, d14
	fcmp	d14, d3
	fcsel	d14, d5, d4, ls
	fadd	d15, d9, d19
	fmadd	d15, d15, d6, d22
	fcmp	d9, d23
	fcsel	d15, d15, d22, gt
	fdiv	d14, d14, d15
	fmul	d10, d10, d14
	fmul	d10, d12, d10
	fmul	d11, d11, d14
	fmul	d11, d13, d11
	fmul	d13, d10, d11
	fadd	d14, d10, d11
	ldr	d11, [x6, x8, lsl #3]
	ldr	d10, [x7, x8, lsl #3]
	fadd	d10, d11, d10
	fadd	d12, d8, d7
	fcmp	d8, d16
	fcsel	d12, d12, d17, gt
	fcmp	d9, #0.0
	str	d8, [x21, x8, lsl #3]
	fcsel	d12, d12, d9, ls
	str	d12, [x20, x8, lsl #3]
	fmul	d15, d12, d18
	fcmp	d14, d20
	mov.16b	v12, v10
	b.le	LBB0_9
; %bb.8:                                ;   in Loop: Header=BB0_3 Depth=1
	fmov	d26, #0.50000000
	fmul	d12, d15, d26
	fmul	d12, d12, d13
	fdiv	d12, d12, d14
LBB0_9:                                 ;   in Loop: Header=BB0_3 Depth=1
	fcmp	d12, d11
	fcsel	d12, d11, d12, mi
	fcmp	d12, d10
	fcsel	d12, d12, d10, le
	fcmp	d9, d27
	fcsel	d10, d10, d12, gt
	fcmp	d10, d11
	fcsel	d12, d10, d11, ls
	fsub	d11, d10, d11
	fcsel	d11, d11, d30, gt
	fmul	d26, d10, d10
	fneg	d14, d14
	fdiv	d14, d14, d13
	fcmp	d13, d20
	fcsel	d13, d14, d24, gt
	fmul	d26, d13, d26
	fmadd	d26, d10, d15, d26
	fmul	d13, d15, d10
	fmul	d13, d13, d25
	fcmp	d26, d0
	fcsel	d26, d26, d13, hi
	fmadd	d13, d8, d29, d28
	fcmp	d26, d28
	fcsel	d13, d13, d26, mi
	fcmp	d9, #0.0
	b.hi	LBB0_12
; %bb.10:                               ;   in Loop: Header=BB0_3 Depth=1
	fmov	d26, x22
	fcmp	d13, d26
	b.le	LBB0_12
; %bb.11:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x24, #140737488355328           ; =0x800000000000
	movk	x24, #16434, lsl #48
	fmov	d26, x24
	mov	x24, #7378697629483820646       ; =0x6666666666666666
	movk	x24, #16428, lsl #48
	fmov	d9, x24
	fmadd	d26, d8, d9, d26
	fmov	d8, x25
	fcmp	d26, d8
	fcsel	d13, d26, d8, le
LBB0_12:                                ;   in Loop: Header=BB0_3 Depth=1
	fmul	d26, d10, d21
	fsub	d8, d13, d0
	fmov	d9, x26
	fmul	d9, d8, d9
	fcmp	d8, #0.0
	fcsel	d8, d9, d30, gt
	fmul	d9, d8, d31
	fcmp	d8, #0.0
	fcsel	d14, d9, d30, gt
	fsub	d9, d8, d9
	fcsel	d9, d9, d30, gt
	fmov	d15, x27
	str	d10, [x19, x8, lsl #3]
	str	d12, [x17, x8, lsl #3]
	fcmp	d14, d15
	fcsel	d8, d30, d8, mi
	str	d11, [x16, x8, lsl #3]
	str	d26, [x15, x8, lsl #3]
	str	d13, [x14, x8, lsl #3]
	str	d8, [x13, x8, lsl #3]
	fcsel	d26, d30, d14, mi
	fcsel	d9, d30, d9, mi
	str	d26, [x12, x8, lsl #3]
	str	d9, [x11, x8, lsl #3]
	cbz	w8, LBB0_2
; %bb.13:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x28, x10
	mov	x30, x9
LBB0_14:                                ;   Parent Loop BB0_3 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldursw	x24, [x28, #-4]
	ldr	d26, [x13, x24, lsl #3]
	fcmp	d26, d8
	b.pl	LBB0_17
; %bb.15:                               ;   in Loop: Header=BB0_14 Depth=2
	str	w24, [x28], #-4
	sub	x30, x30, #1
	cmp	x30, #1
	b.gt	LBB0_14
; %bb.16:                               ;   in Loop: Header=BB0_3 Depth=1
	mov	x24, #0                         ; =0x0
	b	LBB0_18
LBB0_17:                                ;   in Loop: Header=BB0_3 Depth=1
	sub	x24, x30, #1
LBB0_18:                                ;   in Loop: Header=BB0_3 Depth=1
	sxtw	x24, w24
	str	w8, [x23, x24, lsl #2]
	add	x8, x8, #1
	add	x9, x9, #1
	add	x10, x10, #4
	cmp	x8, x0
	b.ne	LBB0_3
LBB0_19:
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
LBB0_20:
	ret
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
	add	x0, sp, #40
	mov	x1, #0                          ; =0x0
	mov	x3, #0                          ; =0x0
	bl	_pthread_create
	bl	_curl_easy_init
	mov	x19, x0
	stp	xzr, xzr, [sp, #16]
	str	xzr, [sp, #32]
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
	mov	w8, #1                          ; =0x1
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #213                        ; =0xd5
	bl	_curl_easy_setopt
	mov	w8, #3600                       ; =0xe10
	str	x8, [sp]
	mov	x0, x19
	mov	w1, #92                         ; =0x5c
	bl	_curl_easy_setopt
	adrp	x21, __MergedGlobals@PAGE
	ldr	w8, [x21, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB1_8
LBB1_7:                                 ; =>This Inner Loop Header: Depth=1
	add	x2, sp, #16
	mov	x0, x19
	mov	x1, x20
	mov	w3, #0                          ; =0x0
	bl	_run_native_asm_sniper_cycle
	mov	w0, #53392                      ; =0xd090
	movk	w0, #3, lsl #16
	bl	_usleep
	ldr	w8, [x21, __MergedGlobals@PAGEOFF]
	cbnz	w8, LBB1_7
LBB1_8:
	str	wzr, [x21, __MergedGlobals@PAGEOFF]
	ldr	x0, [sp, #40]
	mov	x1, #0                          ; =0x0
	bl	_pthread_join
	ldr	x0, [sp, #16]
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
	ldp	x29, x30, [sp, #80]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #64]             ; 16-byte Folded Reload
	ldp	x22, x21, [sp, #48]             ; 16-byte Folded Reload
	add	sp, sp, #96
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
	sub	x9, sp, #2144
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
	str	x8, [sp, #2136]
	mov	x8, #29570                      ; =0x7382
	movk	x8, #37958, lsl #16
	movk	x8, #5366, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d0, x8
	mov	x8, #30409                      ; =0x76c9
	movk	x8, #40894, lsl #16
	movk	x8, #6938, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d14, x8
	mov	x8, #59704                      ; =0xe938
	movk	x8, #28871, lsl #16
	movk	x8, #11398, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d25, x8
	mov	x8, #27369                      ; =0x6ae9
	movk	x8, #44934, lsl #16
	movk	x8, #12042, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d26, x8
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51870, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d23, x8
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51486, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d24, x8
	mov	x8, #30363                      ; =0x769b
	movk	x8, #52529, lsl #16
	movk	x8, #59252, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d22, x8
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
	str	w3, [sp, #476]                  ; 4-byte Folded Spill
	cbz	x0, LBB2_4
; %bb.1:
	cbnz	w3, LBB2_4
; %bb.2:
	mov	x20, x2
	mov	x21, x1
	str	xzr, [x2, #8]
Lloh13:
	adrp	x8, __MergedGlobals.71@PAGE+8
Lloh14:
	ldr	x8, [x8, __MergedGlobals.71@PAGEOFF+8]
	and	x8, x8, #0x3
Lloh15:
	adrp	x9, _RPC_URLS@PAGE
Lloh16:
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
Lloh17:
	adrp	x8, l_.str.4@PAGE
Lloh18:
	add	x8, x8, l_.str.4@PAGEOFF
	str	x8, [sp]
	mov	x0, x22
	mov	w1, #10015                      ; =0x271f
	bl	_curl_easy_setopt
Lloh19:
	adrp	x8, _curl_write_cb@PAGE
Lloh20:
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
	cbz	w0, LBB2_16
LBB2_3:
	mov	x8, #29570                      ; =0x7382
	movk	x8, #37958, lsl #16
	movk	x8, #5366, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d0, x8
	mov	x8, #30409                      ; =0x76c9
	movk	x8, #40894, lsl #16
	movk	x8, #6938, lsl #32
	movk	x8, #16489, lsl #48
	fmov	d14, x8
	mov	x8, #59704                      ; =0xe938
	movk	x8, #28871, lsl #16
	movk	x8, #11398, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d25, x8
	mov	x8, #27369                      ; =0x6ae9
	movk	x8, #44934, lsl #16
	movk	x8, #12042, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d26, x8
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51870, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d23, x8
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51486, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d24, x8
	mov	x8, #30363                      ; =0x769b
	movk	x8, #52529, lsl #16
	movk	x8, #59252, lsl #32
	movk	x8, #16448, lsl #48
	fmov	d22, x8
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
	fdiv	d2, d12, d8
	fmul	d2, d9, d2
LBB2_5:
	fdiv	d3, d16, d11
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d4, x8
	fcmp	d11, d4
	fcsel	d3, d3, d10, gt
	fmul	d5, d21, d13
	str	d6, [sp, #1984]
	str	d6, [sp, #1992]
	fmul	d6, d9, d7
	str	d10, [sp, #2000]
	str	d6, [sp, #2008]
	str	d16, [sp, #2016]
	str	d21, [sp, #2024]
	str	d13, [sp, #2032]
	str	d12, [sp, #2040]
	fmul	d6, d9, d11
	str	d6, [sp, #2048]
	str	d24, [sp, #2056]
	fmul	d6, d9, d26
	fdiv	d7, d9, d14
	fcmp	d14, d4
	mov	x8, #20972                      ; =0x51ec
	movk	x8, #7864, lsl #16
	movk	x8, #60293, lsl #32
	movk	x8, #16423, lsl #48
	fmov	d16, x8
	fcsel	d7, d7, d16, gt
	str	d6, [sp, #2064]
	str	d7, [sp, #2072]
	str	d1, [sp, #2080]
	str	d2, [sp, #2088]
	str	d3, [sp, #2096]
	str	d5, [sp, #2104]
	str	d17, [sp, #1856]
	str	d10, [sp, #1864]
	fmul	d1, d9, d18
	str	d9, [sp, #1872]
	str	d1, [sp, #1880]
	str	d19, [sp, #1888]
	str	d20, [sp, #1896]
	str	d15, [sp, #1904]
	str	d8, [sp, #1912]
	fmul	d1, d9, d22
	str	d1, [sp, #1920]
	str	d23, [sp, #1928]
	fmul	d1, d9, d25
	fdiv	d2, d9, d0
	fcmp	d0, d4
	mov	x8, #15729                      ; =0x3d71
	movk	x8, #55050, lsl #16
	movk	x8, #61603, lsl #32
	movk	x8, #16423, lsl #48
	fmov	d0, x8
	fcsel	d0, d2, d0, gt
	str	d1, [sp, #1936]
	str	d0, [sp, #1944]
	str	d10, [sp, #1952]
	str	d17, [sp, #1960]
	str	d10, [sp, #1968]
	str	d15, [sp, #1976]
	add	x1, sp, #496
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	w19, #1000                      ; =0x3e8
	add	x26, sp, #512
	add	x20, sp, #832
	add	x27, sp, #1472
	add	x28, sp, #1600
	add	x25, sp, #1728
Lloh21:
	adrp	x21, l___const.run_native_asm_sniper_cycle.y1@PAGE
Lloh22:
	add	x21, x21, l___const.run_native_asm_sniper_cycle.y1@PAGEOFF
Lloh23:
	adrp	x22, l___const.run_native_asm_sniper_cycle.y2@PAGE
Lloh24:
	add	x22, x22, l___const.run_native_asm_sniper_cycle.y2@PAGEOFF
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
	add	x8, sp, #1856
	add	x9, sp, #1984
	; InlineAsm Start
	; InlineAsm End
	add	x8, sp, #576
	stp	x8, x26, [sp, #72]
	add	x8, sp, #704
	stp	x20, x8, [sp, #56]
	add	x8, sp, #960
	str	x8, [sp, #48]
	add	x8, sp, #1088
	str	x8, [sp, #40]
	add	x8, sp, #1216
	str	x8, [sp, #32]
	add	x1, sp, #1984
	add	x2, sp, #1856
	add	x8, sp, #1344
	stp	x27, x8, [sp, #16]
	stp	x25, x28, [sp]
	mov	w0, #16                         ; =0x10
	mov	x3, x21
	mov	x4, x22
Lloh29:
	adrp	x5, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh30:
	add	x5, x5, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	mov	x6, x23
	mov	x7, x24
	mov.16b	v0, v8
	bl	_evaluate_full_loan_routes_asm
	; InlineAsm Start
	; InlineAsm End
	subs	w19, w19, #1
	b.ne	LBB2_6
; %bb.7:
	add	x1, sp, #480
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #480]
	ldp	x10, x11, [sp, #496]
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
	fdiv	d8, d0, d1
	fdiv	d9, d8, d1
Lloh31:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh32:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	str	d8, [x8]
	str	d9, [x8, #8]
Lloh33:
	adrp	x9, __MergedGlobals.71@PAGE+8
Lloh34:
	add	x9, x9, __MergedGlobals.71@PAGEOFF+8
	ldr	x10, [x9]
	add	x10, x10, #1
	str	x10, [x9]
	ldrsw	x13, [sp, #512]
	ldr	x8, [x8, #16]
	ldr	x9, [x9, #8]
Lloh35:
	adrp	x14, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh36:
	add	x14, x14, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	cmp	x8, x9
Lloh37:
	adrp	x28, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh38:
	add	x28, x28, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	str	x13, [sp, #464]                 ; 8-byte Folded Spill
	b.ls	LBB2_24
; %bb.8:
	add	x9, sp, #832
	ldr	d0, [x9, x13, lsl #3]
	fcmp	d0, #0.0
	b.le	LBB2_24
; %bb.9:
	add	x9, sp, #704
	ldr	d10, [x9, x13, lsl #3]
	mov	x9, #34184                      ; =0x8588
	movk	x9, #54106, lsl #16
	movk	x9, #58300, lsl #32
	movk	x9, #16244, lsl #48
	fmov	d1, x9
	fcmp	d10, d1
	b.lt	LBB2_24
; %bb.10:
Lloh39:
	adrp	x19, __MergedGlobals.71@PAGE
Lloh40:
	add	x19, x19, __MergedGlobals.71@PAGEOFF
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
	add	x9, sp, #576
	ldr	d0, [x9, x13, lsl #3]
	fmul	d13, d0, d1
	ldp	d0, d1, [x19, #32]
	fadd	d0, d11, d0
	fadd	d1, d12, d1
	stp	d0, d1, [x19, #32]
	ldr	d0, [x19, #48]
	fadd	d0, d13, d0
	str	d0, [x19, #48]
	ldr	w9, [x19]
	cmp	w9, #1
	b.lt	LBB2_13
; %bb.11:
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
LBB2_12:                                ; =>This Inner Loop Header: Depth=1
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
	b.gt	LBB2_12
LBB2_13:
Lloh41:
	adrp	x0, __MergedGlobals.71@PAGE+80
Lloh42:
	add	x0, x0, __MergedGlobals.71@PAGEOFF+80
	str	x8, [x0], #8
	ldr	x8, [x14, x13, lsl #3]
	str	x8, [sp]
Lloh43:
	adrp	x2, l_.str.26@PAGE
Lloh44:
	add	x2, x2, l_.str.26@PAGEOFF
	mov	w1, #96                         ; =0x60
	bl	_snprintf
	mov	x8, #116548232544256            ; =0x6a0000000000
	movk	x8, #16632, lsl #48
	fmov	d0, x8
	fcmp	d11, d0
	b.ge	LBB2_19
; %bb.14:
	mov	x8, #4636737291354636288        ; =0x4059000000000000
	fmov	d0, x8
	fcmp	d11, d0
	b.ge	LBB2_20
; %bb.15:
Lloh45:
	adrp	x8, l_.str.29@PAGE
Lloh46:
	add	x8, x8, l_.str.29@PAGEOFF
	b	LBB2_21
LBB2_16:
	ldr	x0, [x20]
	cbz	x0, LBB2_3
; %bb.17:
	ldr	x8, [x20, #8]
	cmp	x8, #33
	b.lo	LBB2_3
; %bb.18:
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
	str	d0, [sp, #448]                  ; 8-byte Folded Spill
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
	str	d8, [sp, #464]                  ; 8-byte Folded Spill
	mov.16b	v2, v10
	str	d10, [sp, #400]                 ; 8-byte Folded Spill
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #440]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #432]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #424]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #416]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #408]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #392]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #384]                  ; 8-byte Folded Spill
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
	str	d12, [sp, #456]                 ; 8-byte Folded Spill
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
	str	d0, [sp, #376]                  ; 8-byte Folded Spill
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
	ldr	d0, [sp, #376]                  ; 8-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #376]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #26                         ; =0x1a
	bl	_find_batch_result_for_id
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51486, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	ldp	d0, d1, [sp, #456]              ; 16-byte Folded Reload
	ldr	d14, [sp, #400]                 ; 8-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #368]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #27                         ; =0x1b
	bl	_find_batch_result_for_id
	mov	x8, #60293                      ; =0xeb85
	movk	x8, #47185, lsl #16
	movk	x8, #51870, lsl #32
	movk	x8, #16546, lsl #48
	fmov	d3, x8
	ldp	d0, d1, [sp, #456]              ; 16-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #464]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #28                         ; =0x1c
	bl	_find_batch_result_for_id
	mov	x8, #26865                      ; =0x68f1
	movk	x8, #35043, lsl #16
	movk	x8, #63669, lsl #32
	movk	x8, #16100, lsl #48
	fmov	d1, x8
	str	d1, [sp, #400]                  ; 8-byte Folded Spill
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
	str	d0, [sp, #456]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #29                         ; =0x1d
	bl	_find_batch_result_for_id
	mov	x8, #59704                      ; =0xe938
	movk	x8, #28871, lsl #16
	movk	x8, #11398, lsl #32
	movk	x8, #16204, lsl #48
	fmov	d3, x8
	fmov	d0, #1.00000000
	ldr	d1, [sp, #400]                  ; 8-byte Folded Reload
	mov.16b	v2, v14
	bl	_decode_slot0_sqrt_price
	str	d0, [sp, #400]                  ; 8-byte Folded Spill
	ldr	x0, [x20]
	mov	w1, #30                         ; =0x1e
	bl	_find_batch_result_for_id
	mov	x8, #70368744177664             ; =0x400000000000
	movk	x8, #16543, lsl #48
	fmov	d2, x8
	str	d2, [sp, #360]                  ; 8-byte Folded Spill
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
	ldr	d2, [sp, #360]                  ; 8-byte Folded Reload
	bl	_decode_slot0_sqrt_price
	ldp	d26, d23, [sp, #456]            ; 16-byte Folded Reload
	ldp	d21, d25, [sp, #392]            ; 16-byte Folded Reload
	ldp	d24, d22, [sp, #368]            ; 16-byte Folded Reload
	ldr	d20, [sp, #384]                 ; 8-byte Folded Reload
	ldp	d16, d7, [sp, #416]             ; 16-byte Folded Reload
	ldr	d19, [sp, #408]                 ; 8-byte Folded Reload
	ldp	d18, d6, [sp, #432]             ; 16-byte Folded Reload
	ldr	d17, [sp, #448]                 ; 8-byte Folded Reload
	fdiv	d1, d24, d15
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
LBB2_19:
Lloh47:
	adrp	x8, l_.str.27@PAGE
Lloh48:
	add	x8, x8, l_.str.27@PAGEOFF
	ldr	q0, [x8]
Lloh49:
	adrp	x9, __MergedGlobals.71@PAGE+184
Lloh50:
	add	x9, x9, __MergedGlobals.71@PAGEOFF+184
	str	q0, [x9]
	ldur	q0, [x8, #9]
	stur	q0, [x9, #9]
	b	LBB2_22
LBB2_20:
Lloh51:
	adrp	x8, l_.str.28@PAGE
Lloh52:
	add	x8, x8, l_.str.28@PAGEOFF
LBB2_21:
	ldr	q0, [x8]
Lloh53:
	adrp	x9, __MergedGlobals.71@PAGE+184
Lloh54:
	add	x9, x9, __MergedGlobals.71@PAGEOFF+184
	str	q0, [x9]
	ldur	x8, [x8, #14]
	stur	x8, [x9, #14]
LBB2_22:
	ldr	x13, [sp, #464]                 ; 8-byte Folded Reload
	add	x8, sp, #1472
	ldr	d0, [x8, x13, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	add	x8, sp, #1728
	fmul	d0, d0, d1
	ldr	d1, [x8, x13, lsl #3]
	stp	d1, d0, [x19, #216]
	stp	d11, d12, [x19, #232]
	stp	d10, d13, [x19, #248]
	str	d8, [x19, #264]
	ldr	w8, [x19]
	cmp	w8, #19
	b.gt	LBB2_24
; %bb.23:
	add	w8, w8, #1
	adrp	x9, __MergedGlobals.71@PAGE
	str	w8, [x9, __MergedGlobals.71@PAGEOFF]
LBB2_24:
Lloh55:
	adrp	x8, __MergedGlobals.71@PAGE+56
Lloh56:
	ldr	x19, [x8, __MergedGlobals.71@PAGEOFF+56]
	add	x21, sp, #832
	ldr	d0, [x21, x13, lsl #3]
	fcmp	d0, #0.0
	mov	x20, #47104                     ; =0xb800
	movk	x20, #59457, lsl #16
	movk	x20, #814, lsl #32
	b.le	LBB2_29
; %bb.25:
Lloh57:
	adrp	x22, l_.str.33@PAGE
Lloh58:
	add	x22, x22, l_.str.33@PAGEOFF
	ldr	w8, [sp, #476]                  ; 4-byte Folded Reload
	cbnz	w8, LBB2_30
; %bb.26:
	cmp	x19, x20
	b.lo	LBB2_30
; %bb.27:
	adrp	x8, __MergedGlobals@PAGE+24
	ldr	x10, [x8, __MergedGlobals@PAGEOFF+24]
	adrp	x9, __MergedGlobals.71@PAGE+64
	ldr	x11, [x9, __MergedGlobals.71@PAGEOFF+64]
	cmp	x10, x11
	b.ls	LBB2_30
; %bb.28:
	ldr	x8, [x8, __MergedGlobals@PAGEOFF+24]
	str	x8, [x9, __MergedGlobals.71@PAGEOFF+64]
Lloh59:
	adrp	x0, l_.str.31@PAGE
Lloh60:
	add	x0, x0, l_.str.31@PAGEOFF
	bl	_system
	ldr	x13, [sp, #464]                 ; 8-byte Folded Reload
Lloh61:
	adrp	x22, l_.str.32@PAGE
Lloh62:
	add	x22, x22, l_.str.32@PAGEOFF
	b	LBB2_30
LBB2_29:
Lloh63:
	adrp	x22, l_.str.30@PAGE
Lloh64:
	add	x22, x22, l_.str.30@PAGEOFF
LBB2_30:
Lloh65:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh66:
	add	x8, x8, __MergedGlobals@PAGEOFF+32
	ldr	x27, [x8]
	ldr	x26, [x8, #8]
Lloh67:
	adrp	x9, __MergedGlobals.71@PAGE+24
Lloh68:
	add	x9, x9, __MergedGlobals.71@PAGEOFF+24
	ldr	x25, [x9, #48]
	ldr	x24, [x9, #32]
	ldr	x23, [x8, #16]
	ldrsw	x8, [sp, #572]
	ldr	d0, [x21, x8, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	fmul	d10, d0, d1
	ldr	x8, [x9]
	cbz	x8, LBB2_32
; %bb.31:
Lloh69:
	adrp	x9, __MergedGlobals.71@PAGE+32
Lloh70:
	ldr	d0, [x9, __MergedGlobals.71@PAGEOFF+32]
	ucvtf	d1, x8
	fdiv	d12, d0, d1
	b	LBB2_33
LBB2_32:
	add	x8, sp, #832
	ldr	d0, [x8, x13, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d1, x8
	fmul	d12, d0, d1
LBB2_33:
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16670, lsl #48
	fmov	d0, x8
	fmul	d0, d10, d0
	fmov	d1, #2.00000000
	fcmp	d10, d1
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	fcsel	d11, d0, d1, ge
Lloh71:
	adrp	x0, l_.str.34@PAGE
Lloh72:
	add	x0, x0, l_.str.34@PAGEOFF
Lloh73:
	adrp	x1, l_.str.35@PAGE
Lloh74:
	add	x1, x1, l_.str.35@PAGEOFF
	bl	_fopen
	cbz	x0, LBB2_40
; %bb.34:
	mov	x21, x0
	ucvtf	d0, x27
	mov	x8, #145685290680320            ; =0x848000000000
	movk	x8, #16686, lsl #48
	fmov	d1, x8
	ucvtf	d2, x26
	fdiv	d0, d0, d1
	fdiv	d2, d2, d1
	ucvtf	d3, x25
	mov	x8, #51200                      ; =0xc800
	movk	x8, #26446, lsl #16
	movk	x8, #49517, lsl #32
	movk	x8, #17323, lsl #48
	fadd	d2, d0, d2
	ucvtf	d4, x24
	fdiv	d7, d3, d1
	fmov	d16, x8
	ucvtf	d17, x23
	fadd	d6, d2, d7
	fdiv	d3, d4, d16
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d18, x8
	fmul	d1, d0, d18
Lloh75:
	adrp	x25, __MergedGlobals.71@PAGE
Lloh76:
	add	x25, x25, __MergedGlobals.71@PAGEOFF
	ldr	x8, [x25, #8]
	ldr	x9, [x25, #24]
	ldr	q4, [x25, #32]
	ldr	d5, [x25, #48]
Lloh77:
	adrp	x11, __MergedGlobals@PAGE+24
Lloh78:
	add	x11, x11, __MergedGlobals@PAGEOFF+24
	ldr	x10, [x11]
	ldr	x11, [x11, #32]
Lloh79:
	adrp	x12, l_.str.37@PAGE
Lloh80:
	add	x12, x12, l_.str.37@PAGEOFF
Lloh81:
	adrp	x13, l_.str.38@PAGE
Lloh82:
	add	x13, x13, l_.str.38@PAGEOFF
	cmp	x19, x20
	csel	x12, x13, x12, lo
	fmul	d19, d6, d18
	ldr	x15, [sp, #464]                 ; 8-byte Folded Reload
Lloh83:
	adrp	x13, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh84:
	add	x13, x13, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x13, [x13, x15, lsl #3]
Lloh85:
	adrp	x14, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh86:
	add	x14, x14, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	fmul	d20, d2, d18
	ldr	x14, [x14, x15, lsl #3]
	add	x16, sp, #1728
	ldr	d21, [x16, x15, lsl #3]
	fmul	d22, d7, d18
	add	x16, sp, #1472
	ldr	d23, [x16, x15, lsl #3]
	fmul	d24, d23, d18
	add	x16, sp, #1344
	ldr	d25, [x16, x15, lsl #3]
	fmul	d26, d25, d18
	add	x16, sp, #1216
	ldr	d27, [x16, x15, lsl #3]
	fmul	d28, d27, d18
	add	x16, sp, #1088
	ldr	d29, [x16, x15, lsl #3]
	fmul	d30, d29, d18
	add	x16, sp, #832
	ldr	d31, [x16, x15, lsl #3]
	fmul	d13, d31, d18
	add	x16, sp, #704
	ldr	d14, [x16, x15, lsl #3]
	fmul	d15, d14, d18
	add	x16, sp, #576
	fdiv	d16, d17, d16
	ldr	d17, [x16, x15, lsl #3]
	fmul	d18, d17, d18
	stp	d18, d17, [sp, #312]
	stp	d15, d14, [sp, #296]
	stp	d13, d31, [sp, #280]
	stp	d30, d29, [sp, #264]
	stp	d28, d27, [sp, #248]
	stp	d26, d25, [sp, #232]
	stp	d24, d23, [sp, #216]
	str	d21, [sp, #208]
	stp	x13, x14, [sp, #192]
	stp	d22, d7, [sp, #176]
	stp	d20, d2, [sp, #160]
	stp	d19, d6, [sp, #144]
	stp	x12, x22, [sp, #128]
	stp	d3, d16, [sp, #112]
	stp	x10, x11, [sp, #96]
	stp	d8, d9, [sp, #80]
	stp	d12, d11, [sp, #64]
	stp	d5, d10, [sp, #48]
	str	q4, [sp, #32]
	stp	x8, x9, [sp, #16]
Lloh87:
	adrp	x1, l_.str.36@PAGE
Lloh88:
	add	x1, x1, l_.str.36@PAGEOFF
	stp	d0, d1, [sp]
	bl	_fprintf
	ldr	w8, [x25]
Lloh89:
	adrp	x20, l_.str.41@PAGE
Lloh90:
	add	x20, x20, l_.str.41@PAGEOFF
Lloh91:
	adrp	x25, l_.str.40@PAGE
Lloh92:
	add	x25, x25, l_.str.40@PAGEOFF
	cmp	w8, #1
	b.lt	LBB2_37
; %bb.35:
Lloh93:
	adrp	x19, __MergedGlobals.71@PAGE+184
Lloh94:
	add	x19, x19, __MergedGlobals.71@PAGEOFF+184
	mov	w23, #1                         ; =0x1
	adrp	x24, __MergedGlobals.71@PAGE
Lloh95:
	adrp	x22, l_.str.39@PAGE
Lloh96:
	add	x22, x22, l_.str.39@PAGEOFF
LBB2_36:                                ; =>This Inner Loop Header: Depth=1
	ldur	x9, [x19, #-104]
	sub	x10, x19, #96
	ldp	q0, q1, [x19, #32]
	ldr	q2, [x19, #64]
	cmp	x23, w8, sxtw
	csel	x8, x25, x20, lt
	ldr	d3, [x19, #80]
	str	x8, [sp, #80]
	str	d3, [sp, #72]
	stur	q2, [sp, #56]
	stur	q1, [sp, #40]
	stur	q0, [sp, #24]
	stp	x10, x19, [sp, #8]
	str	x9, [sp]
	mov	x0, x21
	mov	x1, x22
	bl	_fprintf
	ldrsw	x8, [x24, __MergedGlobals.71@PAGEOFF]
	add	x19, x19, #192
	cmp	x23, x8
	add	x23, x23, #1
	b.lt	LBB2_36
LBB2_37:
Lloh97:
	adrp	x0, l_.str.42@PAGE
Lloh98:
	add	x0, x0, l_.str.42@PAGEOFF
	mov	w1, #19                         ; =0x13
	mov	w2, #1                          ; =0x1
	mov	x3, x21
	bl	_fwrite
	mov	x27, #0                         ; =0x0
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d12, x8
Lloh99:
	adrp	x26, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh100:
	add	x26, x26, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
Lloh101:
	adrp	x20, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGE
Lloh102:
	add	x20, x20, l___const.run_native_asm_sniper_cycle.borrow_syms@PAGEOFF
	add	x25, sp, #1728
	add	x28, sp, #1472
	add	x19, sp, #1344
	add	x24, sp, #1216
	add	x23, sp, #1088
	add	x22, sp, #704
LBB2_38:                                ; =>This Inner Loop Header: Depth=1
	add	x8, sp, #512
	ldrsw	x8, [x8, x27, lsl #2]
	ldr	x9, [x26, x8, lsl #3]
	ldr	x10, [x20, x8, lsl #3]
	add	x11, sp, #1984
	ldr	d0, [x11, x8, lsl #3]
	add	x11, sp, #1856
	ldr	d1, [x11, x8, lsl #3]
	ldr	d2, [x25, x8, lsl #3]
Lloh103:
	adrp	x11, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh104:
	add	x11, x11, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	ldr	d3, [x11, x8, lsl #3]
	add	x11, sp, #1600
	ldr	d4, [x11, x8, lsl #3]
	ldr	d5, [x28, x8, lsl #3]
	add	x27, x27, #1
	fmul	d6, d5, d12
	ldr	d7, [x19, x8, lsl #3]
	ldr	d16, [x24, x8, lsl #3]
	ldr	d17, [x23, x8, lsl #3]
	fmul	d18, d17, d12
	add	x11, sp, #832
	ldr	d19, [x11, x8, lsl #3]
	fmul	d20, d19, d12
	ldr	d21, [x22, x8, lsl #3]
	fmul	d22, d21, d12
	add	x11, sp, #576
	ldr	d23, [x11, x8, lsl #3]
	fmul	d24, d23, d12
Lloh105:
	adrp	x8, l_.str.40@PAGE
Lloh106:
	add	x8, x8, l_.str.40@PAGEOFF
	str	x8, [sp, #160]
	stp	d24, d23, [sp, #144]
	stp	d22, d21, [sp, #128]
	stp	d20, d19, [sp, #112]
	stp	d18, d17, [sp, #96]
	stp	d7, d16, [sp, #80]
	stp	d6, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x9, x10, [sp, #8]
	str	x27, [sp]
	mov	x0, x21
Lloh107:
	adrp	x1, l_.str.43@PAGE
Lloh108:
	add	x1, x1, l_.str.43@PAGEOFF
	bl	_fprintf
	cmp	x27, #15
	b.ne	LBB2_38
; %bb.39:
	ldrsw	x9, [sp, #572]
	ldr	x8, [x26, x9, lsl #3]
	ldr	x10, [x20, x9, lsl #3]
	add	x11, sp, #1984
	ldr	d0, [x11, x9, lsl #3]
	add	x11, sp, #1856
	ldr	d1, [x11, x9, lsl #3]
	add	x11, sp, #1728
	ldr	d2, [x11, x9, lsl #3]
Lloh109:
	adrp	x28, l___const.run_native_asm_sniper_cycle.fl@PAGE
Lloh110:
	add	x28, x28, l___const.run_native_asm_sniper_cycle.fl@PAGEOFF
	ldr	d3, [x28, x9, lsl #3]
	add	x11, sp, #1600
	ldr	d4, [x11, x9, lsl #3]
	add	x11, sp, #1472
	ldr	d5, [x11, x9, lsl #3]
	mov	x11, #5243                      ; =0x147b
	movk	x11, #18350, lsl #16
	movk	x11, #47841, lsl #32
	movk	x11, #16471, lsl #48
	fmov	d6, x11
	fmul	d7, d5, d6
	add	x11, sp, #1344
	ldr	d16, [x11, x9, lsl #3]
	add	x11, sp, #1216
	ldr	d17, [x11, x9, lsl #3]
	add	x11, sp, #1088
	ldr	d18, [x11, x9, lsl #3]
	fmul	d19, d18, d6
	add	x11, sp, #832
	ldr	d20, [x11, x9, lsl #3]
	add	x11, sp, #704
	ldr	d21, [x11, x9, lsl #3]
	fmul	d22, d20, d6
	fmul	d23, d21, d6
	add	x11, sp, #576
	ldr	d24, [x11, x9, lsl #3]
	fmul	d6, d24, d6
Lloh111:
	adrp	x9, l_.str.41@PAGE
Lloh112:
	add	x9, x9, l_.str.41@PAGEOFF
	str	x9, [sp, #160]
	stp	d6, d24, [sp, #144]
	stp	d23, d21, [sp, #128]
	stp	d22, d20, [sp, #112]
	stp	d19, d18, [sp, #96]
	stp	d16, d17, [sp, #80]
	stp	d7, d5, [sp, #64]
	stp	d3, d4, [sp, #48]
	stp	d1, d2, [sp, #32]
	str	d0, [sp, #24]
	stp	x8, x10, [sp, #8]
	mov	w9, #16                         ; =0x10
Lloh113:
	adrp	x1, l_.str.43@PAGE
Lloh114:
	add	x1, x1, l_.str.43@PAGEOFF
	str	x9, [sp]
	mov	x0, x21
	bl	_fprintf
Lloh115:
	adrp	x0, l_.str.44@PAGE
Lloh116:
	add	x0, x0, l_.str.44@PAGEOFF
	mov	w1, #6                          ; =0x6
	mov	w2, #1                          ; =0x1
	mov	x3, x21
	bl	_fwrite
	mov	x0, x21
	bl	_fclose
Lloh117:
	adrp	x0, l_.str.34@PAGE
Lloh118:
	add	x0, x0, l_.str.34@PAGEOFF
Lloh119:
	adrp	x1, l_.str.45@PAGE
Lloh120:
	add	x1, x1, l_.str.45@PAGEOFF
	bl	_rename
LBB2_40:
	ldr	w8, [sp, #476]                  ; 4-byte Folded Reload
	cbz	w8, LBB2_42
; %bb.41:
Lloh121:
	adrp	x19, l_str.70@PAGE
Lloh122:
	add	x19, x19, l_str.70@PAGEOFF
	mov	x0, x19
	bl	_puts
Lloh123:
	adrp	x0, l_str.67@PAGE
Lloh124:
	add	x0, x0, l_str.67@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
	stp	d8, d9, [sp]
Lloh125:
	adrp	x0, l_.str.48@PAGE
Lloh126:
	add	x0, x0, l_.str.48@PAGEOFF
	bl	_printf
Lloh127:
	adrp	x0, l_str.69@PAGE
Lloh128:
	add	x0, x0, l_str.69@PAGEOFF
	bl	_puts
	stp	d10, d11, [sp]
Lloh129:
	adrp	x0, l_.str.50@PAGE
Lloh130:
	add	x0, x0, l_.str.50@PAGEOFF
	bl	_printf
	ldr	x20, [sp, #464]                 ; 8-byte Folded Reload
Lloh131:
	adrp	x8, l___const.run_native_asm_sniper_cycle.route_names@PAGE
Lloh132:
	add	x8, x8, l___const.run_native_asm_sniper_cycle.route_names@PAGEOFF
	ldr	x8, [x8, x20, lsl #3]
	str	x8, [sp]
Lloh133:
	adrp	x0, l_.str.51@PAGE
Lloh134:
	add	x0, x0, l_.str.51@PAGEOFF
	bl	_printf
	add	x8, sp, #1984
	ldr	d0, [x8, x20, lsl #3]
	mov	x8, #5243                       ; =0x147b
	movk	x8, #18350, lsl #16
	movk	x8, #47841, lsl #32
	movk	x8, #16471, lsl #48
	fmov	d8, x8
	fmul	d0, d0, d8
	add	x8, sp, #1856
	ldr	d1, [x8, x20, lsl #3]
	fmul	d1, d1, d8
	add	x8, sp, #1728
	ldr	d2, [x8, x20, lsl #3]
	ldr	d3, [x28, x20, lsl #3]
	stp	d2, d3, [sp, #16]
	stp	d0, d1, [sp]
Lloh135:
	adrp	x0, l_.str.52@PAGE
Lloh136:
	add	x0, x0, l_.str.52@PAGEOFF
	bl	_printf
	add	x8, sp, #1472
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #1344
	ldr	d1, [x8, x20, lsl #3]
	fmul	d0, d0, d8
	fmul	d1, d1, d8
	add	x8, sp, #1216
	ldr	d2, [x8, x20, lsl #3]
	fmul	d2, d2, d8
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh137:
	adrp	x0, l_.str.53@PAGE
Lloh138:
	add	x0, x0, l_.str.53@PAGEOFF
	bl	_printf
	add	x8, sp, #832
	ldr	d0, [x8, x20, lsl #3]
	add	x8, sp, #704
	ldr	d1, [x8, x20, lsl #3]
	fmul	d0, d0, d8
	fmul	d1, d1, d8
	add	x8, sp, #576
	ldr	d2, [x8, x20, lsl #3]
	fmul	d2, d2, d8
	stp	d1, d2, [sp, #8]
	str	d0, [sp]
Lloh139:
	adrp	x0, l_.str.54@PAGE
Lloh140:
	add	x0, x0, l_.str.54@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
LBB2_42:
	ldr	x8, [sp, #2136]
Lloh141:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh142:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh143:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB2_44
; %bb.43:
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
LBB2_44:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh10, Lloh11, Lloh12
	.loh AdrpAdd	Lloh19, Lloh20
	.loh AdrpAdd	Lloh17, Lloh18
	.loh AdrpAdd	Lloh15, Lloh16
	.loh AdrpLdr	Lloh13, Lloh14
	.loh AdrpAdd	Lloh27, Lloh28
	.loh AdrpAdd	Lloh25, Lloh26
	.loh AdrpAdd	Lloh23, Lloh24
	.loh AdrpAdd	Lloh21, Lloh22
	.loh AdrpAdd	Lloh29, Lloh30
	.loh AdrpAdd	Lloh37, Lloh38
	.loh AdrpAdd	Lloh35, Lloh36
	.loh AdrpAdd	Lloh33, Lloh34
	.loh AdrpAdd	Lloh31, Lloh32
	.loh AdrpAdd	Lloh39, Lloh40
	.loh AdrpAdd	Lloh43, Lloh44
	.loh AdrpAdd	Lloh41, Lloh42
	.loh AdrpAdd	Lloh45, Lloh46
	.loh AdrpAdd	Lloh49, Lloh50
	.loh AdrpAdd	Lloh47, Lloh48
	.loh AdrpAdd	Lloh51, Lloh52
	.loh AdrpAdd	Lloh53, Lloh54
	.loh AdrpLdr	Lloh55, Lloh56
	.loh AdrpAdd	Lloh57, Lloh58
	.loh AdrpAdd	Lloh61, Lloh62
	.loh AdrpAdd	Lloh59, Lloh60
	.loh AdrpAdd	Lloh63, Lloh64
	.loh AdrpAdd	Lloh67, Lloh68
	.loh AdrpAdd	Lloh65, Lloh66
	.loh AdrpLdr	Lloh69, Lloh70
	.loh AdrpAdd	Lloh73, Lloh74
	.loh AdrpAdd	Lloh71, Lloh72
	.loh AdrpAdd	Lloh91, Lloh92
	.loh AdrpAdd	Lloh89, Lloh90
	.loh AdrpAdd	Lloh87, Lloh88
	.loh AdrpAdd	Lloh85, Lloh86
	.loh AdrpAdd	Lloh83, Lloh84
	.loh AdrpAdd	Lloh81, Lloh82
	.loh AdrpAdd	Lloh79, Lloh80
	.loh AdrpAdd	Lloh77, Lloh78
	.loh AdrpAdd	Lloh75, Lloh76
	.loh AdrpAdd	Lloh95, Lloh96
	.loh AdrpAdd	Lloh93, Lloh94
	.loh AdrpAdd	Lloh101, Lloh102
	.loh AdrpAdd	Lloh99, Lloh100
	.loh AdrpAdd	Lloh97, Lloh98
	.loh AdrpAdd	Lloh107, Lloh108
	.loh AdrpAdd	Lloh105, Lloh106
	.loh AdrpAdd	Lloh103, Lloh104
	.loh AdrpAdd	Lloh119, Lloh120
	.loh AdrpAdd	Lloh117, Lloh118
	.loh AdrpAdd	Lloh115, Lloh116
	.loh AdrpAdd	Lloh113, Lloh114
	.loh AdrpAdd	Lloh111, Lloh112
	.loh AdrpAdd	Lloh109, Lloh110
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
	.loh AdrpLdrGotLdr	Lloh141, Lloh142, Lloh143
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
Lloh144:
	adrp	x1, l_.str.1@PAGE
Lloh145:
	add	x1, x1, l_.str.1@PAGEOFF
	mov	x0, #0                          ; =0x0
	bl	_curl_slist_append
Lloh146:
	adrp	x1, l_.str.2@PAGE
Lloh147:
	add	x1, x1, l_.str.2@PAGEOFF
	bl	_curl_slist_append
Lloh148:
	adrp	x1, l_.str.3@PAGE
Lloh149:
	add	x1, x1, l_.str.3@PAGEOFF
	bl	_curl_slist_append
	mov	x22, x0
	adrp	x23, __MergedGlobals@PAGE
	ldr	w8, [x23, __MergedGlobals@PAGEOFF]
	cbz	w8, LBB3_102
; %bb.1:
	mov	w24, #0                         ; =0x0
Lloh150:
	adrp	x26, _RPC_URLS@PAGE
Lloh151:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh152:
	adrp	x27, l_.str.63@PAGE
Lloh153:
	add	x27, x27, l_.str.63@PAGEOFF
Lloh154:
	adrp	x28, _curl_write_cb@PAGE
Lloh155:
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
Lloh156:
	adrp	x25, l_.str.64@PAGE
Lloh157:
	add	x25, x25, l_.str.64@PAGEOFF
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
Lloh158:
	adrp	x8, __MergedGlobals@PAGE+24
Lloh159:
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
Lloh160:
	adrp	x9, __MergedGlobals@PAGE+40
Lloh161:
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
Lloh162:
	adrp	x25, l_.str.64@PAGE
Lloh163:
	add	x25, x25, l_.str.64@PAGEOFF
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
	adrp	x9, __MergedGlobals.71@PAGE+72
	str	x8, [x9, __MergedGlobals.71@PAGEOFF+72]
	b	LBB3_53
LBB3_52:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh164:
	adrp	x8, __MergedGlobals@PAGE+40
Lloh165:
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
Lloh166:
	adrp	x9, __MergedGlobals@PAGE+56
Lloh167:
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
	adrp	x9, __MergedGlobals.71@PAGE+56
	str	x8, [x9, __MergedGlobals.71@PAGEOFF+56]
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
Lloh168:
	adrp	x9, __MergedGlobals@PAGE+32
Lloh169:
	ldr	x9, [x9, __MergedGlobals@PAGEOFF+32]
	cmp	x8, x9
	b.ls	LBB3_97
; %bb.95:                               ;   in Loop: Header=BB3_3 Depth=1
	adrp	x9, __MergedGlobals@PAGE+32
	str	x8, [x9, __MergedGlobals@PAGEOFF+32]
	b	LBB3_97
LBB3_96:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh170:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh171:
	ldr	xzr, [x8, __MergedGlobals@PAGEOFF+32]
LBB3_97:                                ;   in Loop: Header=BB3_3 Depth=1
Lloh172:
	adrp	x8, __MergedGlobals@PAGE+32
Lloh173:
	add	x8, x8, __MergedGlobals@PAGEOFF+32
	ldr	x24, [x8]
	ldr	x23, [x8, #8]
Lloh174:
	adrp	x9, __MergedGlobals.71@PAGE+56
Lloh175:
	add	x9, x9, __MergedGlobals.71@PAGEOFF+56
	ldr	x22, [x9, #16]
	ldr	x26, [x8, #16]
	ldr	x27, [x9]
	ldr	x28, [x8, #32]
	mov	x0, x25
Lloh176:
	adrp	x1, l_.str.35@PAGE
Lloh177:
	add	x1, x1, l_.str.35@PAGEOFF
	bl	_fopen
	cbz	x0, LBB3_99
; %bb.98:                               ;   in Loop: Header=BB3_3 Depth=1
	mov	x21, x0
	ldur	x8, [x29, #-232]                ; 8-byte Folded Reload
	ldp	x10, x9, [sp, #240]             ; 16-byte Folded Reload
	sub	x8, x8, x10
	scvtf	d0, x8
	ldur	x8, [x29, #-240]                ; 8-byte Folded Reload
	sub	x8, x8, x9
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
Lloh178:
	adrp	x8, __MergedGlobals@PAGE+8
Lloh179:
	add	x8, x8, __MergedGlobals@PAGEOFF+8
	ldr	d0, [x8]
	str	d0, [sp, #248]                  ; 8-byte Folded Spill
	ldr	d0, [x8, #8]
	stp	d4, d0, [sp, #232]              ; 16-byte Folded Spill
	ldr	x22, [x8, #16]
	ldr	x23, [x8, #48]
	ldr	x24, [x8, #48]
	ldr	x26, [x8, #24]
Lloh180:
	adrp	x8, __MergedGlobals.71@PAGE+72
Lloh181:
	ldr	x27, [x8, __MergedGlobals.71@PAGEOFF+72]
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
Lloh182:
	adrp	x1, l_.str.65@PAGE
Lloh183:
	add	x1, x1, l_.str.65@PAGEOFF
	bl	_fprintf
	mov	x0, x21
	bl	_fclose
	mov	x0, x25
Lloh184:
	adrp	x1, l_.str.66@PAGE
Lloh185:
	add	x1, x1, l_.str.66@PAGEOFF
	bl	_rename
LBB3_99:                                ;   in Loop: Header=BB3_3 Depth=1
	ldr	x22, [sp, #216]                 ; 8-byte Folded Reload
	adrp	x23, __MergedGlobals@PAGE
	ldur	w24, [x29, #-212]               ; 4-byte Folded Reload
Lloh186:
	adrp	x26, _RPC_URLS@PAGE
Lloh187:
	add	x26, x26, _RPC_URLS@PAGEOFF
Lloh188:
	adrp	x27, l_.str.63@PAGE
Lloh189:
	add	x27, x27, l_.str.63@PAGEOFF
Lloh190:
	adrp	x28, _curl_write_cb@PAGE
Lloh191:
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
	.loh AdrpAdd	Lloh148, Lloh149
	.loh AdrpAdd	Lloh146, Lloh147
	.loh AdrpAdd	Lloh144, Lloh145
	.loh AdrpAdd	Lloh154, Lloh155
	.loh AdrpAdd	Lloh152, Lloh153
	.loh AdrpAdd	Lloh150, Lloh151
	.loh AdrpAdd	Lloh156, Lloh157
	.loh AdrpLdr	Lloh158, Lloh159
	.loh AdrpLdr	Lloh160, Lloh161
	.loh AdrpAdd	Lloh162, Lloh163
	.loh AdrpLdr	Lloh164, Lloh165
	.loh AdrpLdr	Lloh166, Lloh167
	.loh AdrpLdr	Lloh168, Lloh169
	.loh AdrpLdr	Lloh170, Lloh171
	.loh AdrpAdd	Lloh176, Lloh177
	.loh AdrpAdd	Lloh174, Lloh175
	.loh AdrpAdd	Lloh172, Lloh173
	.loh AdrpAdd	Lloh184, Lloh185
	.loh AdrpAdd	Lloh182, Lloh183
	.loh AdrpLdr	Lloh180, Lloh181
	.loh AdrpAdd	Lloh178, Lloh179
	.loh AdrpAdd	Lloh190, Lloh191
	.loh AdrpAdd	Lloh188, Lloh189
	.loh AdrpAdd	Lloh186, Lloh187
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
	mov.16b	v11, v0
	mov.16b	v10, v1
	mov.16b	v9, v2
Lloh192:
	adrp	x1, l_.str.59@PAGE
Lloh193:
	add	x1, x1, l_.str.59@PAGEOFF
	bl	_strstr
	cbz	x0, LBB5_9
; %bb.2:
	mov	x8, x0
	ldrb	w11, [x8, #2]!
	cbz	w11, LBB5_9
; %bb.3:
	mov	x9, #0                          ; =0x0
	add	x10, x0, #3
LBB5_4:                                 ; =>This Inner Loop Header: Depth=1
	cmp	w11, #34
	b.eq	LBB5_7
; %bb.5:                                ;   in Loop: Header=BB5_4 Depth=1
	cmp	x9, #63
	b.hi	LBB5_10
; %bb.6:                                ;   in Loop: Header=BB5_4 Depth=1
	add	x12, x9, #1
	ldrb	w11, [x10, x9]
	mov	x9, x12
	cbnz	w11, LBB5_4
	b	LBB5_8
LBB5_7:
	mov	x12, x9
LBB5_8:
	cmp	x12, #64
	b.hs	LBB5_11
LBB5_9:
	mov.16b	v0, v8
	ldp	x29, x30, [sp, #48]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #32]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #16]             ; 16-byte Folded Reload
	ldp	d13, d12, [sp], #64             ; 16-byte Folded Reload
	ret
LBB5_10:
	cmp	x9, #64
	b.lo	LBB5_9
LBB5_11:
	mov	x9, #0                          ; =0x0
	movi.2d	v12, #0000000000000000
	fmov	d0, #16.00000000
LBB5_12:                                ; =>This Inner Loop Header: Depth=1
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
	b.ne	LBB5_12
; %bb.13:
	fcmp	d12, #0.0
	b.ls	LBB5_9
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
	b.gt	LBB5_9
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
	.loh AdrpAdd	Lloh192, Lloh193
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
Lloh194:
	adrp	x8, ___stack_chk_guard@GOTPAGE
Lloh195:
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
Lloh196:
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	cbz	x0, LBB6_26
; %bb.1:
	mov	x19, x1
	mov	x20, x0
	str	x1, [sp]
Lloh197:
	adrp	x2, l_.str.60@PAGE
Lloh198:
	add	x2, x2, l_.str.60@PAGEOFF
	add	x0, sp, #40
	mov	w1, #32                         ; =0x20
	bl	_snprintf
	str	x19, [sp]
Lloh199:
	adrp	x2, l_.str.61@PAGE
Lloh200:
	add	x2, x2, l_.str.61@PAGEOFF
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
	cbz	x0, LBB6_26
LBB6_3:
	mov	x19, x0
	subs	x8, x0, x20
	b.ls	LBB6_21
; %bb.4:
	mov	x0, x19
	ands	x9, x8, #0x3
	b.eq	LBB6_8
; %bb.5:
	mov	x0, x19
LBB6_6:                                 ; =>This Inner Loop Header: Depth=1
	ldrb	w10, [x0]
	cmp	w10, #123
	b.eq	LBB6_21
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
	b	LBB6_21
LBB6_10:
	sub	x0, x0, #1
LBB6_11:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x0, #1]
	cmp	w8, #123
	b.eq	LBB6_17
; %bb.12:                               ;   in Loop: Header=BB6_11 Depth=1
	ldrb	w8, [x0]
	cmp	w8, #123
	b.eq	LBB6_21
; %bb.13:                               ;   in Loop: Header=BB6_11 Depth=1
	ldurb	w8, [x0, #-1]
	cmp	w8, #123
	b.eq	LBB6_18
; %bb.14:                               ;   in Loop: Header=BB6_11 Depth=1
	ldurb	w8, [x0, #-2]
	cmp	w8, #123
	b.eq	LBB6_19
; %bb.15:                               ;   in Loop: Header=BB6_11 Depth=1
	sub	x8, x0, #3
	sub	x0, x0, #4
	cmp	x8, x20
	b.hi	LBB6_11
; %bb.16:
	mov	x0, x20
	b	LBB6_21
LBB6_17:
	add	x0, x0, #1
	b	LBB6_21
LBB6_18:
	sub	x0, x0, #1
	b	LBB6_21
LBB6_19:
	sub	x0, x0, #2
	b	LBB6_21
LBB6_20:                                ;   in Loop: Header=BB6_21 Depth=1
	add	x19, x19, #1
LBB6_21:                                ; =>This Inner Loop Header: Depth=1
	ldrb	w8, [x19]
	cbz	w8, LBB6_23
; %bb.22:                               ;   in Loop: Header=BB6_21 Depth=1
	cmp	w8, #125
	b.ne	LBB6_20
LBB6_23:
Lloh201:
	adrp	x1, l_.str.62@PAGE
Lloh202:
	add	x1, x1, l_.str.62@PAGEOFF
	bl	_strstr
	mov	x8, x0
	mov	x0, #0                          ; =0x0
	cbz	x8, LBB6_26
; %bb.24:
	cmp	x8, x19
	b.hs	LBB6_26
; %bb.25:
Lloh203:
	adrp	x1, l_.str.59@PAGE
Lloh204:
	add	x1, x1, l_.str.59@PAGEOFF
	mov	x0, x8
	bl	_strstr
	cmp	x0, x19
	csel	x0, x0, xzr, lo
LBB6_26:
	ldur	x8, [x29, #-24]
Lloh205:
	adrp	x9, ___stack_chk_guard@GOTPAGE
Lloh206:
	ldr	x9, [x9, ___stack_chk_guard@GOTPAGEOFF]
Lloh207:
	ldr	x9, [x9]
	cmp	x9, x8
	b.ne	LBB6_28
; %bb.27:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #80]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
LBB6_28:
	bl	___stack_chk_fail
	.loh AdrpLdrGotLdr	Lloh194, Lloh195, Lloh196
	.loh AdrpAdd	Lloh199, Lloh200
	.loh AdrpAdd	Lloh197, Lloh198
	.loh AdrpAdd	Lloh201, Lloh202
	.loh AdrpAdd	Lloh203, Lloh204
	.loh AdrpLdrGotLdr	Lloh205, Lloh206, Lloh207
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
	.quad	l_.str.55
	.quad	l_.str.56
	.quad	l_.str.57
	.quad	l_.str.58

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
	.asciz	"%s"

l_.str.27:                              ; @.str.27
	.asciz	"WHALE_LAKHS_CRORES_SHIFT"

l_.str.28:                              ; @.str.28
	.asciz	"ACTIVE_MAX_FLASH_LOAN"

l_.str.29:                              ; @.str.29
	.asciz	"MICRO_BLOCK_FLOOR_INR"

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
	.asciz	"{\n  \"ok\": true,\n  \"binary_path\": \"./bin/arb_sniper_asm\",\n  \"assembly_source\": \"engine/arb_sniper_daemon.s\",\n  \"execution_mode\": \"100%% Native C/Assembly Standalone Binary (22 Live Pools \342\200\242 16 Routes \342\200\242 Real Hardware ns/\302\265s Timing \342\200\242 Per-Block Arbitrum Profit Engine)\",\n  \"loan_sizing_policy\": \"3-Tier Per-Block Max Flash Loan: Micro Block Floor (\342\202\2712-\342\202\27116+ INR) + Active Spreads (\342\202\271150-\342\202\2719,480 INR) + Whale Market Shifts (Lakhs/Crores INR) \342\200\224 Strictly Profit-Only\",\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_min_deposit_usdc\": 0.005,\n  \"mudrex_min_deposit_inr\": 0.47,\n  \"mudrex_usdc_balance\": %.6f,\n  \"mudrex_inr_balance\": %.2f,\n  \"asm_cycles_completed\": %llu,\n  \"arbitrum_blocks_profited_session\": %llu,\n  \"session_block_total_inr\": %.2f,\n  \"session_mudrex_75_inr\": %.2f,\n  \"session_saved_25_inr\": %.2f,\n  \"min_guaranteed_block_profit_inr\": %.2f,\n  \"avg_block_profit_inr\": %.2f,\n  \"daily_500k_blocks_floor_inr\": %.2f,\n  \"cpu_eval_latency_nanoseconds\": %.2f,\n  \"cpu_eval_latency_microseconds\": %.4f,\n  \"live_block_number\": %llu,\n  \"precached_nonce_ram\": %llu,\n  \"relayer_eth_balance\": %.8f,\n  \"metamask_eth_balance\": %.8f,\n  \"relayer_gas_funded\": %s,\n  \"autonomous_exec_status\": \"%s\",\n  \"real_total_amount_100_inr\": %.2f,\n  \"real_total_amount_100_usd\": %.6f,\n  \"real_amount_transferred_75_inr\": %.2f,\n  \"real_amount_transferred_75_usd\": %.6f,\n  \"real_amount_saved_25_inr\": %.2f,\n  \"real_amount_saved_25_usd\": %.6f,\n  \"top_route\": \"%s\",\n  \"top_borrow_asset\": \"%s\",\n  \"top_spread_bps\": %.4f,\n  \"top_full_sweet_spot_loan_inr\": %.2f,\n  \"top_full_sweet_spot_loan_usd\": %.2f,\n  \"top_balancer_0pct_portion_inr\": %.2f,\n  \"top_balancer_0pct_portion_usd\": %.2f,\n  \"top_overflow_portion_inr\": %.2f,\n  \"top_overflow_portion_usd\": %.2f,\n  \"top_hybrid_fee_saved_inr\": %.2f,\n  \"top_hybrid_fee_saved_usd\": %.2f,\n  \"top_net_profit_inr\": %.2f,\n  \"top_net_profit_usd\": %.4f,\n  \"top_transferred_75_inr\": %.2f,\n  \"top_transferred_75_usd\": %.4f,\n  \"top_saved_25_inr\": %.2f,\n  \"top_saved_25_usd\": %.4f,\n  \"per_block_profit_stream\": [\n"

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
	.asciz	"    {\"rank\": %d, \"route\": \"%s\", \"asset\": \"%s\", \"p1\": %.6f, \"p2\": %.6f, \"spread_bps\": %.4f, \"fee_floor_bps\": %.2f, \"net_margin_bps\": %.4f, \"full_loan_inr\": %.2f, \"full_loan_usd\": %.2f, \"balancer_0pct_usd\": %.2f, \"overflow_usd\": %.2f, \"fee_saved_inr\": %.2f, \"fee_saved_usd\": %.2f, \"net_inr\": %.2f, \"net_usd\": %.4f, \"transferred_75_inr\": %.2f, \"transferred_75_usd\": %.4f, \"saved_25_inr\": %.2f, \"saved_25_usd\": %.4f}%s\n"

l_.str.44:                              ; @.str.44
	.asciz	"  ]\n}\n"

l_.str.45:                              ; @.str.45
	.asciz	"reports/asm_sniper_telemetry.json"

l_.str.48:                              ; @.str.48
	.asciz	"Real Hardware Eval Speed  : %.2f nanoseconds (%.4f microseconds across 16 Routes)\n"

l_.str.50:                              ; @.str.50
	.asciz	"Min Block Profit Floor    : \342\202\271+%.2f INR / Block (5,00,000 Blocks/Day Floor = \342\202\271%.2f INR / Day)\n"

l_.str.51:                              ; @.str.51
	.asciz	"Top Route (#1)            : %s\n"

l_.str.52:                              ; @.str.52
	.asciz	"Live Pool Prices          : P1=\342\202\271%.2f vs P2=\342\202\271%.2f (Spread=%.4f bps vs %.2f bps Floor)\n"

l_.str.53:                              ; @.str.53
	.asciz	"100%% Max Flash Loan (dx*) : \342\202\271%.2f INR (Balancer 0%%: \342\202\271%.2f INR + Overflow: \342\202\271%.2f INR)\n"

l_.str.54:                              ; @.str.54
	.asciz	"Net Profit (100%% Total)   : \342\202\271%+.2f INR (75%%=\342\202\271%.2f INR -> Mudrex 0xd252...3f05 | 25%%=\342\202\271%.2f INR -> Saved)\n"

l_.str.55:                              ; @.str.55
	.asciz	"https://arbitrum-one-rpc.publicnode.com"

l_.str.56:                              ; @.str.56
	.asciz	"https://arb-pokt.nodies.app"

l_.str.57:                              ; @.str.57
	.asciz	"https://arb1.arbitrum.io/rpc"

l_.str.58:                              ; @.str.58
	.asciz	"https://1rpc.io/arb"

l_.str.59:                              ; @.str.59
	.asciz	"0x"

l_.str.60:                              ; @.str.60
	.asciz	"\"id\":%d"

l_.str.61:                              ; @.str.61
	.asciz	"\"id\": %d"

l_.str.62:                              ; @.str.62
	.asciz	"\"result\""

l_.str.63:                              ; @.str.63
	.asciz	"[{\"jsonrpc\":\"2.0\",\"method\":\"eth_blockNumber\",\"params\":[],\"id\":1},{\"jsonrpc\":\"2.0\",\"method\":\"eth_gasPrice\",\"params\":[],\"id\":2},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000b411f0Bf1E010FCc81585eDD2b65C5a49d3d0099\"},\"latest\"],\"id\":3},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000FF3c34DAF159741C931F7c421350f8289A9d89BE\"},\"latest\"],\"id\":4},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":5},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getTransactionCount\",\"params\":[\"0xFF3c34DAF159741C931F7c421350f8289A9d89BE\",\"latest\"],\"id\":6},{\"jsonrpc\":\"2.0\",\"method\":\"eth_getBalance\",\"params\":[\"0x9dD041dbd964DE086Da8f907518f6E25c45aea70\",\"latest\"],\"id\":7},{\"jsonrpc\":\"2.0\",\"method\":\"eth_call\",\"params\":[{\"to\":\"0xaf88d065e77c8cC2239327C5EDb3A432268e5831\",\"data\":\"0x70a08231000000000000000000000000d2529585059e3e5c09c912f0f9570000c2a53f05\"},\"latest\"],\"id\":8}]"

l_.str.64:                              ; @.str.64
	.asciz	"reports/live_block_ticker.json.tmp"

l_.str.65:                              ; @.str.65
	.asciz	"{\n  \"ok\": true,\n  \"engine_binary\": \"./bin/arb_sniper_asm (Native C/Assembly Pthreads + HTTP/2 TCP_NODELAY)\",\n  \"rpc_endpoint\": \"%s\",\n  \"asm_eval_ns\": %.1f,\n  \"asm_eval_us\": %.3f,\n  \"rpc_rtt_ms\": %.2f,\n  \"block_number\": %llu,\n  \"gas_price_gwei\": %.4f,\n  \"latest_nonce\": %llu,\n  \"latest_nonce_hex\": \"0x%llx\",\n  \"mudrex_wallet\": \"0xd2529585059e3e5c09c912f0f9570000c2a53f05\",\n  \"mudrex_usdc_raw\": %llu,\n  \"metamask_usdc_raw\": %llu,\n  \"mudrex_usdc_balance\": \"%.6f\",\n  \"mudrex_inr\": \"%.2f\",\n  \"binance_usdc_balance\": \"%.6f\",\n  \"metamask_usdc_balance\": \"%.6f\",\n  \"total_onchain_usdc\": \"%.6f\",\n  \"binance_inr\": \"%.2f\",\n  \"metamask_inr\": \"%.2f\",\n  \"total_onchain_inr\": \"%.2f\",\n  \"metamask_eth_balance\": \"%.8f\",\n  \"relayer_eth_balance\": \"%.8f\",\n  \"updated_epoch\": %ld\n}\n"

l_.str.66:                              ; @.str.66
	.asciz	"reports/live_block_ticker.json"

l_str.67:                               ; @str.67
	.asciz	"NATIVE ASSEMBLY SNIPER BINARY (./bin/arb_sniper_asm) SELF-TEST PASSED"

l_str.69:                               ; @str.69
	.asciz	"Mudrex Mediator Wallet    : 0xd2529585059e3e5c09c912f0f9570000c2a53f05 (Min Dep > 0.005 USDC = \342\202\2710.47 INR)"

l_str.70:                               ; @str.70
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

.zerofill __DATA,__bss,__MergedGlobals.71,3920,3 ; @_MergedGlobals.71
.subsections_via_symbols
