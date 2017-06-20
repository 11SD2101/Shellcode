; nanosleep({10,0}, NULL)
xor rax, rax
push rax
mov al, 0xa
push rax
push rsp
pop rdi
xor rsi, rsi 
mov	al, 0x23
syscall

; exit(0)
xor rax, rax
mov al, 0x3c
xor rdi, rdi
syscall
