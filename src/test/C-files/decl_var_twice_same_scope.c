#include "minic-stdlib.h"

int a;

int foo() {
    int a;
    int a;
    a = 1;
    return a;
}

int main() {
    int b;
    int c;
    b = 1;
    c = b;
    {
        int a;
        a = 1;
    }
    return 0;
}

