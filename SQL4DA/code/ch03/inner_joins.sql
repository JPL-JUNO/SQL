-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT *
FROM dealerships
WHERE state = 'CA';

-- 这里的 (2, 5) 是由上面的查询结果返回的

SELECT *
FROM salespeople
WHERE dealership_id in (2,
                        5)
ORDER BY 1;


SELECT *
FROM salespeople
INNER JOIN dealerships ON salespeople.dealership_id = dealerships.dealership_id
ORDER BY 1;


SELECT *
FROM salespeople
INNER JOIN dealerships ON salespeople.dealership_id = dealerships.dealership_id
WHERE state='CA'
ORDER BY 1;


SELECT salespeople.*
FROM salespeople
INNER JOIN dealerships ON salespeople.dealership_id = dealerships.dealership_id
WHERE state = 'CA'
ORDER BY 1;

-- 可以使用 Alias 来代替表名，只需要在表首次出现之后就可以
-- AS 关键字可写可不行，写的话就是显式指明

SELECT s.*
FROM salespeople AS s
INNER JOIN dealerships AS d ON s.dealership_id = d.dealership_id
WHERE state = 'CA'
ORDER BY 1;