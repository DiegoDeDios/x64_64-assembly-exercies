global _start

section .data
    a_str: db 'This is a string',0xa
    a_size: equ $-a_str
    b_str: db 'You are seeing this', 0xa
    b_size: equ $-b_str
    c_str: db 'You should not see this', 0xa
    c_size: equ $-c_str

_start:
    mov rax, 1
    mov rdi, 1
    mov rsi, a_str
    mov rdx, a_size

    syscall

    jmp new_label

    mov rax, 1
    mov rdi, 1
    mov rsi, c_str
    mov rdx, c_size

    syscall

    mov rax, 60
    xor rdi, rdi

    syscall

new_label:
    mov rax, 1
    mov rdi, 1
    mov rsi, b_str
    mov rdx, b_size

    syscall


