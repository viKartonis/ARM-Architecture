	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 14, 4	sdk_version 14, 4
	.globl	__Z14register_probeyy           ; -- Begin function _Z14register_probeyy
	.p2align	2
__Z14register_probeyy:                  ; @_Z14register_probeyy
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	str	x0, [sp, #24]
	str	x1, [sp, #16]
	ldr	x8, [sp, #24]
	ldr	x9, [sp, #16]
	add	x8, x8, x9
	str	x8, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x9, #3
	mul	x0, x8, x9
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #48
	.cfi_def_cfa_offset 48
	stp	x29, x30, [sp, #32]             ; 16-byte Folded Spill
	add	x29, sp, #32
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	mov	x8, #100
	stur	x8, [x29, #-8]
	mov	x8, #200
	str	x8, [sp, #16]
	ldur	x0, [x29, #-8]
	ldr	x1, [sp, #16]
	bl	__Z14register_probeyy
	str	x0, [sp, #8]
	ldr	x8, [sp, #8]
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str@PAGE
	add	x0, x0, l_.str@PAGEOFF
	bl	_printf
	mov	w0, #0
	ldp	x29, x30, [sp, #32]             ; 16-byte Folded Reload
	add	sp, sp, #48
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%llu\n"

.subsections_via_symbols
