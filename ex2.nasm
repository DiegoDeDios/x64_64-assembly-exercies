global addition


;add(char a, char b) rdi = a, rsi = b

addition:
	push rbp
	mov rbp, rsp

	push rbx
	
	push r12
	push r13

	mov r12, rdi
	mov r13, rsi

	add r12, r13

	mov rax, r12

	pop r13
	pop r12
	pop rbx

	mov rsp, rbp
	pop rbp
	ret
