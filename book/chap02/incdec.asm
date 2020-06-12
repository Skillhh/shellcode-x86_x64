; incdec.asm - increment and decrement operations.
section .text
	global _start
_start:
	nop
	mov rax, 0x5
	inc rax
	inc rax

	mov rbx, 0x6
	dec rbx
	dec rbx

	mov rax, 0x3c
	mov rdi, 0x0
	syscall

section .data
