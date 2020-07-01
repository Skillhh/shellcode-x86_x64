#include <unistd.h>

int main()
{
//	char * const argv[] = {"cat","/etc/issue", NULL};
//	execve("/bin/cat", argv, NULL);

	char * const argv[] = {"/bin/sh", NULL};
	execve("/bin/sh", argv, NULL);
	return 0;
}
