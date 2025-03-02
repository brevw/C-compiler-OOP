#include "minic-stdlib.h"

// Function to print a 2D array
void print_2d_array(int arr[3][3], int rows, int cols) {
    int i; int j;
    i = 0;
    while (i < rows) {
        j = 0;
        while (j < cols) {
            print_i(arr[i][j]);
            print_s((char*) " ");
            j = j + 1;
        }
        print_s((char*) "\n");
        i = i + 1;
    }
}

void main() {
    // Define a 2D array (3x3 matrix)
    int arr[3][3];

    // Initialize the 2D array
    arr[0][0] = 1; arr[0][1] = 2; arr[0][2] = 3;
    arr[1][0] = 4; arr[1][1] = 5; arr[1][2] = 6;
    arr[2][0] = 7; arr[2][1] = 8; arr[2][2] = 9;

    // Call the function to print the 2D array
    print_2d_array(arr, 3, 3);

    return;
}
