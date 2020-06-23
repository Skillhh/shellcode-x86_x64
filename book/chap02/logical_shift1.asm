section .text
	global _start
_start:
	nop
	mov rax, 0x0fffffffffffffff
	shl rax, 4
	shl rax, 4

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
