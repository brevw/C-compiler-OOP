#include "minic-stdlib.h"

void main(){
    int i;
    int sum;
    i = 0;
    sum = 0;
    while (i < 10) {
        sum = sum + i;
        i = i + 1;
    }
    print_i(2 * sum);
}
