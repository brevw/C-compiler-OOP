#include "minic-stdlib.h"

int n;

// Function to check if a number is prime
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
    int result;

    // Read input number
    n = read_i();

    // Call the is_prime function
    result = is_prime(n);

    // Print the result
    if (result == 1) {
        print_s((char*) "Prime\n");
    } else {
        print_s((char*) "Not Prime\n");
    }
    return;
}
