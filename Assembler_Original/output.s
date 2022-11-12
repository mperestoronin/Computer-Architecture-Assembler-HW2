	.file	"output.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Letter count: " #строка "Letter count: (аргумент printf)"
.LC1:
	.string	"%c - %i \n" #строчка с параметрами вывода printf (аргумент printf)
	.text
	.globl	output
	.type	output, @function
output:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi # int *ascii
	lea	rdi, .LC0[rip]
	call	puts@PLT # вызов printf("%s", "Letter count: \n");
	mov	DWORD PTR -4[rbp], 33 #int i
	jmp	.L2
.L4:
	# начало if (ascii[i] != 0)
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	je	.L3
	# конец if (ascii[i] != 0)
	# начало printf("%c - %i \n", (char)i, ascii[i]);
	mov	eax, DWORD PTR -4[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	edx, DWORD PTR [rax]
	mov	eax, DWORD PTR -4[rbp]
	movsx	eax, al
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT # вызов printf внутри цикла for
	# конец printf("%c - %i \n", (char)i, ascii[i]);
.L3:
	add	DWORD PTR -4[rbp], 1
.L2:
	cmp	DWORD PTR -4[rbp], 127
	jle	.L4
	nop
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	output, .-output
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
