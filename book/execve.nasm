global _start

section .text

_start:
	xor rax, rax					; move NULL to stack
	push rax
	mov rdx, rsp					; move stack to register
	mov rbx, 0x68732f6e69622f2f		; //bin/sh on hex
	push rbx
	mov rdi, rsp
	push rax
	push rdi
	mov rsi, rsp
	mov rax, 59
	syscall
