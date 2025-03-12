#include "minic-stdlib.h"

struct struct_ {
char array[3];
int a;
};

void print_struct(struct struct_ s) {
    print_c(s.array[0]); print_s((char *)", ");
    print_c(s.array[1]); print_s((char *)", ");
    print_c(s.array[2]); print_s((char *)", ");
    print_i(s.a);
}

void main() {
    struct struct_ s;
    s.array[0] = 'a';
    s.array[1] = 'b';
    s.array[2] = 'c';
    s.a = 10;

    // print the struct in main
    print_c(s.array[0]); print_s((char *)", ");
    print_c(s.array[1]); print_s((char *)", ");
    print_c(s.array[2]); print_s((char *)", ");
    print_i(s.a);

    // print the struct in a function
    print_struct(s);
}
