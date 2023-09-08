-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    IF NOT EXISTS stmt_newest(
        SELECT *
        FROM stmt
        WHERE
            dt < '2023-04-30'
    );