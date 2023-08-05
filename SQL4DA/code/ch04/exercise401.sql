-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

SELECT MIN(base_msrp),
       MAX(base_msrp),
       AVG(base_msrp),
       stddev(base_msrp)
FROM products;