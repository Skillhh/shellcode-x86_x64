global _start
;section .data
;	length: equ $-hello_world
section .text

_start:
	jmp code
	hello_world: db 'hello world',0xa
code:
	xor rax, rax
	mov al, 0x1
	xor rdi, rdi
	add rdi, 0x1
	lea rsi, [rel hello_world]
	xor rdx, rdx
	add rdx, 12
	syscall

	xor rax, rax
	mov al, 0x3c
	xor rdi, rdi
	syscall
