	.file	"input_str.c"
	.intel_syntax noprefix
	.text
	.globl	input_str
	.type	input_str, @function
input_str:
	endbr64	
	push	rbp
	# начинаем передавать параметр в функцию fflush
	mov	rbp, rsp
# ./input_str.c:5:     fflush(stdin);
	mov rdi, QWORD PTR stdin[rip]
	# закончили передавать параметр в функцию fflush
	call	fflush@PLT # вызов функции fflush
# ./input_str.c:6:     fgets(string, 256, stdin);
	# Начинаем передавать параметры в функцию fgets
	mov rdx, QWORD PTR stdin[rip] # передаем stdin в функцию fgets
	mov	esi, 256 # передаем 256
	lea	rdi, string.2495[rip] # передаем string в fgets
	call	fgets@PLT # вызов fgets
# ./input_str.c:7:     return string;
	lea	rax, string.2495[rip]
# ./input_str.c:8: }
	pop	rbp
	ret	
	.size	input_str, .-input_str
	.local	string.2495
	.comm	string.2495,256,32
