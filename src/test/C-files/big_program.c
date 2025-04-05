#include "minic-stdlib.h"

struct Item {
    int id;
    char name[20];
    int price_cents;  // Using cents to avoid floats
    int quantity;
    int category;     // 1=Electronics, 2=Clothing, 3=Food
    int sales_count;
};

struct Customer {
    int id;
    char name[30];
    int purchases[10];  // Stores item IDs
    int purchase_count;
    int total_spent_cents;
};

void initialize_item(struct Item* item, int id, char* name, int price_cents, int quantity, int category) {
    {
        int i;
        (*item).id = id;
        (*item).price_cents = price_cents;
        (*item).quantity = quantity;
        (*item).category = category;
        (*item).sales_count = 0;

        i = 0;
        while (name[i] != '\0' && i < 19) {
            (*item).name[i] = name[i];
            i = i + 1;
        }
        (*item).name[i] = '\0';
    }
}

void print_item(struct Item* item) {
    {
        print_s((char*)"ID: ");
        print_i((*item).id);
        print_s((char*)" | Name: ");
        print_s((char*)(*item).name);
        print_s((char*)" | Price: $");
        print_i((*item).price_cents / 100);
        print_s((char*)".");
        if ((*item).price_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i((*item).price_cents % 100);
        print_s((char*)" | Qty: ");
        print_i((*item).quantity);
        print_s((char*)" | Category: ");
        if ((*item).category == 1) print_s((char*)"Electronics");
        else if ((*item).category == 2) print_s((char*)"Clothing");
        else if ((*item).category == 3) print_s((char*)"Food");
        print_s((char*)" | Sales: ");
        print_i((*item).sales_count);
        print_c('\n');
    }
}

int process_purchase(struct Item* item, struct Customer* customer, int quantity) {
    int success;
    int total_cost_cents;
    success = 0;
    {
        if ((*item).quantity >= quantity) {
            (*item).quantity = (*item).quantity - quantity;
            (*item).sales_count = (*item).sales_count + quantity;
            total_cost_cents = quantity * (*item).price_cents;
            (*customer).purchases[(*customer).purchase_count] = (*item).id;
            (*customer).purchase_count = (*customer).purchase_count + 1;
            (*customer).total_spent_cents = (*customer).total_spent_cents + total_cost_cents;
            success = 1;

            print_s((char*)"Sold ");
            print_i(quantity);
            print_s((char*)" of ");
            print_s((char*)(*item).name);
            print_s((char*)" to ");
            print_s((char*)(*customer).name);
            print_s((char*)" for $");
            print_i(total_cost_cents / 100);
            print_s((char*)".");
            if (total_cost_cents % 100 < 10) {
                print_s((char*)"0");
            }
            print_i(total_cost_cents % 100);
            print_c('\n');
        } else {
            print_s((char*)"Insufficient stock of ");
            print_s((char*)(*item).name);
            print_s((char*)" (Requested: ");
            print_i(quantity);
            print_s((char*)", Available: ");
            print_i((*item).quantity);
            print_s((char*)")\n");
        }
    }
    return success;
}

void print_customer(struct Customer* customer) {
    {
        int i;
        print_s((char*)"\nCustomer ID: ");
        print_i((*customer).id);
        print_s((char*)" | Name: ");
        print_s((char*) (*customer).name);
        print_s((char*)" | Total spent: $");
        print_i((*customer).total_spent_cents / 100);
        print_s((char*)".");
        if ((*customer).total_spent_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i((*customer).total_spent_cents % 100);
        print_s((char*)"\nPurchases: ");

        i = 0;
        while (i < (*customer).purchase_count) {
            print_i((*customer).purchases[i]);
            if (i < (*customer).purchase_count - 1) {
                print_s((char*)", ");
            }
            i = i + 1;
        }
        print_c('\n');
    }
}

void restock_item(struct Item* item, int amount) {
    {
        (*item).quantity = (*item).quantity + amount;
        print_s((char*)"Restocked ");
        print_s((char*)(*item).name);
        print_s((char*)". New quantity: ");
        print_i((*item).quantity);
        print_c('\n');
    }
}

void apply_discount(struct Item* item, int percent_off) {
    {
        int original_price;
        original_price = (*item).price_cents;
        (*item).price_cents = (*item).price_cents * (100 - percent_off) / 100;

        print_s((char*)"Applied ");
        print_i(percent_off);
        print_s((char*)"% discount to ");
        print_s((char*)(*item).name);
        print_s((char*)". Price changed from $");
        print_i(original_price / 100);
        print_s((char*)".");
        if (original_price % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(original_price % 100);
        print_s((char*)" to $");
        print_i((*item).price_cents / 100);
        print_s((char*)".");
        if ((*item).price_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i((*item).price_cents % 100);
        print_c('\n');
    }
}

void main() {
    struct Item inventory[5];
    struct Customer customers[3];
    char customer1_name[30];
    char customer2_name[30];
    char customer3_name[30];

    // Initialize customer names
    {
        customer1_name[0] = 'A'; customer1_name[1] = 'l'; customer1_name[2] = 'i';
        customer1_name[3] = 'c'; customer1_name[4] = 'e'; customer1_name[5] = ' ';
        customer1_name[6] = 'S'; customer1_name[7] = 'm'; customer1_name[8] = 'i';
        customer1_name[9] = 't'; customer1_name[10] = 'h'; customer1_name[11] = '\0';

        customer2_name[0] = 'B'; customer2_name[1] = 'o'; customer2_name[2] = 'b';
        customer2_name[3] = ' '; customer2_name[4] = 'J'; customer2_name[5] = 'o';
        customer2_name[6] = 'n'; customer2_name[7] = 'e'; customer2_name[8] = 's';
        customer2_name[9] = '\0';

        customer3_name[0] = 'C'; customer3_name[1] = 'h'; customer3_name[2] = 'a';
        customer3_name[3] = 'r'; customer3_name[4] = 'l'; customer3_name[5] = 'e';
        customer3_name[6] = 's'; customer3_name[7] = '\0';
    }

    // Initialize inventory
    {
        initialize_item(&inventory[0], 1001, (char*)"Laptop", 99999, 10, 1);
        initialize_item(&inventory[1], 1002, (char*)"T-Shirt", 2499, 50, 2);
        initialize_item(&inventory[2], 1003, (char*)"Headphones", 7999, 15, 1);
        initialize_item(&inventory[3], 1004, (char*)"Apples", 199, 100, 3);
        initialize_item(&inventory[4], 1005, (char*)"Jeans", 5999, 20, 2);
    }

    // Initialize customers
    {
        int i;
        i = 0;
        customers[0].id = 2001;
        while (customer1_name[i] != '\0' && i < 29) {
            customers[0].name[i] = customer1_name[i];
            i = i + 1;
        }
        customers[0].name[i] = '\0';
        customers[0].purchase_count = 0;
        customers[0].total_spent_cents = 0;

        customers[1].id = 2002;
        i = 0;
        while (customer2_name[i] != '\0' && i < 29) {
            customers[1].name[i] = customer2_name[i];
            i = i + 1;
        }
        customers[1].name[i] = '\0';
        customers[1].purchase_count = 0;
        customers[1].total_spent_cents = 0;

        customers[2].id = 2003;
        i = 0;
        while (customer3_name[i] != '\0' && i < 29) {
            customers[2].name[i] = customer3_name[i];
            i = i + 1;
        }
        customers[2].name[i] = '\0';
        customers[2].purchase_count = 0;
        customers[2].total_spent_cents = 0;
    }

    // Store operations
    {
        // Apply seasonal discount to clothing
        apply_discount(&inventory[1], 20);  // 20% off T-Shirt
        apply_discount(&inventory[4], 15);  // 15% off Jeans

        // Process purchases
        process_purchase(&inventory[0], &customers[0], 1);  // Alice buys laptop
        process_purchase(&inventory[2], &customers[0], 2);  // Alice buys headphones
        process_purchase(&inventory[1], &customers[1], 3);  // Bob buys t-shirts
        process_purchase(&inventory[4], &customers[1], 1);  // Bob buys jeans
        process_purchase(&inventory[3], &customers[2], 10); // Charles buys apples
        process_purchase(&inventory[1], &customers[2], 2);  // Charles buys t-shirts

        // Attempt purchase with insufficient stock
        process_purchase(&inventory[0], &customers[2], 10); // Try to buy 10 laptops

        // Restock popular item
        restock_item(&inventory[1], 25);  // Restock t-shirts
    }

    // Print inventory status
    {
        int i;
        print_s((char*)"\n=== INVENTORY STATUS ===\n");
        i = 0;
        while (i < 5) {
            print_item(&inventory[i]);
            i = i + 1;
        }
    }

    // Print customer information
    {
        int i;
        print_s((char*)"\n=== CUSTOMER RECORDS ===\n");
        i = 0;
        while (i < 3) {
            print_customer(&customers[i]);
            i = i + 1;
        }
    }

    // Calculate and print store statistics
    {
        int total_sales_cents;
        int total_items_sold;
        int most_sold_item_id;
        int most_sold_count;
        int top_customer_id;
        int top_customer_spent;
        int i;

        total_sales_cents = 0;
        total_items_sold = 0;
        most_sold_item_id = 0;
        most_sold_count = 0;
        top_customer_id = 0;
        top_customer_spent = 0;
        // Calculate totals
        i = 0;
        while (i < 5) {
            total_items_sold = total_items_sold + (inventory[i]).sales_count;
            total_sales_cents = total_sales_cents + ((inventory[i]).sales_count * (inventory[i]).price_cents);

            if ((inventory[i]).sales_count > most_sold_count) {
                most_sold_count = (inventory[i]).sales_count;
                most_sold_item_id = (inventory[i]).id;
            }
            i = i + 1;
        }

        // Find top customer
        i = 0;
        while (i < 3) {
            if ((customers[i]).total_spent_cents > top_customer_spent) {
                top_customer_spent = (customers[i]).total_spent_cents;
                top_customer_id = (customers[i]).id;
            }
            i = i + 1;
        }

        // Print statistics
        print_s((char*)"\n=== STORE STATISTICS ===\n");
        print_s((char*)"Total items sold: ");
        print_i(total_items_sold);
        print_s((char*)"\nTotal revenue: $");
        print_i(total_sales_cents / 100);
        print_s((char*)".");
        if (total_sales_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(total_sales_cents % 100);
        print_s((char*)"\nMost sold item ID: ");
        print_i(most_sold_item_id);
        print_s((char*)" (");
        print_i(most_sold_count);
        print_s((char*)" units)\n");
        print_s((char*)"Top customer ID: ");
        print_i(top_customer_id);
        print_s((char*)" (Spent $");
        print_i(top_customer_spent / 100);
        print_s((char*)".");
        if (top_customer_spent % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(top_customer_spent % 100);
        print_s((char*)")\n");
    }
}
