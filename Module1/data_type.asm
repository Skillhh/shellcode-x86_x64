global _start

section .text

_start:
; write - print mesage
	nop
	mov rax, 1		; Call function write
	mov rdi, 1		; File description
	mov rsi, hello_world
	mov rdx, length
	syscall

	mov rax, var4
	mov rax, [var4]
; exit - finish program
	mov rax, 60		; Call to exit function
	mov rdi, 0		; Return 0
	syscall

section .data
	hello_world: db 'Hello World to the SLAE-64Bit Course.', 0xa
	length: equ $ - hello_world

	var1: db 0x11, 0x22
	var2: dw 0x3344
	var3: dd 0xaabbccdd
	var4: dq 0xaabbccdd11223344

	repeat_buffer: times 128 db 0xAA

section .bss
	buffer: resb 64
