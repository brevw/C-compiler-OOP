#include "minic-stdlib.h"

void main() {
    // Polynomial coefficients (5th degree: ax^5 + bx^4 + cx^3 + dx^2 + ex + f)
    int coeffs[6];
    int deriv[5];  // Derivative coefficients
    int x;
    int result;
    int derivative;
    int temp;
    int i;

    // Initialize polynomial (2x^5 - 3x^4 + 7x^2 - 12x + 5)
    {
        coeffs[0] = 2;   // x^5
        coeffs[1] = -3;  // x^4
        coeffs[2] = 0;   // x^3
        coeffs[3] = 7;   // x^2
        coeffs[4] = -12; // x
        coeffs[5] = 5;   // constant
    }

    // Calculate derivative coefficients (10x^4 - 12x^3 + 14x - 12)
    {
        i = 0;
        while (i < 5) {
            deriv[i] = coeffs[i] * (5 - i);
            i = i + 1;
        }
    }

    // Evaluate at x = 2
    {
        x = 2;
        result = 0;
        i = 0;
        while (i < 6) {
            temp = 1;
            // Calculate x^i
            {
                int j;
                j = 0;
                while (j < 5 - i) {
                    temp = temp * x;
                    j = j + 1;
                }
            }
            result = result + coeffs[i] * temp;
            i = i + 1;
        }

        derivative = 0;
        i = 0;
        while (i < 5) {
            temp = 1;
            // Calculate x^i
            {
                int j;
                j = 0;
                while (j < 4 - i) {
                    temp = temp * x;
                    j = j + 1;
                }
            }
            derivative = derivative + deriv[i] * temp;
            i = i + 1;
        }
    }

    // Print results
    {
        print_s((char*)"Polynomial value at x=");
        print_i(x);
        print_s((char*)" is ");
        print_i(result);
        print_c('\n');
        print_s((char*)"Derivative at x=");
        print_i(x);
        print_s((char*)" is ");
        print_i(derivative);
    }
}
