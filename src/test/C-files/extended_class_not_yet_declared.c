#include "minic-stdlib.h"

class Node extends Object {
    int data;
    char c;
    void toString() {
        print_i(data);
        print_c(c);
    }
}
