#include "minic-stdlib.h"

class Object {
    int a;
    void toString() {
        print_i(a);
    }
}

class Node extends Object {
    int data;
    char c;
    void toString() {
        print_i(data);
        print_c(c);
    }
}

