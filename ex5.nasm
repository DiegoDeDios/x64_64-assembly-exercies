section .text
    global _start

section .data
    str_loop: db 'This string will loop', 0xa
    str_size: equ $ - str_loop
    loop: equ 0xa ; How many times will loop
    x: db 0x1
    SYS_WRITE: equ 0x1
    STDOUT: equ 0x1


_start:
    mov r8, 0
    jmp loop_string

loop_string:
    mov rbx, loop
    cmp r8, rbx 
    jge end_process ; r8 >= rbx

    mov byte [str_loop + r8], 'x'

    mov rax, SYS_WRITE
    mov rdi, STDOUT
    mov rsi, str_loop
    mov rdx, str_size
    syscall

    inc r8
    jmp loop_string


end_process:
    mov rax, 60
    mov rdi, 0x0
    syscall


