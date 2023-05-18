-- Active: 1683725252949@@127.0.0.1@3306@sakila

SELECT
    C.FIRST_NAME,
    C.LAST_NAME,
    A.ADDRESS
FROM CUSTOMER AS C
    JOIN ADDRESS AS A;

SELECT
    C.first_name,
    C.last_name,
    A.address
FROM customer AS C
    JOIN address AS A ON C.address_id = A.address_id;

SELECT
    C.first_name,
    C.last_name,
    CT.city
FROM customer AS C
    INNER JOIN address AS A ON C.address_id = A.address_id
    INNER JOIN city AS CT ON CT.city_id = A.city_id;

SELECT
    C.first_name,
    C.last_name,
    ADDR.ADDRESS,
    ADDR.CITY
FROM customer AS C
    INNER JOIN (
        SELECT
            A.address_id,
            A.ADDRESS,
            CT.city
        FROM address AS A
            INNER JOIN city AS CT ON CT.city_id = A.city_id
        WHERE
            A.DISTRICT = 'CALIFORNIA'
    ) AS ADDR ON ADDR.address_id = C.address_id;

SELECT
    A.address_id,
    A.ADDRESS,
    CT.city
FROM address AS A
    INNER JOIN city AS CT ON CT.city_id = A.city_id
WHERE A.DISTRICT = 'CALIFORNIA';

SELECT F.TITLE
FROM film AS F
    INNER JOIN film_actor AS FA ON FA.film_id = F.film_id
    INNER JOIN actor AS A ON A.actor_id = FA.actor_id
WHERE (
        A.first_name = 'CATE'
        AND A.last_name = 'MCQUEEN'
    )
    OR (
        A.first_name = 'CUBA'
        AND A.last_name = 'BIRCH'
    );