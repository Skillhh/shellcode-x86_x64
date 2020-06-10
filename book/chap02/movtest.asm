# movtest.asm - A example to move data directly to registers
section .text
	global _start
_start:
	nop
	mov rax, 0x1234
	mov rbx, 0x56789

	mov rax, 60
	mov rdi, 0
	syscall

section .data
