#include "minic-stdlib.h"

void nothing() {
}

void main() {
    // Initialize fixed-size arrays
    int arr1[8];
    int arr2[8];
    int result[8];
    int sum_squared;
    int squared[8];
    int max;
    int min;
    int product;
    int sum;

    // Assign values to arr1
    {
        arr1[0] = 10;
        arr1[1] = 20;
        arr1[2] = 30;
        arr1[3] = 40;
        arr1[4] = 50;
        arr1[5] = 60;
        arr1[6] = 70;
        arr1[7] = 80;
    }

    // Assign values to arr2
    {
        arr2[0] = 1;
        arr2[1] = 2;
        arr2[2] = 3;
        arr2[3] = 4;
        arr2[4] = 5;
        arr2[5] = 6;
        arr2[6] = 7;
        arr2[7] = 8;
    }

    // Perform element-wise addition
    {
        result[0] = arr1[0] + arr2[0];
        result[1] = arr1[1] + arr2[1];
        result[2] = arr1[2] + arr2[2];
        result[3] = arr1[3] + arr2[3];
        result[4] = arr1[4] + arr2[4];
        result[5] = arr1[5] + arr2[5];
        result[6] = arr1[6] + arr2[6];
        result[7] = arr1[7] + arr2[7];
    }

    // Calculate sum of result array
    {
        sum = 0;
        sum = sum + result[0];
        sum = sum + result[1];
        sum = sum + result[2];
        sum = sum + result[3];
        sum = sum + result[4];
        sum = sum + result[5];
        sum = sum + result[6];
        sum = sum + result[7];
    }

    // Calculate product of result array
    {
        product = 1;
        product = product * result[0];
        product = product * result[1];
        product = product * result[2];
        product = product * result[3];
        product = product * result[4];
        product = product * result[5];
        product = product * result[6];
        product = product * result[7];
    }

    // Find minimum value in result array
    {
        min = result[0];
        if (result[1] < min) { min = result[1]; }
        if (result[2] < min) { min = result[2]; }
        if (result[3] < min) { min = result[3]; }
        if (result[4] < min) { min = result[4]; }
        if (result[5] < min) { min = result[5]; }
        if (result[6] < min) { min = result[6]; }
        if (result[7] < min) { min = result[7]; }
    }

    // Find maximum value in result array
    {
        max = result[0];
        if (result[1] > max) { max = result[1]; }
        if (result[2] > max) { max = result[2]; }
        if (result[3] > max) { max = result[3]; }
        if (result[4] > max) { max = result[4]; }
        if (result[5] > max) { max = result[5]; }
        if (result[6] > max) { max = result[6]; }
        if (result[7] > max) { max = result[7]; }
    }

    // Create a new array with squared values
    {
        squared[0] = result[0] * result[0];
        squared[1] = result[1] * result[1];
        squared[2] = result[2] * result[2];
        squared[3] = result[3] * result[3];
        squared[4] = result[4] * result[4];
        squared[5] = result[5] * result[5];
        squared[6] = result[6] * result[6];
        squared[7] = result[7] * result[7];
    }

    // Calculate sum of squared array
    {
        sum_squared = 0;
        sum_squared = sum_squared + squared[0];
        sum_squared = sum_squared + squared[1];
        sum_squared = sum_squared + squared[2];
        sum_squared = sum_squared + squared[3];
        sum_squared = sum_squared + squared[4];
        sum_squared = sum_squared + squared[5];
        sum_squared = sum_squared + squared[6];
        sum_squared = sum_squared + squared[7];
    }

    // Final output
    print_i(sum);
    print_c('\n');
    print_i(product);
    print_c('\n');
    print_i(min);
    print_c('\n');
    print_i(max);
    print_c('\n');
    print_i(sum_squared);
    return;
}
