#include "minic-stdlib.h"

class SuperObject {
    void toString() {
        print_i(0);
    }
    int boom(int a) {
        return a;
    }
}

class Object extends SuperObject {
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
    o.boom(o.a);
}



