#include "minic-stdlib.h"

int add(int a, int b) {
    return a + b;
}

void main() {
    int a;
    int b;
    int c;
    a = 1;
    b = 2;
    c = add(a, b);
    a = a && b;
}
