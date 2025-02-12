#include "minic-stdlib.h"

int a;

int foo(char c) {
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
    return 0;
}


// decl at the end
int foo(char c);


