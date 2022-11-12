#include <stdio.h>
#include "string.h"
int* count(const char *string) {
    static int ascii[128] = {0};
    for (int i = 0; i < strlen(string) - 1; ++i) {
        int asciiVal = (int) string[i];
        if (asciiVal > 32) {
            ascii[asciiVal]++;
        }
    }
    return ascii;
}
