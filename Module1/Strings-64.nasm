; Filename: Strings-64.nasm
; Author:  Vivek Ramachandran
; Website:  http://securitytube.net
; Training: http://securitytube-training.com 
;
;
; Purpose: String Operations in 64-bit CPU

global _start			

section .text
_start:

	; Movsb/w/d/q
	; Memory to Memory 
	cld
	lea rsi, [HelloWorld]
	lea rdi, [Copy]
	movsq

	cld
	lea rsi, [HelloWorld]
	xor rax, rax
	mov qword [Copy], rax
	lea rdi, [Copy]
	mov rcx, len
	rep movsb


	; stosb/w/d/q
	; Register to Memory 

	mov rax, 0x0123456789abcdef
	lea rdi, [var1]
	stosq

	; lodsb/w/d/q 
	; Memory to Register 

	xor rax, rax 
	lea rsi, [var1]
	lodsq

		
	; exit the program gracefully  

	mov rax, 0x3c
	mov rdi, 0		
	syscall


section .data

	HelloWorld:	db	"Hello World"
	len:	equ	$-HelloWorld

section .bss

	Copy:	resb	len
	var1:	resb	8
