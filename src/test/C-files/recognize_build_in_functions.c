#include "minic-stdlib.h"

int a;

int main() {
    int b;
    int c;
    void* d;
    b = 1;
    c = b;
    d = mcmalloc(2);
    print_i(b);
    return 0;
}
