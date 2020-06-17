; procedures.asm - An example of function in Assembly
global _start:
section .text
addition:
	add bl, al
	ret

_start:
	nop
	mov al, 0x1
	mov bl, 0x3
	call addition

	mov r8, 0x4
	mov r9, 0x2
	call addition

	mov rax, 0x3c
	mov rdi, 0x1
	syscall
