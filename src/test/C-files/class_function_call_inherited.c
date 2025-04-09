#include "minic-stdlib.h"

class SuperObject {
    void toString() {
        print_i(0);
    }
    int boom(int a) {
        return a;
    }
    void hello() {
        print_s((char*)"Hello from SuperObject\n");
    }
}

class Object extends SuperObject {
    int a;
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
    class Node n;
    n = new class Node();
    n.boom(1);
    n.hey();
    n.hello();
}




