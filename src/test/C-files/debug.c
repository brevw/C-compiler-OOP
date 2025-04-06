#include "minic-stdlib.h"

int global_var;

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
    void troll() {
        print_s((char*)"troll");
    }
}

void main() {
    // class Object o;
    global_var = 5;
    print_i(global_var);
    //o = (class Object) new class Node();
}


