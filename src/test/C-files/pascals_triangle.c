#include "minic-stdlib.h"

void print_pascals_triangle(int n) {
int triangle[50][50];
    int i;
    int j;

    i = 0;
    while (i < n) {
        j = 0;
        while (j <= i) {
            if (j == 0 || j == i) {
                triangle[i][j] = 1;
            } else {
                triangle[i][j] = triangle[i-1][j-1] + triangle[i-1][j];
            }
            j = j + 1;
        }
        i = i + 1;
    }

    i = 0;
    while (i < n) {
        j = 0;
        while (j <= i) {
            print_i(triangle[i][j]);
            print_s((char*) " ");
            j = j + 1;
        }
        print_s((char*) "\n");
        i = i + 1;
    }
}

void main() {
    int n;

    print_s((char*)"Enter the number of rows for Pascal's Triangle: ");
    n = read_i();
    print_pascals_triangle(n);

    return;
}
