	.file	"input_str.c"
	.intel_syntax noprefix
	.text
	.globl	input_str
	.type	input_str, @function
input_str:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
# ./input_str.c:5:     fflush(stdin);
	mov rdi, QWORD PTR stdin[rip]
	call	fflush@PLT	#
# ./input_str.c:6:     fgets(string, 256, stdin);
	mov rdx, QWORD PTR stdin[rip]
	mov	esi, 256	#,
	lea	rdi, string.2495[rip]	#,
	call	fgets@PLT	#
# ./input_str.c:7:     return string;
	lea	rax, string.2495[rip]	# _6,
# ./input_str.c:8: }
	pop	rbp	#
	ret	
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
