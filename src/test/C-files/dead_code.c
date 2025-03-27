#include "minic-stdlib.h"

struct UnusedStruct {
    int unused1;
    int unused2;
};

void dead_function(struct UnusedStruct s) {
    int unused1;
    int unused2;
    int unused3;
    int unused4;
    int unused5;
    int unused6;
    int unused7;
    int unused8;
    int unused9;
    int unused10;
    int unused11;
    int unused12;
    int unused13;
    int unused14;
    int unused15;
    int unused16;
    int unused18;
    int unused19;
    int unused20;

    unused1 = 1;
    unused2 = 2;
    unused3 = 3;
    unused4 = 4;
    unused5 = 5;
    unused6 = 6;
    unused7 = 7;
    unused8 = 8;
    unused9 = 9;
    unused10 = 10;
    unused11 = 11;
    unused12 = 12;
    unused13 = 13;
    unused14 = 14;
    unused15 = 15;
    unused16 = 16;
    unused18 = 18;
    unused19 = 19;
    unused20 = 20;

    print_i(s.unused1);
    print_i(s.unused2);

    unused1 = 1;
    unused2 = 2;
    unused3 = 3;
    unused4 = 4;
    unused5 = 5;
    unused6 = 6;
    unused7 = 7;
    unused8 = 8;
    unused9 = 9;
    unused10 = 10;
    unused11 = 11;
    unused12 = 12;
    unused13 = 13;
    unused14 = 14;
    unused15 = 15;
    unused16 = 16;
    unused18 = 18;
    unused19 = 19;
    unused20 = 20;
}

int dead_math(int a, int b) {
    int unused;
    unused = a + b;
    return a + b;  // Only this matters
}

void main() {
    int real_result;
    int dead_var1;
    struct UnusedStruct s;

    dead_var1 = 1;
    s.unused1 = 100;
    s.unused2 = 200;
    dead_var1 = dead_math(1, 2);
    dead_function(s);
}
