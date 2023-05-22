/*
 @Description: Set Operation Rules
 @Author(s): Stephen CUI
 @LastEditor(s): Stephen CUI
 @CreatedTime: 2023-05-22 17:18:24
 */

SELECT
    A.first_name AS FNAME,
    A.last_name AS LNAME
FROM actor AS A
WHERE
    A.first_name LIKE 'J%'
    AND A.last_name LIKE 'D%'
UNION ALL
SELECT
    C.first_name,
    C.last_name
FROM customer AS C
WHERE
    C.first_name LIKE 'J%'
    AND C.last_name LIKE 'D%'
ORDER BY FNAME, LNAME;

SELECT
    A.first_name,
    A.last_name
FROM actor AS A
WHERE
    A.first_name LIKE 'J%'
    AND A.last_name LIKE 'D%'
UNION ALL
SELECT
    A.first_name,
    A.last_name
FROM actor AS A
WHERE
    A.first_name LIKE 'M%'
    AND A.last_name LIKE 'T%'
UNION
SELECT
    C.first_name,
    C.last_name
FROM customer AS C
WHERE
    C.first_name LIKE 'J%'
    AND C.last_name LIKE 'D%';

SELECT
    A.first_name,
    A.last_name
FROM actor AS A
WHERE
    A.first_name LIKE 'J%'
    AND A.last_name LIKE 'D%'
UNION
SELECT
    A.first_name,
    A.last_name
FROM actor AS A
WHERE
    A.first_name LIKE 'M%'
    AND A.last_name LIKE 'T%'
UNION ALL
SELECT
    C.first_name,
    C.last_name
FROM customer AS C
WHERE
    C.first_name LIKE 'J%'
    AND C.last_name LIKE 'D%';