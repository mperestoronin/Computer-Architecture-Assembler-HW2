#include <stdio.h>
#include "string.h"
char* input_str() {
    static char string[256];
    fflush(stdin);
    fgets(string, 256, stdin);
    return string;
}
