-- Active: 1691026870033@@127.0.0.1@5432@sql4da
-- NULLIF is used as the opposite of COALESCE. While COALESCE is used to convert
-- NULL into a standard value, NULLIF is a two-value function and will return NULL if
-- the first value equals the second value.

SELECT *
FROM customers
WHERE title = 'Honorable';


SELECT customer_id,
       NULLIF(title, 'Honorable') as title,
       first_name,
       last_name,
       suffix,
       email,
       gender,
       ip_address,
       phone,
       street_address,
       city,
       state,
       postal_code,
       latitude,
       longitude,
       date_added
FROM customers AS c
ORDER BY 1;