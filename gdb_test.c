#include <stdio.h>
#include <string.h>

int main(int args,  char **argv)
{
	char *p = "PentesterAcademyPass";

	if (strcmp(argv[1], p) == 0)
	{
		printf("\nWelcome to the SLAE 64-Bits course! Please proceed to the next video!\n");
	}
	else
	{
		printf("\nIt's time to review those GDB Videos again!\n");
	}

	return (0);
}
