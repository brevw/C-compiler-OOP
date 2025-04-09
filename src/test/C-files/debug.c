#include "minic-stdlib.h"

int global_var;

class Object {
    int a;
    void print() {
        print_s((char*)"Instant Type Object: a -> ");
        print_i(a);
        print_s((char*)"\n");
    }
    void init1(int a_) {
        a = a_;
    }
    void doubleA() {
         a = a * 2;
    }
}

class Node extends Object {
    int data;
    char c;
    void init2(int a_, int data_, char c_) {
        a = a_;
        data = data_;
        c = c_;
    }
    void print() {
        print_s((char*)"Instant Type Node:");
        print_s((char*)" a -> ");
        print_i(a);
        print_s((char*)", data -> ");
        print_i(data);
        print_s((char*)", c -> ");
        print_c(c);
        print_s((char*)"\n");
    }
    void troll() {
        print_s((char*)"troll");
    }
}

void main() {
    class Object o_node;
    class Object o_object;
    class Node n_node;
    o_node = (class Object) new class Node();
    o_object = new class Object();
    n_node = new class Node();

    // funcall test
    print_s((char*)"-- Setting a -> 1\n");
    o_node.init1(1);
    o_node.print();
    print_c('\n');

    print_s((char*)"-- Setting a -> 2\n");
    o_object.init1(2);
    o_object.print();
    print_c('\n');

    print_s((char*)"-- Setting a -> 3, data -> 4, c -> 'a'\n");
    n_node.init2(3, 4, 'a');
    n_node.print();
    print_c('\n');

    // funcall inheritance test
    print_s((char*)"-- Double a: a -> 2\n");
    o_node.doubleA();
    o_node.print();
    print_c('\n');

    print_s((char*)"-- Double a: a -> 4\n");
    o_object.doubleA();
    o_object.print();
    print_c('\n');

    print_s((char*)"-- Double a: a -> 6\n");
    n_node.doubleA();
    n_node.print();
    print_c('\n');

    // field test
    print_s((char*)"-- Setting a -> 10\n");
    o_node.a = 10;
    o_node.print();
    print_c('\n');

    print_s((char*)"-- Setting a -> 20\n");
    o_object.a = 20;
    o_object.print();
    print_c('\n');

    print_s((char*)"-- Setting a -> 30\n");
    n_node.a = 30;
    n_node.print();
    print_c('\n');
}
