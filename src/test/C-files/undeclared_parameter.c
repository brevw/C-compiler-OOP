#include "minic-stdlib.h"

int a;

char foo(char c) {
    return c;
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
    return foo(d);
}


