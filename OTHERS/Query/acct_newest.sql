-- Active: 1691027669001@@127.0.0.1@3306@bank

DROP TABLE IF EXISTS acct_newest;

CREATE TABLE
    IF NOT EXISTS acct_newest AS(
        SELECT *
        FROM(
                SELECT
                    *,
                    row_number() OVER(
                        PARTITION BY acct
                        ORDER BY
                            dt DESC
                    ) AS rk
                FROM acct
            ) AS t
        WHERE rk = 1
    );