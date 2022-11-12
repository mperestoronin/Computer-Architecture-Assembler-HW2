	.file	"main.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
	.align 8
.LC0:
	.string	"Input your string (256 characters maximum) not extended ASCII only:"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 16	#,
# ./main.c:8:     printf("Input your string (256 characters maximum) not extended ASCII only:\n");
	lea	rdi, .LC0[rip]	#,
	call	puts@PLT	#
# ./main.c:9:     char* input = input_str();
	mov	eax, 0	#,
	call	input_str@PLT	#
	mov	QWORD PTR -8[rbp], rax	# input, tmp84 - записываем результат работы input_str в char* input
# ./main.c:10:     int* result = count(input);
	mov	rax, QWORD PTR -8[rbp]	# tmp85, input - передаем параметр input в функцию count
	mov	rdi, rax	#, tmp85
	call	count@PLT	#
	mov	QWORD PTR -16[rbp], rax	# result, tmp - записываем результат работы функции count в *result
# ./main.c:11:     output(result);
	mov rdi, QWORD PTR -16[rbp] # - передаем result в функцию output
	call	output@PLT	#
	mov	eax, 0	# _8,
# ./main.c:12: }
	leave	
	ret	
	.size	main, .-main
