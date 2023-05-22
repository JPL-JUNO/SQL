-- Active: 1683522513166@@127.0.0.1@3306@sakila

/*
 @Description: set operator
 @Author(s): Stephen CUI
 @LastEditor(s): Stephen CUI
 @CreatedTime: 2023-05-22 10:34:16
 */

SELECT
    'CUST' AS TYP,
    C.first_name,
    C.last_name
FROM customer AS C
UNION ALL
SELECT
    'ACTR' AS TYP,
    A.first_name,
    A.last_name
FROM actor AS A;

SELECT
    C.first_name,
    C.last_name
FROM customer AS C
WHERE
    C.first_name LIKE 'J%'
    AND C.last_name LIKE 'D%'
UNION
SELECT
    A.first_name,
    A.last_name
FROM actor AS A
WHERE
    A.first_name LIKE 'J%'
    AND A.last_name LIKE 'D%';