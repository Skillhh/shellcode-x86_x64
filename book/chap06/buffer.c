#include<stdio.h>
#include<stdlib.h>
#include<string.h>

int copytobuffer(char *input)
{
	char buffer[256];
	strcpy(buffer, input);
	return (0);
}

void main(int argc, char *argv[])
{
	int local_variable = 1;
	copytobuffer(argv[1]);
	exit(0);
}
