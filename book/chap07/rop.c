#include<stdio.h>
#include<unistd.h>

int overflow()
{
	char buf[80];
	int r;
	read(0, buf, 500);
	printf("THe buffer content %d, %s", r, buf);
	return (0);
}
int main()
{
	printf("Starting /bin/ls");
	overflow();
	return (0);
}
