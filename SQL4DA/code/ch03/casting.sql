-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT product_id,
       model,
       year::TEXT,
       product_type,
       base_msrp,
       production_start_date,
       production_end_date
FROM products;

