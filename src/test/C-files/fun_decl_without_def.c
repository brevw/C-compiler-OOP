#include "minic-stdlib.h"

int a;

int foo(char c);
void bar();



int foo(char c) {
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

