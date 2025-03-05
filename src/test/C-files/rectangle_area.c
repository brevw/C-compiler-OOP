#include "minic-stdlib.h"

struct Rectangle {
    // to test if compiler correctly aligns the struct members
    char confusion;
    int width;
    int height;
};

int calculate_area(struct Rectangle rect) {
    return rect.width * rect.height;
}

void print_rectangle(struct Rectangle rect) {
    print_s((char*) "Rectangle Dimensions: ");
    print_i(rect.width);
    print_s((char*) " (width) x ");
    print_i(rect.height);
    print_s((char*) " (height)\n");

    print_s((char*) "Area: ");
    print_i(calculate_area(rect));
    print_s((char*) "\n");
}

void main() {
    struct Rectangle rect;
    // init
    rect.width = 5;
    rect.height = 10;

    // compute
    print_rectangle(rect);
    return;
}
