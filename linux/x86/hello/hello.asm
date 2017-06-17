;Tested on Ubuntu 7.04 x86

section .text
    global _start

_start:
    jmp short message

execution:
    xor    eax, eax
    mov    al, 0x4
    xor    ebx, ebx
    inc    ebx
    pop    ecx
    mov    dl, 0xf
    int    0x80

    xor    eax, eax
    mov    al, 0x1
    xor    ebx, ebx
    int    0x80

message:
    call   execution
    db     "Hello, world!", 0x0d, 0x0a
