#include "minic-stdlib.h"

void main() {
    // Declare all variables at the beginning of the block
    int x;
    int y;

    // Outer scope variables
    x = 10;
    y = 20;

    // Print outer scope variables
    print_s((char*)"Outer scope - x: ");
    print_i(x);
    print_s((char*)"\n");

    print_s((char*)"Outer scope - y: ");
    print_i(y);
    print_s((char*)"\n");

    // Inner scope (shadowing)
    {
        // Declare variables with the same names as outer scope variables
        int x;
        int y;

        // Inner scope variables
        x = 30;
        y = 40;

        // Print inner scope variables
        print_s((char*)"Inner scope - x: ");
        print_i(x);
        print_s((char*)"\n");

        print_s((char*)"Inner scope - y: ");
        print_i(y);
        print_s((char*)"\n");
    }

    // Print outer scope variables again
    print_s((char*)"Outer scope after inner block - x: ");
    print_i(x);
    print_s((char*)"\n");

    print_s((char*)"Outer scope after inner block - y: ");
    print_i(y);
    print_s((char*)"\n");

    return;
}
