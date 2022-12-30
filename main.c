#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <math.h>

#define BUFFER_SIZE 128
#define PROGRESS_WIDTH 40

void usage(char *argv[])
{
    printf("Prints a progress bar to the terminal.\n");
    printf("USAGE: %s <current> <total>\n", argv[0]);
}

int main(int argc, char *argv[])
{
    for (int i = 0; i < argc; i++)
    {
        if (strcmp(argv[i], "--help") == 0 || strcmp(argv[i], "-h") == 0)
        {
            usage(argv);
            return 0;
        }
    }

    size_t current, total;

    if (argc >= 3)
    {
        current = strtol(argv[1], NULL, 10);
        total = strtol(argv[2], NULL, 10);
    }
    else
    {
        char buffer[BUFFER_SIZE];
        fgets(buffer, BUFFER_SIZE, stdin);
        if (sscanf(buffer, "%zu %zu", &current, &total) != 2)
        {
            printf("Invalid input\n");
            usage(argv);
            return 1;
        }
    }

    if (current < 0 || total <= 0 || current > total)
    {
        printf("Invalid input\n");
        usage(argv);
        return 1;
    }

    size_t percentage = (100 * current) / total;
    int num_digits = log10(total) + 1;

    printf(" ");
    for (size_t i = 0; i <= PROGRESS_WIDTH; i++)
    {
        printf("%s", (i <= ((PROGRESS_WIDTH * percentage) / 100) ? "\u2593" : "\u2591"));
    }
    printf("  %*zu%%  %*zu/%zu\n", 3, percentage, num_digits, current, total);

    return 0;
}
