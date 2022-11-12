	.file	"output.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Letter count: "
.LC1:
	.string	"%c - %i \n"
	.text
	.globl	output
	.type	output, @function
output:
	endbr64	
	push	rbp	#
	mov	rbp, rsp	#,
	sub	rsp, 32	#,
	mov	QWORD PTR -24[rbp], rdi	# ascii, ascii
# ./output.c:4:     printf("%s", "Letter count: \n");
	lea	rdi, .LC0[rip]	#,
	call	puts@PLT	#
# ./output.c:5:     for (int i = 33; i < 128; ++i) {
	mov	r12d, 33	# i,
# ./output.c:5:     for (int i = 33; i < 128; ++i) {
	jmp	.L2	#
.L4:
# ./output.c:6:         if (ascii[i] != 0) {
	mov	eax, r12d	# tmp92, i
	lea	rdx, 0[0+rax*4]	# _2,
	mov	rax, QWORD PTR -24[rbp]	# tmp93, ascii
	add	rax, rdx	# _3, _2
	mov	eax, DWORD PTR [rax]	# _4, *_3
# ./output.c:6:         if (ascii[i] != 0) {
	test	eax, eax	# _4
	je	.L3	#,
# ./output.c:7:             printf("%c - %i \n", (char)i, ascii[i]);
	mov	eax, r12d	# tmp94, i
	lea	rdx, 0[0+rax*4]	# _6,
	mov	rax, QWORD PTR -24[rbp]	# tmp95, ascii
	add	rax, rdx	# _7, _6
# ./output.c:7:             printf("%c - %i \n", (char)i, ascii[i]);
	mov	edx, DWORD PTR [rax]	# _8, *_7
# ./output.c:7:             printf("%c - %i \n", (char)i, ascii[i]);
	mov	eax, r12d	# tmp96, i
# ./output.c:7:             printf("%c - %i \n", (char)i, ascii[i]);
	movsx	eax, al	# _10, _9
	mov	esi, eax	#, _10
	lea	rdi, .LC1[rip]	#,
	mov	eax, 0	#,
	call	printf@PLT	#
.L3:
# ./output.c:5:     for (int i = 33; i < 128; ++i) {
	add	r12d, 1	# i,
.L2:
# ./output.c:5:     for (int i = 33; i < 128; ++i) {
	cmp	r12d, 127	# i,
	jle	.L4	#,
# ./output.c:10: }
	nop	
	nop	
	leave	
	ret	
	.size	output, .-output
