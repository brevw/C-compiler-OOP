#include "minic-stdlib.h"

void print_pascals_triangle(int n) {
    // Declare all variables at the beginning of the block
    int triangle[100][100]; // Assume a maximum size for the triangle
    int i;
    int j;

    // Initialize variables
    i = 0;

    // Fill the triangle with Pascal's Triangle values
    while (i < n) {
        j = 0;
        while (j <= i) {
            if (j == 0 || j == i) {
                triangle[i][j] = 1; // First and last element in each row is 1
            } else {
                triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j]; // Sum of two elements above
            }
            j = j + 1;
        }
        i = i + 1;
    }

    // Print the triangle
    i = 0;
    while (i < n) {
        j = 0;
        while (j <= i) {
            print_i(triangle[i][j]); // Print the current element
            print_s((char*) " ");           // Print a space for formatting
            j = j + 1;
        }
        print_s((char*) "\n");             // Print a newline after each row
        i = i + 1;
    }
}

void main() {
    // Declare all variables at the beginning of the block
    int rows;

    // Initialize variables
    rows = 5; // Number of rows in Pascal's Triangle

    // Generate and print the triangle
    print_pascals_triangle(rows);

    return;
}
