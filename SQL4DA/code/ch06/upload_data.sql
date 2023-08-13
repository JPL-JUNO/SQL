-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

CREATE TABLE customers_csv AS
    (SELECT *
     FROM customers
     LIMIT 1);

