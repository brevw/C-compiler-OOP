#include "minic-stdlib.h"

int a;

char foo(int c);

char foo(char c) {
    return c;
}

int main() {
    int b;
    int c;
    b = 1;
    c = b;
    foo('a');
    {
        int a;
        a = 1;
    }
    return 0;
}


