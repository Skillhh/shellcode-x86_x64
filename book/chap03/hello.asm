; hello.asm - Debugger example
section .text
	global _start
_start:
	nop
	mov rax, 1
	mov rdi, 1
	mov rsi, hello_world
	mov rdx, length
	syscall

	mov rax, 0x3c
	mov rdi, 0x0
	syscall

section .data
	hello_world: db 'hello there', 0xa
	length: equ $-hello_world
