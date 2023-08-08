-- Active: 1691026870033@@127.0.0.1@5432@sql4da@public

SELECT state,
       COUNT(*)
FROM customers
GROUP BY state
HAVING COUNT(*) >= 1000
ORDER BY 1;