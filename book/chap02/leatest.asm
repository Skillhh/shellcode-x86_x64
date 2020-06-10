# leatest.asm - loads the address of the source into the destination
section .text
	global _start
_start:
	nop
	lea rax, [mem1]
	lea rbx, [rax]

	mov rax, 0x3c
	mov rdi, 0
	syscall

section .data
	mem1: dw 0x1234
