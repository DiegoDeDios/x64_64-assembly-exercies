;- Write a program that reads a string from stdin, changes the character
;	in the middle of that string to a newline, then prints it again.
;	(The "middle" can be obtained halving the string's size, which is
;	returned by the read sysem call.)
;
;	- Use the addressing mode to calculate 3*n + 1, where n is the value of
;	a register of your choice.


global _start

section .data

section .bss
	buf: resb 64
	BUF_SIZE: equ 64
	str_size: resb 8

section .text

_start:
	mov rax, 0
	mov rdi, 0
	mov rsi, buf
	mov rdx, BUF_SIZE
	syscall

	;RAX guarda ahora el tamano del string.
	;Para dividir en 2 hacer desplazamiento de 1 bit a la derecha
	;Guardar en RBX para liberar RAX para llamadas al sistema
	; - Diego

	mov rcx, str_size ; Guarda tamano de string
	mov qword [rcx], rax
	shr rax, 1
	mov rbx, rax ; Guarda posicion de la mitad

	mov byte [rsi+rbx], 10
	mov rax, 1
	mov rdi, 1
	mov rsi, buf
	mov rdx, str_size	
	syscall

	mov rax, 60
	mov rdi, 0
	syscall


