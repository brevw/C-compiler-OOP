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
    int hello(int i) {
        return 0;
    }
}

void main() {
    class Node o;
    o = (class Node) new class Object();
    o.hello(o.hey);
}

