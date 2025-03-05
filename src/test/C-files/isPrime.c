#include "minic-stdlib.h"

int n;
int is_prime(int num) {
    int i;

    if (num < 2) {
        return 0;
    }

    i = 2;
    while (i <= num / 2) {
        if (num % i == 0) {
            return 0;
        }
        i = i + 1;
    }

    return 1;
}

void main() {
    // boolean (1 for prime)
    int result;

    // read input
    n = read_i();

    result = is_prime(n);

    if (result == 1) {
        print_s((char*) "Prime\n");
    } else {
        print_s((char*) "Not Prime\n");
    }
    return;
}
