; carryaddsub.asm - addition with carry and subtraction with borrow;
section .text
	global _start
_start:
	nop
	mov rax, 0x5
	stc
	adc rax, 0x1

	mov rbx, 0x5
	stc
	sbb rbx, 0x1

	mov rax, 0x3c
	mov rdi, 0
	syscall
