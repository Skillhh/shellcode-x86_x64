default rel
section .text
	global _start
_start:
	jmp real_start
	string: db "Hello SLAE-64", 0xa

real_start:
	xor rax, rax
	add rax, 1
	mov rdi, rax
	lea rsi, [string]
;	lea rsi, [rel string]
	xor rdx, rdx
	add rdx, 14
	syscall

	xor rax, rax
	add  rax, 60
	xor rdi, rdi
	add rdi, 11
	syscall
