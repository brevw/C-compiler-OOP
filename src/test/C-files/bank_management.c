#include "minic-stdlib.h"

struct Book {
    int id;
    char title[30];
    char author[30];
    int year;
    int available;
};

void initialize_book(struct Book* book, int id, char* title, char* author, int year) {
    {
        int i;

        (*book).id = id;
        (*book).year = year;
        (*book).available = 1;

        // Copy title
        i = 0;
        while (i < 30 && title[i] != '\0') {
            (*book).title[i] = title[i];
            i = i + 1;
        }
        (*book).title[i] = '\0';

        // Copy author
        i = 0;
        while (i < 30 && author[i] != '\0') {
            (*book).author[i] = author[i];
            i = i + 1;
        }
        (*book).author[i] = '\0';
    }
}

void checkout_book(struct Book* book) {
    {
        if ((*book).available == 1) {
            (*book).available = 0;
            print_s((char*)"Checked out: ");
            print_s((char*)(*book).title);
            print_c('\n');
        } else {
            print_s((char*)"Book not available: ");
            print_s((char*)(*book).title);
            print_c('\n');
        }
    }
}

void return_book(struct Book* book) {
    {
        (*book).available = 1;
        print_s((char*)"Returned: ");
        print_s((char*) (*book).title);
        print_c('\n');
    }
}

void print_book(struct Book* book) {
    {
        print_s((char*)"\nID: ");
        print_i((*book).id);
        print_s((char*)"\nTitle: ");
        print_s((char*) (*book).title);
        print_s((char*)"\nAuthor: ");
        print_s((char*) (*book).author);
        print_s((char*)"\nYear: ");
        print_i((*book).year);
        print_s((char*)"\nStatus: ");
        if ((*book).available == 1) {
            print_s((char*)"Available");
        } else {
            print_s((char*)"Checked Out");
        }
        print_c('\n');
    }
}

void main() {
    struct Book library[5];
    char title1[30];
    char author1[30];
    char title2[30];
    char author2[30];

    // Initialize strings
    {
        title1[0] = 'M'; title1[1] = 'o'; title1[2] = 'b'; title1[3] = 'y';
        title1[4] = ' '; title1[5] = 'D'; title1[6] = 'i'; title1[7] = 'c';
        title1[8] = 'k'; title1[9] = '\0';

        author1[0] = 'H'; author1[1] = 'e'; author1[2] = 'r'; author1[3] = 'm';
        author1[4] = 'a'; author1[5] = 'n'; author1[6] = ' '; author1[7] = 'M';
        author1[8] = 'e'; author1[9] = 'l'; author1[10] = 'v'; author1[11] = 'i';
        author1[12] = 'l'; author1[13] = 'l'; author1[14] = 'e'; author1[15] = '\0';

        title2[0] = 'W'; title2[1] = 'a'; title2[2] = 'r'; title2[3] = ' ';
        title2[4] = 'a'; title2[5] = 'n'; title2[6] = 'd'; title2[7] = ' ';
        title2[8] = 'P'; title2[9] = 'e'; title2[10] = 'a'; title2[11] = 'c';
        title2[12] = 'e'; title2[13] = '\0';

        author2[0] = 'L'; author2[1] = 'e'; author2[2] = 'o'; author2[3] = ' ';
        author2[4] = 'T'; author2[5] = 'o'; author2[6] = 'l'; author2[7] = 's';
        author2[8] = 't'; author2[9] = 'o'; author2[10] = 'y'; author2[11] = '\0';
    }

    // Initialize books
    {
        initialize_book(&library[0], 1001, (char*) title1,(char*) author1, 1851);
        initialize_book(&library[1], 1002, (char*) title2, (char*) author2, 1869);
        initialize_book(&library[2], 1003, (char*)"1984", (char*)"George Orwell", 1949);
        initialize_book(&library[3], 1004, (char*)"The Great Gatsby", (char*)"F. Scott Fitzgerald", 1925);
        initialize_book(&library[4], 1005, (char*)"Pride and Prejudice", (char*)"Jane Austen", 1813);
    }

    // Library operations
    {
        checkout_book(&library[0]);
        checkout_book(&library[1]);
        return_book(&library[0]);
        checkout_book(&library[3]);
    }

    // Print all books
    {
        int i;
        i = 0;
        while (i < 5) {
            print_book(&library[i]);
            i = i + 1;
        }
    }
}
