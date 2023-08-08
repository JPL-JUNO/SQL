-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

SELECT customer_id,
       first_name,
       last_name,
       date_added
FROM customers
ORDER BY date_added;


SELECT date_added,
       COUNT(*)
FROM customers
GROUP BY date_added
ORDER BY date_added;


SELECT customer_id,
       title,
       first_name,
       last_name,
       gender,
       COUNT(*) OVER() as total_customers
FROM customers
ORDER BY customer_id;


SELECT customer_id,
       title,
       first_name,
       last_name,
       gender,
       COUNT(*) OVER(PARTITION BY gender) as total_customers
FROM customers
ORDER BY customer_id;