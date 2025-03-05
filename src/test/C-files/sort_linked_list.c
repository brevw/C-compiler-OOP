#include "minic-stdlib.h"

struct Node {
    int data;
    struct Node* next;
};

struct Node* null;

struct Node* create_node(int value) {
    struct Node* new_node;
    new_node = (struct Node*)mcmalloc(sizeof(struct Node));
    (*new_node).data = value;
    (*new_node).next = null; // Use the global null variable
    return new_node;
}

void insert_end(struct Node** head, int value) {
    struct Node* new_node;
    struct Node* temp;

    new_node = create_node(value);
    if (*head == null) {
        *head = new_node;
    } else {
        temp = *head;
        while ((*temp).next != null) {
            temp = (*temp).next;
        }
        (*temp).next = new_node;
    }
}

void print_list(struct Node* head) {
    struct Node* temp;

    temp = head;
    while (temp != null) {
        print_i((*temp).data);
        print_s((char*)" ");
        temp = (*temp).next;
    }
    print_s((char*)"\n");
}

void sort_list(struct Node** head) {
    int swapped;
    struct Node* ptr1;
    struct Node* lptr;

    if (*head == null || (*(*head)).next == null) {
        return;
    }

    lptr = null;
    swapped = 1;
    while (swapped) {
        swapped = 0;
        ptr1 = *head;

        while ((*ptr1).next != lptr) {
            if ((*ptr1).data > (*(*ptr1).next).data) {
                int temp;
                temp = (*ptr1).data;
                (*ptr1).data = (*(*ptr1).next).data;
                (*(*ptr1).next).data = temp;
                swapped = 1;
            }
            ptr1 = (*ptr1).next;
        }
        lptr = ptr1;
    }
}

void main() {
    struct Node* head;

    // use a unique address to emulate null
    null = (struct Node*)mcmalloc(1);
    head = null;

    insert_end(&head, 5);
    insert_end(&head, 3);
    insert_end(&head, 8);
    insert_end(&head, 1);
    insert_end(&head, 6);

    print_s((char*)"Original List: ");
    print_list(head);

    sort_list(&head);

    print_s((char*)"Sorted List: ");
    print_list(head);

    return;
}
