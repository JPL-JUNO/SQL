-- Active: 1683725252949@@127.0.0.1@3306@sakila

SELECT rental_id, customer_id FROM rental WHERE return_date IS NULL;

SELECT rental_id, customer_id FROM rental WHERE return_date = NULL;

SELECT
    rental_id,
    customer_id,
    return_date
FROM rental
WHERE return_date IS NOT NULL;

SELECT
    rental_id,
    customer_id,
    return_date
FROM rental
WHERE
    return_date NOT BETWEEN '2005-05-01' AND '2005-09-01'
    OR return_date IS NULL;