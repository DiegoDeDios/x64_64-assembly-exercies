;	- Use the addressing mode to calculate 3*n + 1, where n is the value of
;	a register of your choice.
;   n = rsi
global _start

section .data
    str: db 'Assembly is great',0xa
    size: equ $ - str
    STDOUT: equ 1
    REG_VAL: db 8

_start:
    mov rax, 1
    mov rdi, STDOUT
    mov rsi, str
    mov rdx, size

    syscall

    lea rbx, [3*rsi + 1]
    mov [REG_VAL], rbx

    mov rax, 1
    mov rdi, STDOUT
    mov rsi, REG_VAL
    mov rdx, 8
    syscall

    mov rax, 60
    xor rdi, rdi
    syscall

