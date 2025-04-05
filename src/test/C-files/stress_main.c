#include "minic-stdlib.h"

struct Temp1 {
    int f1;
    char f2;
    int f3;
};

struct Temp2 {
    char f1;
    int f2;
    char f3;
};

struct Temp4 {
    char f1;
    struct Temp2 f2;
    int f3;
};

struct Temp2 function(struct Temp1 t1, struct Temp2 t2, struct Temp1 t3, struct Temp4 t4) {
    print_s((char*)"Inside function\n");
    print_i(t1.f1);
    print_c(t1.f2);
    print_i(t1.f3);
    print_c('\n');

    print_c(t2.f1);
    print_i(t2.f2);
    print_c(t2.f3);
    print_c('\n');

    print_i(t3.f1);
    print_c(t3.f2);
    print_i(t3.f3);
    print_c('\n');

    print_c(t4.f1);
    print_c(t4.f2.f1);
    print_i(t4.f2.f2);
    print_c(t4.f2.f3);
    print_i(t4.f3);
    print_c('\n');

    t2.f1 = 'a';
    return t2;
}

void main() {
    struct Temp1 t1;
    struct Temp2 t2;
    struct Temp1 t3;
    struct Temp4 t4;

    t1.f1 = 1;
    t1.f2 = 'x';
    t1.f3 = 2;

    t2.f1 = 'y';
    t2.f2 = 3;
    t2.f3 = 'z';

    t3.f1 = 4;
    t3.f2 = 'w';
    t3.f3 = 5;

    t4.f1 = 'z';
    t4.f2 = t2;
    t4.f3 = 6;
    t2 = function(t1, t2, t3, t4);

    return;
}

