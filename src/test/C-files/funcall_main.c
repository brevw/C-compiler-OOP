#include "minic-stdlib.h"

int factorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}

void main() {
    int n;
    n = read_i();
    print_s((char*)"Factorial of ");
    print_i(n);
    print_s((char*)" is: ");
    print_i(factorial(n));
}

