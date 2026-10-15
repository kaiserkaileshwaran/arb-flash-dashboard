	.build_version macos, 27, 0	sdk_version 27, 0
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_evaluate_arbitrum_tick_fast    ; -- Begin function evaluate_arbitrum_tick_fast
	.p2align	2
_evaluate_arbitrum_tick_fast:           ; @evaluate_arbitrum_tick_fast
	.cfi_startproc
; %bb.0:
	ucvtf	d6, x0
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	fmov	d7, x8
	fmul	d7, d6, d7
	fcmp	d7, #0.0
	mov.16b	v6, v0
	b.le	LBB0_2
; %bb.1:
	ucvtf	d6, x1
	mov	x8, #60813                      ; =0xed8d
	movk	x8, #41141, lsl #16
	movk	x8, #50935, lsl #32
	movk	x8, #16048, lsl #48
	fmov	d16, x8
	fmul	d6, d6, d16
	fdiv	d6, d6, d7
LBB0_2:
	fcmp	d0, d1
	fcsel	d7, d0, d1, mi
	fcmp	d6, d7
	fcsel	d17, d6, d7, mi
	movi.2d	v7, #0000000000000000
	fcmp	d17, #0.0
	movi.2d	v16, #0000000000000000
	b.le	LBB0_4
; %bb.3:
	fcmp	d0, d1
	fcsel	d16, d0, d1, gt
	fcmp	d6, d16
	fcsel	d16, d6, d16, gt
	fsub	d16, d16, d17
	fdiv	d16, d16, d17
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16579, lsl #48
	fmov	d17, x8
	fmul	d16, d16, d17
