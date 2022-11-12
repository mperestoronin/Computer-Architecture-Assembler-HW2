#include <stdio.h>
#include "string.h"
void output(int *ascii) {
    printf("%s", "Letter count: \n");
    for (int i = 33; i < 128; ++i) {
        if (ascii[i] != 0) {
            printf("%c - %i \n", (char)i, ascii[i]);
        }
    }
}
