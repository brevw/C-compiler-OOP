#include "minic-stdlib.h"

struct Point {
    int x;
    int y;
};

int calculate_distance(struct Point p1, struct Point p2) {
    int dx; int dy;
    dx = p2.x - p1.x;
    dy = p2.y - p1.y;
    return dx * dx + dy * dy;
}

void print_distance(struct Point p1, struct Point p2) {
    print_s((char*) "Point 1: (");
    print_i(p1.x);
    print_s((char*)", ");
    print_i(p1.y);
    print_s((char*)")\n");

    print_s((char*)"Point 2: (");
    print_i(p2.x);
    print_s((char*)", ");
    print_i(p2.y);
    print_s((char*)")\n");

    print_s((char*)"Squared Distance: ");
    print_i(calculate_distance(p1, p2));
    print_s((char*)"\n");
}

void main() {
    struct Point p1;
    struct Point p2;

    p1.x = 1;
    p1.y = 2;

    p2.x = 4;
    p2.y = 6;

    print_distance(p1, p2);

    return;
}
