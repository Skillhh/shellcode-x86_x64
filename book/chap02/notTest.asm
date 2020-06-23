section .text
	global _start
_start:
	nop
	mov al, 0x0
	not al

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
