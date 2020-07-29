global _start

section .text
_start:
	; print on screen
	mov al, 1
	xor rdi, rdi
	add rdi, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, len
	syscall 

	; exit gracefully
	mov rax, 60
	mov rdi, 0
	syscall

section .data
	msg: db 'Hello World to the SLAE-64 Course', 0xa
	len: equ $ - msg
