-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT c.*,
       p.*,
       COALESCE(s.dealership_id, -1) AS sales_dealership,
       CASE
           WHEN sales_amount < base_msrp - 500 THEN 1
           ELSE 0
       END AS high_savings
FROM sales AS s
INNER JOIN customers AS c ON c.customer_id = s.customer_id
INNER JOIN products AS p ON s.product_id = p.product_id
LEFT OUTER JOIN dealerships AS d ON d.dealership_id = s.dealership_id;