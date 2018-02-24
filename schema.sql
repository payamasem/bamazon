CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
item_id int NOT NULL,
product_name varchar(50) NOT NULL,
department_name varchar(50) NOT NULL,
price DECIMAL(4,2) NOT NULL,
stock_quantity int NOT NULL);


INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (333, 'Berkeley Sweatshirt - Large', 'Apparel', 19.99, 60);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (555, 'Google Home', 'Electronics', 129.99, 80);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (212, 'Persian Carpet - 16 ft', 'Home Goods', 349.99, 5);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (666, 'Crash Bandicoot', 'Electronics', 29.99, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (999, 'Vans Classic - Size 11', 'Apparel', 45.99, 8);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (888, 'Monopoly', 'Board Games', 14.99, 7);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (777, 'Wood TV Stand - Maple', 'Home Goods', 149.99, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (111, 'Life - Simpsons Edition', 'Board Games', 19.99, 25);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (101, 'Nintendo Switch', 'Electronics', 249.99, 4);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (444, 'Black Sweatshirt - Medium', 'Apparel', 29.99, 30);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (222, 'Monopoly', 'Board Games', 14.99, 10);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (767, 'Twin Bed Frame - Black', 'Home Goods', 165.99, 40);

INSERT INTO products (item_id, product_name, department_name, price, stock_quantity) VALUES (131, 'Amazon Echo', 'Electronics', 69.99, 29);