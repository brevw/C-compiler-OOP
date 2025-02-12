#include "minic-stdlib.h"

int a;

struct Node {
    int data;
    char c;
};

int main() {
    int b;
    int c;
    b = 1;
    c = b;
    {
        int a;
        a = 1;
        break;
    }
    return 0;
}
