#include "minic-stdlib.h"

int a;

struct foo foo(char c) {
    return c;
}

int main() {
    struct foo f;
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

