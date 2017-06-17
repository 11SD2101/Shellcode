; nanosleep({10, 0}, NULL)
xor	rax, rax
push	rax
mov	bl, 10
push	rbx
mov	rdi, rsp
xor	rsi, rsi
mov	al, 35
syscall

; exit(0)
mov	al, 60
xor	rdi, rdi
syscall
