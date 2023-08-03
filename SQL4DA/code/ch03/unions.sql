-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT street_address,
       city,
       state,
       postal_code
FROM customers
WHERE street_address IS NOT NULL;


SELECT street_address,
       city,
       state,
       postal_code
FROM dealerships
WHERE street_address IS NOT NULL;

-- 似乎非常的耗时，查询效率较低

    (SELECT street_address,
            city,
            state,
            postal_code
     FROM customers
     WHERE street_address IS NOT NULL)
UNION
    (SELECT street_address,
            city,
            state,
            postal_code
     FROM dealerships
     WHERE street_address IS NOT NULL)
ORDER BY 1;