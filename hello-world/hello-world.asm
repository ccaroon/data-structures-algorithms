section .data
    hello: db 'Hello, World!',10
    helloLen: equ $-hello

section .text
    global _start

_start:
    mov rax, 4          ; syscall for write
    mov rbx, 1          ; file desc 1 == stdout
    mov rcx, hello      ; put offset of hello into ecx
    mov rdx, helloLen   ;

    int 80h             ; call the kernel

    mov rax, 1          ; syscall for exit
    mov rbx, 0          ; return code 0 - no error

    int 80h
