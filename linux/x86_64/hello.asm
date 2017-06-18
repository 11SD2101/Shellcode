; write(1, "Hello, world!!\r\n", 0x10)
xor    rax, rax
push    rax
mov    r8, 0x0a0d2121646c726f
push    r8
mov    r8, 0x77202c6f6c6c6548
push    r8
xor    rdi, rdi
inc    dil
mov    rsi, rsp
xor    rdx, rdx
mov    dl, 0x10
inc    al
syscall

; exit(0)
mov al, 0x3c
dec dil
syscall
