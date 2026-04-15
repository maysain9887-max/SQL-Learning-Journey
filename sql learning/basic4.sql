-- Mumbai ke customers ke orders
SELECT c.name, o.*
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE c.city = 'Mumbai';
-- Pending orders count
SELECT COUNT(*) 
FROM orders
WHERE status = 'Pending';
-- Har city ka avg order amount
SELECT c.city, AVG(o.amount)
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.city;
-- Max order per customer
SELECT customer_id, MAX(amount)
FROM orders
GROUP BY customer_id;
-- Customers jinka koi order nahi
SELECT c.name
FROM customers c
LEFT JOIN orders o 
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;