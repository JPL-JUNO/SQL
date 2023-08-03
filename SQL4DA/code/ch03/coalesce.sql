-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT first_name,
       last_name,
       phone
FROM customers;


SELECT first_name,
       last_name,
       COALESCE(phone, 'NO PHONE') AS phone
FROM customers
ORDER BY 1;