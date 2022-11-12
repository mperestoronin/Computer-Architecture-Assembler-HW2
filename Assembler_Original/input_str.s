	.file	"input_str.c"
	.intel_syntax noprefix
	.text
	.globl	input_str
	.type	input_str, @function
input_str:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	rax, QWORD PTR stdin[rip] #stdin
	mov	rdi, rax
	call	fflush@PLT # fflush(stdin);
	# начало fgets(string, 256, stdin);
	mov	rax, QWORD PTR stdin[rip]
	mov	rdx, rax
	mov	esi, 256
	lea	rdi, string.2495[rip]
	call	fgets@PLT
	# конец fgets(string, 256, stdin);
	lea	rax, string.2495[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	input_str, .-input_str
	.local	string.2495
	.comm	string.2495,256,32
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
