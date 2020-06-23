section .text
	global _start
_start:
	nop
	mov rax, 0x0fffffffffffffff
	sal rax, 4
	sal rax, 4

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
