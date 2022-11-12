	.file	"count.c"
	.intel_syntax noprefix
	.text
	.globl	count
	.type	count, @function
count:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 40
	.cfi_offset 3, -24
	mov	QWORD PTR -40[rbp], rdi # const char *string
	mov	DWORD PTR -24[rbp], 0 # int i = 0
	jmp	.L2
.L4:
	mov	eax, DWORD PTR -24[rbp]
	movsx	rdx, eax
	mov	rax, QWORD PTR -40[rbp]
	add	rax, rdx
	movzx	eax, BYTE PTR [rax]
	movsx	eax, al
	mov	DWORD PTR -20[rbp], eax # asciiVal
	cmp	DWORD PTR -20[rbp], 32 # if (asciiVal > 32)
	jle	.L3
	#начало ascii[asciiVal]++;
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, ascii.2496[rip]
	mov	eax, DWORD PTR [rdx+rax]
	lea	ecx, 1[rax]
	mov	eax, DWORD PTR -20[rbp]
	cdqe
	lea	rdx, 0[0+rax*4]
	lea	rax, ascii.2496[rip]
	mov	DWORD PTR [rdx+rax], ecx
	# конец ascii[asciiVal]++;
.L3:
	add	DWORD PTR -24[rbp], 1 # i++
.L2:
	# начало цикла for
	mov	eax, DWORD PTR -24[rbp] # i
	movsx	rbx, eax
	mov	rax, QWORD PTR -40[rbp] #string
	mov	rdi, rax
	call	strlen@PLT # вызов strlen
	sub	rax, 1
	cmp	rbx, rax
	jb	.L4
	# конец цикла for
	lea	rax, ascii.2496[rip]
	add	rsp, 40
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	count, .-count
	.local	ascii.2496
	.comm	ascii.2496,512,32
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