LBB0_4:
	fsub	d3, d16, d3
	mov	x8, #17197                      ; =0x432d
	movk	x8, #60188, lsl #16
	movk	x8, #14050, lsl #32
	movk	x8, #16154, lsl #48
	fmov	d17, x8
	fmul	d17, d3, d17
	fmul	d2, d2, d17
	fcmp	d3, #0.0
	fcsel	d2, d2, d7, gt
	ucvtf	d3, x2
	fsub	d17, d2, d4
	mov	x8, #17324                      ; =0x43ac
	movk	x8, #53714, lsl #16
	movk	x8, #29277, lsl #32
	movk	x8, #15410, lsl #48
	fmov	d18, x8
	fmul	d3, d3, d18
	sub	x8, x2, #1
	mov	x9, #-1486618625                ; =0xffffffffa763ffff
	movk	x9, #46771, lsl #32
	movk	x9, #3552, lsl #48
	cmp	x8, x9
	cset	w8, lo
	mov	x9, #54002                      ; =0xd2f2
	movk	x9, #25165, lsl #16
	movk	x9, #22544, lsl #32
	movk	x9, #16297, lsl #48
	fmov	d18, x9
	fnmsub	d5, d5, d18, d4
	fcsel	d5, d5, d7, lo
	stp	d0, d6, [x3]
	stp	d1, d16, [x3, #16]
	stp	d2, d4, [x3, #32]
	stp	d17, d3, [x3, #48]
	str	d5, [x3, #64]
	mov	x9, #-7378697629483820647       ; =0x9999999999999999
	movk	x9, #39322
	movk	x9, #16297, lsl #48
	fmov	d0, x9
	fcmp	d17, d0
	cset	w9, gt
	fmov	d0, #0.50000000
	fcmp	d5, d0
	csel	w8, wzr, w8, le
	stp	w9, w8, [x3, #72]
	ret
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
	str	wzr, [x6, #384]
	movi.2d	v0, #0000000000000000
	stp	q0, q0, [x6, #352]
	stp	q0, q0, [x6, #320]
	stp	q0, q0, [x6, #288]
	stp	q0, q0, [x6, #256]
	stp	q0, q0, [x6, #224]
	stp	q0, q0, [x6, #192]
	stp	q0, q0, [x6, #160]
	stp	q0, q0, [x6, #128]
	stp	q0, q0, [x6, #96]
	stp	q0, q0, [x6, #64]
	stp	q0, q0, [x6, #32]
	stp	q0, q0, [x6]
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
	sub	sp, sp, #128
	stp	d11, d10, [sp, #64]             ; 16-byte Folded Spill
	stp	d9, d8, [sp, #80]               ; 16-byte Folded Spill
	stp	x20, x19, [sp, #96]             ; 16-byte Folded Spill
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w19, -24
	.cfi_offset w20, -32
	.cfi_offset b8, -40
	.cfi_offset b9, -48
	.cfi_offset b10, -56
	.cfi_offset b11, -64
	mov	w20, #16960                     ; =0x4240
	movk	w20, #15, lsl #16
	add	x1, sp, #48
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	mov	x8, #3689348814741910323        ; =0x3333333333333333
	movk	x8, #14643, lsl #32
	movk	x8, #16545, lsl #48
	fmov	d0, x8
	movi.2d	v1, #0000000000000000
	mov	x8, #54933                      ; =0xd695
	movk	x8, #59430, lsl #16
	movk	x8, #11787, lsl #32
	movk	x8, #15889, lsl #48
	fmov	d2, x8
	mov	x8, #31457                      ; =0x7ae1
	movk	x8, #44564, lsl #16
	movk	x8, #16071, lsl #32
	movk	x8, #16545, lsl #48
	fmov	d3, x8
	mov	x8, #41500                      ; =0xa21c
	movk	x8, #60035, lsl #16
	movk	x8, #14650, lsl #32
	movk	x8, #16545, lsl #48
	fmov	d4, x8
	mov	x8, #149533581377536            ; =0x880000000000
	movk	x8, #16579, lsl #48
	fmov	d5, x8
	fmov	d6, #1.00000000
	mov	w8, #16960                      ; =0x4240
	movk	w8, #15, lsl #16
	b	LBB2_2
LBB2_1:                                 ;   in Loop: Header=BB2_2 Depth=1
	fadd	d1, d1, d6
	subs	w8, w8, #1
	b.eq	LBB2_4
LBB2_2:                                 ; =>This Inner Loop Header: Depth=1
	fmadd	d16, d1, d2, d0
	fminnm	d7, d16, d3
	fcmp	d7, d4
	fcsel	d7, d4, d7, gt
	fcmp	d7, #0.0
	movi.2d	v8, #0000000000000000
	b.le	LBB2_1
; %bb.3:                                ;   in Loop: Header=BB2_2 Depth=1
	fmaxnm	d16, d16, d3
	fcmp	d16, d4
	fcsel	d16, d4, d16, mi
	fsub	d16, d16, d7
	fdiv	d7, d16, d7
	fmul	d8, d7, d5
	b	LBB2_1
LBB2_4:
	fmov	d0, #-10.00000000
	fadd	d0, d8, d0
	mov	x8, #17197                      ; =0x432d
	movk	x8, #60188, lsl #16
	movk	x8, #14050, lsl #32
	movk	x8, #16154, lsl #48
	fmov	d1, x8
	fmul	d1, d0, d1
	mov	x8, #211106232532992            ; =0xc00000000000
	movk	x8, #16530, lsl #48
	fmov	d2, x8
	fmul	d1, d1, d2
	mov	x8, #-7378697629483820647       ; =0x9999999999999999
	movk	x8, #39322
	movk	x8, #49081, lsl #48
	fmov	d2, x8
	fadd	d1, d1, d2
	fcmp	d0, #0.0
	fcsel	d9, d1, d2, gt
	add	x1, sp, #32
	mov	w0, #6                          ; =0x6
	bl	_clock_gettime
	ldp	x8, x9, [sp, #32]
	ldp	x10, x11, [sp, #48]
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
	fdiv	d10, d0, d1
Lloh2:
	adrp	x19, l_str.10@PAGE
Lloh3:
	add	x19, x19, l_str.10@PAGEOFF
	mov	x0, x19
	bl	_puts
Lloh4:
	adrp	x0, l_str.8@PAGE
Lloh5:
	add	x0, x0, l_str.8@PAGEOFF
	bl	_puts
	mov	x0, x19
	bl	_puts
	str	x20, [sp]
Lloh6:
	adrp	x0, l_.str.2@PAGE
Lloh7:
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	str	d10, [sp]
Lloh8:
	adrp	x0, l_.str.3@PAGE
Lloh9:
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	stp	d10, d10, [sp]
Lloh10:
	adrp	x0, l_.str.4@PAGE
Lloh11:
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	w8, #99                         ; =0x63
	mov	w9, #239                        ; =0xef
	stp	x9, x8, [sp, #16]
	mov	w8, #52                         ; =0x34
	mov	w9, #16                         ; =0x10
	stp	x9, x8, [sp]
Lloh12:
	adrp	x0, l_.str.5@PAGE
Lloh13:
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_printf
	stp	d8, d9, [sp]
Lloh14:
	adrp	x0, l_.str.6@PAGE
Lloh15:
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	mov	w8, #1                          ; =0x1
	mov	x9, #11535                      ; =0x2d0f
	movk	x9, #40370, lsl #16
	movk	x9, #64495, lsl #32
	movk	x9, #16548, lsl #48
	stp	x9, x8, [sp]
Lloh16:
	adrp	x0, l_.str.7@PAGE
Lloh17:
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_printf
	mov	x0, x19
	bl	_puts
	mov	w0, #0                          ; =0x0
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	ldp	x20, x19, [sp, #96]             ; 16-byte Folded Reload
	ldp	d9, d8, [sp, #80]               ; 16-byte Folded Reload
	ldp	d11, d10, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.loh AdrpAdd	Lloh16, Lloh17
	.loh AdrpAdd	Lloh14, Lloh15
	.loh AdrpAdd	Lloh12, Lloh13
	.loh AdrpAdd	Lloh10, Lloh11
	.loh AdrpAdd	Lloh8, Lloh9
	.loh AdrpAdd	Lloh6, Lloh7
	.loh AdrpAdd	Lloh4, Lloh5
	.loh AdrpAdd	Lloh2, Lloh3
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str.2:                               ; @.str.2
	.asciz	"Iterations Executed      : %d ticks + BSWAP64 EVM calldata encodings\n"

l_.str.3:                               ; @.str.3
	.asciz	"Total CPU Time           : %.3f ms\n"

l_.str.4:                               ; @.str.4
	.asciz	"Latency Per Tick         : %.2f nanoseconds (0.0000%.0f ms)\n"

l_.str.5:                               ; @.str.5
	.asciz	"Calldata Prefix (Hex)    : 0x%02x%02x%02x%02x...\n"

l_.str.6:                               ; @.str.6
	.asciz	"DEX Spread               : %.2f bps | DEX Net Profit: $%.4f\n"

l_.str.7:                               ; @.str.7
	.asciz	"Aave HF (0.9950) Bounty  : $%.2f USD Net Profit | Execute Liq: %d\n"

l_str.8:                                ; @str.8
	.asciz	"AWS EC2 x86_64 & ARM64 HARDWARE ASSEMBLY SNIPER KERNEL BENCHMARK"

l_str.10:                               ; @str.10
	.asciz	"======================================================================"

.subsections_via_symbols
