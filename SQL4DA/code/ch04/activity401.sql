-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

SELECT COUNT(*)
FROM sales;


SELECT *
FROM sales;


SELECT *
FROM customers;


SELECT state,
       SUM(sales_amount)::DECIMAL(12, 2)
FROM sales AS s
LEFT JOIN customers AS c --  USING(customer_id)
ON s.customer_id = c.customer_id
GROUP BY state;


SELECT dealership_id,
       COUNT(*)
FROM sales AS s
WHERE channel <> 'internet'
GROUP BY dealership_id
ORDER BY 2 DESC
LIMIT 5;


SELECT channel,
       product_id,
       AVG(sales_amount)
FROM sales
GROUP BY
GROUPING SETS((channel), (product_id), (channel, product_id));


SELECT 1 - COUNT(dealership_id)::FLOAT/COUNT(*)
FROM sales;


SELECT to_char(sales_transaction_date, 'yyyy'),
       SUM(sales_amount)::DECIMAL(12, 2)
FROM sales
WHERE channel = 'internet'
GROUP BY 1
ORDER BY 1;


SELECT to_char(sales_transaction_date, 'yyyy'),
       SUM(CASE
               WHEN channel = 'internet' THEN sales_amount
               ELSE 0
           END) AS internet_sales,
       SUM(CASE
               WHEN channel <> 'internet' THEN sales_amount
               ELSE 0
           END) AS non_internet_sales
FROM sales
GROUP BY 1
ORDER BY 1;