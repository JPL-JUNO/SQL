-- Active: 1683522513166@@127.0.0.1@3306@sakila

SELECT C.EMAIL
FROM CUSTOMER AS C
    INNER JOIN RENTAL AS R ON C.CUSTOMER_ID = R.CUSTOMER_ID
WHERE
    DATE(R.RENTAL_DATE) = '2005-06-14';

DELETE FROM rental WHERE YEAR(rental_date) = 2004;

SELECT
    customer_id,
    rental_date
FROM rental
WHERE
    rental_date < '2005-05-25';

SELECT
    customer_id,
    rental_date
FROM rental
WHERE
    rental_date <= '2005-06-16'
    AND rental_date >= '2005-06-14';

SELECT
    customer_id,
    rental_date
FROM rental
WHERE
    rental_date BETWEEN '2005-06-14' AND '2005-06-16';

SELECT
    customer_id,
    payment_date,
    amount
FROM payment
WHERE
    amount BETWEEN 10.0 AND 11.99;

SELECT last_name, first_name
FROM customer
WHERE
    last_name BETWEEN 'FA' AND 'FR';

SELECT title, rating FROM film WHERE rating = 'G' or rating = 'PG';

SELECT title, rating FROM film WHERE rating IN ('G', 'PG');

SELECT title, rating
FROM film
WHERE rating IN (
        SELECT rating
        FROM film
        WHERE
            title LIKE '%PET%'
    );

SELECT title, rating
FROM film
WHERE
    rating NOT IN ('PG-13', 'R', 'NC-17');

/*
 strings containing an A in the second position 
 and a T in the fourth position, 
 followed by any number of characters and ending in S.
 */

SELECT last_name, first_name
FROM customer
WHERE last_name LIKE '_A_T%S';

SELECT last_name, first_name
FROM customer
WHERE
    last_name LIKE 'Q%'
    OR last_name LIKE 'Y%';