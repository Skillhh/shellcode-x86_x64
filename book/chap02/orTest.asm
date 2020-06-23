section .text
	global _start
_start:
	nop
	mov rax, 0x10111011
	mov rdi, 0x11010110
	or rax, rdi

	mov rax, 0x3c
	mov rdi, 0x0
	syscall
