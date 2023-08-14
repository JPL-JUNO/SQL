-- Active: 1691026870033@@127.0.0.1@5432@sql4da@public

SELECT MAX(public_transportation_pct) AS max_pct,
       MIN(public_transportation_pct) AS min_pct
FROM public_transportation_by_zip;


SELECT (public_transportation_pct > 10) AS is_high_public_transportation,
       COUNT(s.customer_id)*1.0/COUNT(DISTINCT c.customer_id) AS sales_per_customer
FROM customers AS c
INNER JOIN public_transportation_by_zip as t ON t.zip_code = c.postal_code
LEFT JOIN sales AS s ON s.customer_id = c.customer_id
WHERE t.public_transportation_pct > 0
GROUP BY 1
LIMIT 10;


SELECT *
FROM public_transportation_by_zip
WHERE public_transportation_pct > 0
    AND public_transportation_pct < 50;


SELECT 10*ROUND(public_transportation_pct/10) AS public_transport,
       COUNT(s.customer_id) * 1.0 / COUNT(DISTINCT c.customer_id) AS sales_per_customer
FROM customers AS c
INNER JOIN public_transportation_by_zip AS t ON t.zip_code = c.postal_code
LEFT JOIN sales AS s ON s.customer_id = c.customer_id
WHERE t.public_transportation_pct > 0
GROUP BY 1;