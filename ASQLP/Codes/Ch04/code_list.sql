-- Active: 1683725252949@@127.0.0.1@3306@asqlp

SELECT *
FROM products
WHERE price > ALL (
        SELECT price
        FROM products
        WHERE price > 100
    );