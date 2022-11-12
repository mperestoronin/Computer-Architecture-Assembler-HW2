	.file	"count.c"
	.intel_syntax noprefix
	.text
	.globl	count
	.type	count, @function
count:
	endbr64	
	push	rbp	
	mov	rbp, rsp
	push	rbx	
	sub	rsp, 40	
	mov	QWORD PTR -40[rbp], rdi	# string, string
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	mov	r12d, 0	# i,
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	jmp	.L2	#
.L4:
# ./count.c:6:         int asciiVal = (int) string[i];
	mov	eax, r12d	# tmp92, i
	movsx	rdx, eax	# _1, tmp92
	mov	rax, QWORD PTR -40[rbp]	# tmp93, string
	add	rax, rdx	# _2, _1
	movzx	eax, BYTE PTR [rax]	# _3, *_2
# ./count.c:6:         int asciiVal = (int) string[i];
	movsx	eax, al	# tmp94, _3
	mov	r13d, eax	# asciiVal, tmp94
# ./count.c:7:         if (asciiVal > 32) {
	cmp	r13d, 32	# asciiVal,
	jle	.L3	#,
# ./count.c:8:             ascii[asciiVal]++;
	mov	eax, r13d	# tmp96, asciiVal
	lea	rdx, 0[0+rax*4]	# tmp97,
	lea	rax, ascii.2496[rip]	# tmp98,
	mov	eax, DWORD PTR [rdx+rax]	# _4, ascii
# ./count.c:8:             ascii[asciiVal]++;
	lea	ecx, 1[rax]	# _5,
	mov	eax, r13d	# tmp100, asciiVal
	lea	rdx, 0[0+rax*4]	# tmp101,
	lea	rax, ascii.2496[rip]	# tmp102,
	mov	DWORD PTR [rdx+rax], ecx	# ascii, _5
.L3:
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	add	r12d, 1	# i,
.L2:
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	mov	eax, r12d	# tmp103, i
	movsx	rbx, eax	# _6, tmp103
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	mov rdi, QWORD PTR -40[rbp]
	call	strlen@PLT	#
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	sub	rax, 1	# _8,
# ./count.c:5:     for (int i = 0; i < strlen(string) - 1; ++i) {
	cmp	rbx, rax	# _6, _8
	jb	.L4	#,
# ./count.c:11:     return ascii;
	lea	rax, ascii.2496[rip]	# _15,
# ./count.c:12: }
	add	rsp, 40	#,
	pop	rbx	#
	pop	rbp	#
	ret	
	.size	count, .-count
	.local	ascii.2496
	.comm	ascii.2496,512,32
