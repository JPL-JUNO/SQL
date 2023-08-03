-- Active: 1691026870033@@127.0.0.1@5432@sql4da
-- Exercise 3.01: Using Joins to Analyze a Sales Dealership

SELECT c.customer_id,
       c.first_name,
       c.last_name,
       c.phone
FROM sales AS s
INNER JOIN customers AS c ON c.customer_id = s.customer_id
INNER JOIN products AS P ON p.product_id = s.product_id
WHERE p.product_type = 'automobile'
    AND c.phone IS NOT NULL;