#include "minic-stdlib.h"

// Define a Rectangle struct
struct Rectangle {
    char confusion;
    int width;
    int height;
};

// Function to calculate the area of a rectangle
int calculate_area(struct Rectangle rect) {
    return rect.width * rect.height;
}

// Function to print the rectangle's dimensions and area
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
    // Create a Rectangle struct
    struct Rectangle rect;
    rect.width = 5;
    rect.height = 10;

    // Print the rectangle's details
    print_rectangle(rect);
    return;
}
