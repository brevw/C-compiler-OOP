#include "minic-stdlib.h"

void main() {
    // Product 1 variables
    int product1_id;
    char product1_name[20];
    int product1_price_cents;
    int product1_quantity;
    int product1_category;
    int product1_sales_count;
    int product1_restock_level;
    int product1_days_since_restock;

    // Product 2 variables
    int product2_id;
    char product2_name[20];
    int product2_price_cents;
    int product2_quantity;
    int product2_category;
    int product2_sales_count;
    int product2_restock_level;
    int product2_days_since_restock;

    // Product 3 variables
    int product3_id;
    char product3_name[20];
    int product3_price_cents;
    int product3_quantity;
    int product3_category;
    int product3_sales_count;
    int product3_restock_level;
    int product3_days_since_restock;

    // Sales variables
    int today_sales_count;
    int today_total_items_sold;
    int today_total_revenue_cents;
    int today_discount_percent;
    int today_discount_amount_cents;
    int today_net_revenue_cents;

    // Inventory calculations
    int total_inventory_value_cents;
    int average_product_price_cents;
    int total_items_in_stock;
    int low_stock_items_count;
    int need_restock_flag;

    // Temporary calculation variables
    int temp_product_value;
    int temp_sale_value;
    int temp_discount_value;
    int temp_restock_amount;
    int temp_days_remaining;

    // Loop counters
    int i;
    int j;
    int k;

    // Initialize Product 1
    {
        product1_id = 1001;
        product1_name[0] = 'A'; product1_name[1] = 'p'; product1_name[2] = 'p';
        product1_name[3] = 'l'; product1_name[4] = 'e'; product1_name[5] = 's';
        product1_name[6] = '\0';
        product1_price_cents = 199;
        product1_quantity = 50;
        product1_category = 3; // 3=Food
        product1_sales_count = 0;
        product1_restock_level = 20;
        product1_days_since_restock = 5;
    }

    // Initialize Product 2
    {
        product2_id = 1002;
        product2_name[0] = 'B'; product2_name[1] = 'a'; product2_name[2] = 'n';
        product2_name[3] = 'a'; product2_name[4] = 'n'; product2_name[5] = 'a';
        product2_name[6] = 's'; product2_name[7] = '\0';
        product2_price_cents = 99;
        product2_quantity = 30;
        product2_category = 3; // 3=Food
        product2_sales_count = 0;
        product2_restock_level = 15;
        product2_days_since_restock = 3;
    }

    // Initialize Product 3
    {
        product3_id = 1003;
        product3_name[0] = 'O'; product3_name[1] = 'r'; product3_name[2] = 'a';
        product3_name[3] = 'n'; product3_name[4] = 'g'; product3_name[5] = 'e';
        product3_name[6] = 's'; product3_name[7] = '\0';
        product3_price_cents = 149;
        product3_quantity = 40;
        product3_category = 3; // 3=Food
        product3_sales_count = 0;
        product3_restock_level = 25;
        product3_days_since_restock = 7;
    }

    // Initialize sales variables
    {
        today_sales_count = 0;
        today_total_items_sold = 0;
        today_total_revenue_cents = 0;
        today_discount_percent = 10; // 10% discount day
        today_discount_amount_cents = 0;
        today_net_revenue_cents = 0;
    }

    // Process sale of 5 apples
    {
        temp_sale_value = 5 * product1_price_cents;
        today_discount_amount_cents = temp_sale_value * today_discount_percent / 100;
        today_net_revenue_cents = temp_sale_value - today_discount_amount_cents;

        product1_quantity = product1_quantity - 5;
        product1_sales_count = product1_sales_count + 5;

        today_sales_count = today_sales_count + 1;
        today_total_items_sold = today_total_items_sold + 5;
        today_total_revenue_cents = today_total_revenue_cents + today_net_revenue_cents;

        print_s((char*)"Sold 5 apples for $");
        print_i(today_net_revenue_cents / 100);
        print_s((char*)".");
        if (today_net_revenue_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(today_net_revenue_cents % 100);
        print_c('\n');
    }

    // Process sale of 3 bananas
    {
        temp_sale_value = 3 * product2_price_cents;
        today_discount_amount_cents = temp_sale_value * today_discount_percent / 100;
        today_net_revenue_cents = temp_sale_value - today_discount_amount_cents;

        product2_quantity = product2_quantity - 3;
        product2_sales_count = product2_sales_count + 3;

        today_sales_count = today_sales_count + 1;
        today_total_items_sold = today_total_items_sold + 3;
        today_total_revenue_cents = today_total_revenue_cents + today_net_revenue_cents;

        print_s((char*)"Sold 3 bananas for $");
        print_i(today_net_revenue_cents / 100);
        print_s((char*)".");
        if (today_net_revenue_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(today_net_revenue_cents % 100);
        print_c('\n');
    }

    // Calculate inventory metrics
    {
        // Product 1 value
        temp_product_value = product1_quantity * product1_price_cents;

        // Product 2 value
        temp_product_value = temp_product_value + product2_quantity * product2_price_cents;

        // Product 3 value
        total_inventory_value_cents = temp_product_value + product3_quantity * product3_price_cents;

        // Average price
        total_items_in_stock = product1_quantity + product2_quantity + product3_quantity;
        if (total_items_in_stock > 0) {
            average_product_price_cents = total_inventory_value_cents / total_items_in_stock;
        } else {
            average_product_price_cents = 0;
        }

        // Check restock needs
        low_stock_items_count = 0;
        need_restock_flag = 0;

        if (product1_quantity < product1_restock_level) {
            low_stock_items_count = low_stock_items_count + 1;
            need_restock_flag = 1;
        }
        if (product2_quantity < product2_restock_level) {
            low_stock_items_count = low_stock_items_count + 1;
            need_restock_flag = 1;
        }
        if (product3_quantity < product3_restock_level) {
            low_stock_items_count = low_stock_items_count + 1;
            need_restock_flag = 1;
        }
    }

    // Print daily report
    {
        print_s((char*)"\n=== DAILY INVENTORY REPORT ===\n");

        // Sales summary
        print_s((char*)"Total sales today: ");
        print_i(today_sales_count);
        print_s((char*)" transactions\n");
        print_s((char*)"Total items sold: ");
        print_i(today_total_items_sold);
        print_c('\n');
        print_s((char*)"Total revenue: $");
        print_i(today_total_revenue_cents / 100);
        print_s((char*)".");
        if (today_total_revenue_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(today_total_revenue_cents % 100);
        print_c('\n');

        // Inventory summary
        print_s((char*)"\nTotal inventory value: $");
        print_i(total_inventory_value_cents / 100);
        print_s((char*)".");
        if (total_inventory_value_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(total_inventory_value_cents % 100);
        print_c('\n');
        print_s((char*)"Average item price: $");
        print_i(average_product_price_cents / 100);
        print_s((char*)".");
        if (average_product_price_cents % 100 < 10) {
            print_s((char*)"0");
        }
        print_i(average_product_price_cents % 100);
        print_c('\n');

        // Low stock warning
        if (need_restock_flag == 1) {
            print_s((char*)"\nWARNING: ");
            print_i(low_stock_items_count);
            print_s((char*)" items need restocking!\n");
        } else {
            print_s((char*)"\nAll items have sufficient stock.\n");
        }

        // Product details
        print_s((char*)"\n=== PRODUCT DETAILS ===\n");

        // Product 1
        print_s((char*) product1_name);
        print_s((char*)" - Qty: ");
        print_i(product1_quantity);
        print_s((char*)" | Sales: ");
        print_i(product1_sales_count);
        print_s((char*)" | Days since restock: ");
        print_i(product1_days_since_restock);
        print_c('\n');

        // Product 2
        print_s((char*)product2_name);
        print_s((char*)" - Qty: ");
        print_i(product2_quantity);
        print_s((char*)" | Sales: ");
        print_i(product2_sales_count);
        print_s((char*)" | Days since restock: ");
        print_i(product2_days_since_restock);
        print_c('\n');

        // Product 3
        print_s((char*)product3_name);
        print_s((char*)" - Qty: ");
        print_i(product3_quantity);
        print_s((char*)" | Sales: ");
        print_i(product3_sales_count);
        print_s((char*)" | Days since restock: ");
        print_i(product3_days_since_restock);
        print_c('\n');
    }

    // Calculate restock amounts (if needed)
    {
        if (product1_quantity < product1_restock_level) {
            temp_restock_amount = product1_restock_level * 2 - product1_quantity;
            print_s((char*)"Need to order ");
            print_i(temp_restock_amount);
            print_s((char*)" more apples\n");
        }

        if (product2_quantity < product2_restock_level) {
            temp_restock_amount = product2_restock_level * 2 - product2_quantity;
            print_s((char*)"Need to order ");
            print_i(temp_restock_amount);
            print_s((char*)" more bananas\n");
        }

        if (product3_quantity < product3_restock_level) {
            temp_restock_amount = product3_restock_level * 2 - product3_quantity;
            print_s((char*)"Need to order ");
            print_i(temp_restock_amount);
            print_s((char*)" more oranges\n");
        }
    }
}
