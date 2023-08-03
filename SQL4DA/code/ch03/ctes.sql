-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT *
FROM salespeople
INNER JOIN
    (SELECT *
     FROM dealerships
     WHERE state = 'CA') AS d ON d.dealership_id = salespeople.dealership_id
ORDER BY 1;

WITH d AS
    (SELECT *
     FROM dealerships
     WHERE dealerships.state = 'CA')
SELECT *
FROM salespeople
INNER JOIN d ON d.dealership_id = salespeople.dealership_id
ORDER BY 1;