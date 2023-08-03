-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT CASE
           when postal_code='33111' THEN 'Elite Customer'
           WHEN postal_code='33124' THEN 'Premium Customer'
           ELSE 'Standard Customer'
       END AS customer_type,
       *
FROM customers;