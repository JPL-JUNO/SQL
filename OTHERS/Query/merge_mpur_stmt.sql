-- Active: 1691027669001@@127.0.0.1@3306@bank

SELECT s.*, m.*
FROM stmt_newest AS s
    LEFT JOIN mpur_newest AS m USING(`account`)