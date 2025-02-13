#include "minic-stdlib.h"

int a;

void bar() {
    int a;
    a = 1;
}

int foo() {
    char bar;
    int a;
    int b;
    a = 1;
    bar = 'a';
    return (int)bar;
}

int main() {
    char foo;
    int b;
    int a;
    int c;
    b = 1;
    c = b;
    {
        int a;
        a = 1;
    }
    return 0;
}

