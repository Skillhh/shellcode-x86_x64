section .text
	global _start
_start:
	nop
	mov rax, 0xffffffff00000000
	ror rax, 32

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
