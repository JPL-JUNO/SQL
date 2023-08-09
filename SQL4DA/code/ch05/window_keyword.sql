-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

SELECT customer_id,
       title,
       first_name,
       last_name,
       gender,
       COUNT(*) OVER(PARTITION BY gender
                     ORDER BY customer_id) as total_customers,
       SUM(CASE
               WHEN title IS NOT NULL THEN 1
               else 0
           END) OVER(PARTITION BY gender
                     ORDER BY customer_id) as total_customers_title
FROM customers
ORDER BY customer_id;


SELECT customer_id,
       title,
       first_name,
       last_name,
       gender,
       COUNT(*) OVER w as total_customers,
                     SUM(CASE
                             WHEN title IS NOT NULL THEN 1
                             else 0
                         END) OVER w as total_customers_title
FROM customers WINDOW w AS(PARTITION BY gender
                           ORDER BY customer_id)
ORDER BY customer_id;