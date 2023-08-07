-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

SELECT PERCENTILE_CONT(.5) WITHIN
GROUP (
       ORDER BY base_msrp)
FROM products;