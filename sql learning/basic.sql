
USE ecommerce_db;
 CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount INT,
    order_date DATE,
    status VARCHAR(20)
);
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    price INT
);
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT
);
INSERT INTO customers VALUES
(1,'Amit','Delhi'),
(2,'Neha','Mumbai'),
(3,'Rohit','Delhi'),
(4,'Simran','Jaipur'),
(5,'Karan','Mumbai');
INSERT INTO orders VALUES
(101,1,500,'2024-01-10','Delivered'),
(102,2,1500,'2024-02-12','Pending'),
(103,1,700,'2024-03-05','Delivered'),
(104,3,2000,'2024-03-15','Cancelled'),
(105,4,1200,'2024-04-01','Delivered');
INSERT INTO products VALUES
(1,'Laptop',50000),
(2,'Phone',20000),
(3,'Tablet',15000),
(4,'Headphones',2000);
INSERT INTO order_items VALUES
(101,1,1),
(101,4,2),
(102,2,1),
(103,3,1),
(104,1,1),
(105,2,2);

select*from customers;
select*from orders;
select*from order_item;