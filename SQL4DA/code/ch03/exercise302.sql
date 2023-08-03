-- Active: 1691026870033@@127.0.0.1@5432@sql4da

    (SELECT first_name,
            last_name,
            'Customer' AS guest_type
     FROM customers
     WHERE city = 'Los Angeles'
         AND state = 'CA')
UNION
    (SELECT first_name,
            last_name,
            'Employee' AS guest_type
     FROM salespeople AS s
     INNER JOIN dealerships AS d ON d.dealership_id = s.dealership_id
     WHERE city = 'Los Angeles'
         AND state = 'CA');

--  To demonstrate the usage of UNION ALL

SELECT *
FROM products
UNION
SELECT *
FROM products; -- 产生 12 条数据


SELECT *
FROM products
UNION ALL
SELECT *
FROM products; -- 产生 24 条数据