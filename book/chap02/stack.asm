; stack.as - An example of how to use the stack
section .text
	global _start
_start:
	nop
	mov rdx, 0x1234
	push rdx
	push 0x5678
	pop rdi
	pop rsi

	mov rax, 60
	mov rdi, 0
	syscall

section .data
