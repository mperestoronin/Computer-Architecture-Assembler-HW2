# Список изменений
Следующие флаги были применены ко всем файлам:
`gcc -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-exceptions -fverbose-asm ./<filename>.c -S -o ./<filename>.s`
Из всех файлов убраны cdqe
main:
Убраны лишние переприсваивания
Было:
<br>```	assembly
mov	rax, QWORD PTR -16[rbp]
mov	rdi, rax
```
стало:
mov rdi, QWORD PTR -16[rbp]
Убраны лишние строки:
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
count:
убрано лишнее присваивание:
было:
mov	rax, QWORD PTR -40[rbp]
mov	rdi, rax	
стало:
mov rdi, QWORD PTR -40[rbp]
output:
Убраны лишние строки:
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
input_str:
Убраны лишние переприсваивания
было:
mov	rax, QWORD PTR stdin[rip]
mov	rdx, rax	
стало:
mov rdx, QWORD PTR stdin[rip]
было:
mov	rax, QWORD PTR stdin[rip]	
mov	rdi, rax	#, stdin.0_1
стало:
mov rdi, QWORD PTR stdin[rip]

Убраны лишние строки:
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
