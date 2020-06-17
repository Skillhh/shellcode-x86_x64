; jb_ten.asm - An example of conditional jump
section .text
	global _start
_start:
	nop
	mov al, 0xaa
	add al, 0xaa

	jb exit_ten
	mov rax, 0x3c
	mov rdi, 0x0
	syscall

exit_ten:
	mov rax, 0x3c
	mov rdi, 0xa
	syscall
