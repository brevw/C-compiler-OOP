#include "minic-stdlib.h"


void main() {
    int a;
    int b;
    int c;
    int d;
    int temp;
    int temp2;

    a = 1;
    b = 2;
    c = 3;
    d = 4;

    temp = 0;
    temp2 = temp;

    print_i(a);
    print_c('\n');
    print_i(b);
    print_c('\n');
    print_i(c);
    print_c('\n');

    a = b + 2;
    b = c + 3;
    c = d + 4;
    d = a + 5;

    print_i(a);
    print_c('\n');
    print_i(b);
    print_c('\n');
    print_i(c);
    print_c('\n');
    print_i(d);
    print_c('\n');
}
