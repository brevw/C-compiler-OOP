#include "minic-stdlib.h"

void main(){
    int i;
    int j;
    i = 0;
    while(i < 10){
        j = 0;
        while(j < 10){
            if(j == 5){
                break;
            }
            print_i(j);
            j = j + 1;
        }
        i = i + 1;
    }
}
