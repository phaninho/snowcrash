#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

int main(int ac, char **av)
{
    if (ac == 1)
        return (0);
    int i = 0;

    char buf[26];
    buf[25] = '\0';
    int fd = open(av[1], O_RDONLY);
    int oc = read(fd, buf, 25);
    while (buf && buf[i])
    {
        buf[i] = buf[i] - i;
        i++;
    }
    printf("token: %s\n", buf);
    return 0;
}
