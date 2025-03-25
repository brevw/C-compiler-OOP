#include "minic-stdlib.h"

int binary_search(int arr[10], int target);

void main() {
    int arr[10];
    int target;
    int i;
    int result;

    i = 0;
    while (i < 10) {
        arr[i] = i + 1;
        i = i + 1;
    }

    target = read_i();

    result = binary_search(arr, target);

    if (result == -1) {
        print_s((char*) "Not found\n");
    } else {
        print_s((char*) "Found at index ");
        print_i(result);
        print_s((char*) "\n");
    }
}

int binary_search(int arr[10], int target) {
    int start;
    int end;
    int mid;
    int found_index;

    start = 0;
    end = 9;
    found_index = -1;

    while (start <= end) {
        mid = (start + end) / 2;

        if (arr[mid] == target) {
            found_index = mid;
            break;
        } else if (arr[mid] < target) {
            start = mid + 1;
        } else {
            end = mid - 1;
        }
    }

    return found_index;
}
