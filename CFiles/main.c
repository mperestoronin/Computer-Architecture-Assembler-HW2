#include <stdio.h>
#include "string.h"
int main() {
    extern int* count(const char *string);
    extern char* input_str();
    extern void output(int *ascii);

    printf("Input your string (256 characters maximum) not extended ASCII only:\n");
    char* input = input_str();
    int* result = count(input);
    output(result);
}
