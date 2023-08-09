-- Active: 1691026870033@@127.0.0.1@5432@sql4da@public

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


SELECT gender,
       COUNT(*)
FROM customers
GROUP BY 1;


SELECT customer_id,
       title,
       first_name,
       last_name,
       COUNT(*) OVER(
                     ORDER BY customer_id) AS total_customers
FROM customers
ORDER BY customer_id;


SELECT customer_id,
       title,
       first_name,
       last_name,
       gender,
       COUNT(*) OVER(PARTITION BY gender
                     ORDER BY customer_id) as total_customers
FROM customers
ORDER BY customer_id;