#include "minic-stdlib.h"

void convert_to_binary(int num, int binary[32], int* index);
void print_binary(int binary[32], int index);

void main() {
    int num;
    int binary[32];
    int index;
    int temp;

    temp = 2;

    num = read_i();


    if (num == 0) {
        print_i(0);
        return;
    }

    convert_to_binary(num, binary, &index);

    print_binary(binary, index);
}

void convert_to_binary(int num, int binary[32], int* index) {
    int remainder;

    *index = 0;
    while (num > 0) {
        remainder = num % 2;
        binary[*index] = remainder;
        num = num / 2;
        *index = *index + 1;
    }
}

void print_binary(int binary[32], int index) {
    int i;

    i = index - 1;
    while (i >= 0) {
        print_i(binary[i]);
        i = i - 1;
    }
}
