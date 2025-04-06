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
    int hey() {
        return 0;
    }
}

void main() {
    class Object o;
    o = (class Object) new class Node();
    o.hey();
}




