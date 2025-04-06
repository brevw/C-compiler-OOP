#include "minic-stdlib.h"

class SuperObject {
    void toString() {
        print_i(0);
    }
    int boom(int a, char b) {
        return a;
    }
}

class Object extends SuperObject {
    int a;
    char k;
    void toString() {
        print_i(a);
    }
    int hey() {
        return 0;
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
    class Object o;
    o = (class Object) new class Node();
    o.a = 1;
    o.boom(o.hey(), o.k);
}





