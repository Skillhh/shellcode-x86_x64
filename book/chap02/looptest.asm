; looptest.asm - loops
section .text
	global _start
_start:
	nop
	mov rcx, 0x5
	mov rbx, 0x1

increment:
	inc rbx
	loop increment

	mov rax, 0x3c
	mov rdi, 0x0
	syscall

section .data
