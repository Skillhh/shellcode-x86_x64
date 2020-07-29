global _start

section .text
_start:
	; print on screen
	xor rax, rax
	mov al, 1
	mov dil, 1
	mov esi, msg
	mov dl, len
	syscall 

	; exit gracefully
	mov rax, 60
	mov rdi, 0
	syscall

section .data
	msg: db 'Hello World to the SLAE-64 Course', 0xa
	len: equ $ - msg
