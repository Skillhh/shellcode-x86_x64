; looptest1.asm - Second example of loop instruction.
section .text
	global _start
_start:

	mov rcx, 0x5

print:
	push rcx
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, hello
	mov rdx, length
	syscall
	pop rcx

loop print

	mov rax, 0x3c
	mov rdi, 0x0
	syscall

section .data
	hello: db 'Hello There!', 0xa
	length: equ $-hello
