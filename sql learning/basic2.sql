use ecommerce_db;
-- Customers from Delhi 
SELECT * FROM customers WHERE city='Delhi';
-- Orders > 1000
SELECT * FROM orders WHERE amount > 1000;
-- Distinct cities
SELECT DISTINCT city FROM customers;
-- Top 2 highest orders
SELECT * FROM orders ORDER BY amount DESC LIMIT 2;
-- Orders between 500–1500
SELECT * FROM orders WHERE amount BETWEEN 500 AND 1500;
-- Customers starting with 'A'
SELECT * FROM customers WHERE name LIKE 'A%';
-- Orders with status Delivered
SELECT * FROM orders WHERE status='Delivered';
-- Orders not Delivered
SELECT * FROM orders WHERE status!='Delivered';
-- Count total customers
SELECT COUNT(*) FROM customers;
-- Avg order amount
SELECT AVG(amount) FROM orders;
-- Max order
SELECT MAX(amount) FROM orders;
-- Min order
SELECT MIN(amount) FROM orders;
-- Total sales
SELECT SUM(amount) FROM orders;
-- Orders per customer
SELECT customer_id, COUNT(*) 
FROM orders GROUP BY customer_id;