section .text
	global _start
_start:
	nop
	mov al, 0x1
	sub al, 0x1

	jbe exit_ten
	mov rax, 0x3c
	mov rdi, 0x0
	syscall

exit_ten:
	mov rax, 0x3c
	mov rdi, 0xa
	syscall
