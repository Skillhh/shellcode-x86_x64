; uncon_jmp.asm - An example de unconditional jump
section .text
	global _start
_start:
	nop
	jmp exit_ten
	mov rax, 60
	mov rdi, 12
	syscall

	mov rax, 60
	mov rdi, 0
	syscall

exit_ten:
	mov rax, 60
	mov rdi, 10
	syscall

	mov rax, 60
	mov rdi, 0
	syscall
