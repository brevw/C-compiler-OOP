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

void main() {
    class Node o;
    o = new class Node();
    print_i(o.a);
    print_c(o.c);
    print_i(o.data);
    o.toString();
}


