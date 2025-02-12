#include "minic-stdlib.h"

int a;

struct Node {
    int data;
    struct Node next[2][3];
};

int main() {
    int b;
    int c;
    b = 1;
    c = b;
    {
        int a;
        a = 1;
    }
    return 0;
}


