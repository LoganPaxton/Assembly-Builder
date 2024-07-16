section .data
    hello db 'Hello, World!', 0x0A  ; our string with newline character
    hello_len equ $ - hello         ; calculate length of the string

section .text
    global _start   ; entry point for ELF executables

_start:
    ; write our string to stdout
    mov eax, 1       ; system call for sys_write
    mov edi, 1       ; file descriptor 1 (stdout)
    mov rsi, hello   ; pointer to the string
    mov edx, hello_len ; length of string
    syscall          ; invoke syscall

    ; exit program
    mov eax, 60      ; system call for sys_exit
    xor edi, edi     ; exit code 0
    syscall          ; invoke syscall
