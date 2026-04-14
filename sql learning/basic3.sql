-- Customers with >1 orders
SELECT customer_id, COUNT(*) 
FROM orders 
GROUP BY customer_id 
HAVING COUNT(*) > 1;
-- Join customers + orders
SELECT c.name, o.amount
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id;
-- Customers with no orders
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id=o.customer_id
WHERE o.order_id IS NULL;
-- All orders with customer name
SELECT c.name, o.order_id
FROM customers c
RIGHT JOIN orders o
ON c.customer_id=o.customer_id;
-- Product + quantity
SELECT p.product_name, oi.quantity
FROM products p
JOIN order_items oi
ON p.product_id=oi.product_id;
-- Total quantity per product
SELECT product_id, SUM(quantity)
FROM order_items
GROUP BY product_id;
-- Highest spending customer
SELECT customer_id, SUM(amount) total
FROM orders
GROUP BY customer_id
ORDER BY total DESC LIMIT 1;
-- Orders above avg
SELECT * FROM orders
WHERE amount > (SELECT AVG(amount) FROM orders);
-- Second highest order
SELECT amount FROM orders
ORDER BY amount DESC LIMIT 1 OFFSET 1;
-- case status
SELECT order_id,
CASE 
WHEN amount >1000 THEN 'High'
ELSE 'Low'
END
FROM orders;
-- Coalesce example
SELECT COALESCE(status,'Unknown') FROM orders;
-- Orders per city
SELECT c.city, COUNT(*)
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.city;
-- City with highest orders
SELECT c.city, COUNT(*) cnt
FROM customers c
JOIN orders o ON c.customer_id=o.customer_id
GROUP BY c.city
ORDER BY cnt DESC LIMIT 1;
-- Products not ordered
SELECT p.product_name
FROM products p
LEFT JOIN order_items oi
ON p.product_id=oi.product_id
WHERE oi.product_id IS NULL;
-- Total revenue per product
SELECT p.product_name, SUM(p.price*oi.quantity)
FROM products p
JOIN order_items oi
ON p.product_id=oi.product_id
GROUP BY p.product_name;