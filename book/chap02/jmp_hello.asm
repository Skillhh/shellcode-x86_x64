; jmp_hello.asm - An example of unconditional jump
section .text
	global _start:
_start:
	nop
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, hello_one
	mov rdx, lenght_one
	syscall

	jmp print_three
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, hello_two
	mov rdx, lenght_two
	syscall

print_three:
	mov rax, 0x1
	mov rdi, 0x1
	mov rsi, hello_three
	mov rdx, lenght_three
	syscall

	mov rax, 0x3c
	mov rdi, 0xb
	syscall

section .data
	hello_one : db 'hello one', 0xa
	lenght_one: equ $-hello_one

	hello_two: db 'hello two', 0xa
	lenght_two: equ $-hello_two

	hello_three: db 'hello three', 0xa
	lenght_three: equ $-hello_three
