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
