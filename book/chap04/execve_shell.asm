; execve_shell.asm - An example to execute /bin/bash with stack technique

section .text
	global _start
_start:
	nop
; Last argument NULL on stack
	xor rax, rax
	push rax
	mov rdx, rsp
; Second argument
	mov rbx, 0x68732f6e69622f2f
	push rbx
	mov rdi, rsp
; Add a NULL to separate
	push rax
	push rdi		; Adding string
	mov rsi, rsp
; execve function
	add al, 0x3b
	syscall
