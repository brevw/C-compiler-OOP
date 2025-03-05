#include "minic-stdlib.h"

char* concatenate(char* str1, char* str2) {
    int i;
    int j;
    char* result;
    result = (char*)mcmalloc(100);
    i = 0; j = 0;

    while (str1[i] != '\0') {
        result[j] = str1[i];
        i = i + 1;
        j = j + 1;
    }

    i = 0;
    while (str2[i] != '\0') {
        result[j] = str2[i];
        i = i + 1;
        j = j + 1;
    }

    result[j] = '\0';
    return result;
}

void main() {
    char* str1;
    char* str2;
    char* result;
    str1 = (char*)"Hello, ";
    str2 = (char*)"World!";
    result = concatenate(str1, str2);

    print_s(result);
    print_s((char*)"\n");

    return;
}
