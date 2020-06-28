global _start

section .data

section .bss
	buf: resb 64
	BUF_SIZE: equ 64
	size_buf: resb 8

section .text

_start:
	
	mov rax, 0
	mov rdi, 0
	mov rsi, buf
	mov rdx, BUF_SIZE
	
	syscall

	mov rbx, rax

	mov rax, 1
	mov rdi, 1
	mov rsi, buf
	mov rdx, rbx

	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

