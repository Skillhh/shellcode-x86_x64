section .text
	global _start
_start:
	nop
	mov rax, 0x10111011
	mov rbx, 0x11010110
	and rax, rbx

	mov rax, 0x3c
	mov rdi, 0xa
	syscall
