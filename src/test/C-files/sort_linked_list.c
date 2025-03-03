#include "minic-stdlib.h"

// Define the structure for a linked list node
struct Node {
    int data;
    struct Node* next;
};

// Global variable to simulate null
struct Node* null;

// Function to create a new node
struct Node* create_node(int value) {
    struct Node* new_node;
    new_node = (struct Node*)mcmalloc(sizeof(struct Node)); // Allocate memory for the new node
    (*new_node).data = value;
    (*new_node).next = null; // Use the global null variable
    return new_node;
}

// Function to insert a node at the end of the list
void insert_end(struct Node** head, int value) {
    struct Node* new_node;
    struct Node* temp;

    new_node = create_node(value); // Create a new node
    if (*head == null) {
        *head = new_node; // If the list is empty, make the new node the head
    } else {
        temp = *head;
        while ((*temp).next != null) {
            temp = (*temp).next; // Traverse to the end of the list
        }
        (*temp).next = new_node; // Insert the new node at the end
    }
}

// Function to print the linked list
void print_list(struct Node* head) {
    struct Node* temp;

    temp = head;
    while (temp != null) {
        print_i((*temp).data); // Print the current node's data
        print_s((char*)" ");
        temp = (*temp).next; // Move to the next node
    }
    print_s((char*)"\n");
}

// Function to sort the linked list using bubble sort
void sort_list(struct Node** head) {
    int swapped;
    struct Node* ptr1;
    struct Node* lptr;

    if (*head == null || (*(*head)).next == null) {
        return; // List is empty or has only one node
    }

    lptr = null;
    swapped = 1; // Initialize swapped to 1 to enter the loop
    while (swapped) {
        swapped = 0;
        ptr1 = *head;

        while ((*ptr1).next != lptr) {
            if ((*ptr1).data > (*(*ptr1).next).data) {
                // Swap data of adjacent nodes
                int temp;
                temp = (*ptr1).data;
                (*ptr1).data = (*(*ptr1).next).data;
                (*(*ptr1).next).data = temp;
                swapped = 1;
            }
            ptr1 = (*ptr1).next;
        }
        lptr = ptr1; // Move the last sorted node
    }
}

void main() {
    struct Node* head;

    // Declare all variables at the beginning of the block
    head = null; // Initialize the head of the list to null

    // Insert elements into the linked list
    insert_end(&head, 5);
    insert_end(&head, 3);
    insert_end(&head, 8);
    insert_end(&head, 1);
    insert_end(&head, 6);

    // Print the original list
    print_s((char*)"Original List: ");
    print_list(head);

    // Sort the linked list
    sort_list(&head);

    // Print the sorted list
    print_s((char*)"Sorted List: ");
    print_list(head);

    return;
}
