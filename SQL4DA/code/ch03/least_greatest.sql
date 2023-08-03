-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT product_id,
       model,
       year,
       product_type,
       LEAST(600.00, base_msrp) AS base_msrp,
       production_start_date,
       production_end_date
FROM products
WHERE product_type = 'scooter'
ORDER BY 1;