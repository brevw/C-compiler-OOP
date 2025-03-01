#include "minic-stdlib.h"

char a11; char a12; char a13;
int b;

void main() {
    a11 = 'x';
    a12 = 'y';
    a13 = 'z';
    b = 1;
    print_c(a11);
    print_c(a12);
    print_c(a13);
    print_i(b);
    return;
}
