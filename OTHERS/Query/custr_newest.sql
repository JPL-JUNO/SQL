-- Active: 1691027669001@@127.0.0.1@3306@bank

DROP TABLE IF EXISTS custr_newest;

CREATE TABLE
    IF NOT EXISTS custr_newest AS(
        SELECT *
        FROM(
                SELECT
                    *,
                    row_number() OVER(
                        PARTITION BY custr_nbr
                        ORDER BY
                            dt DESC
                    ) AS rk
                FROM
                    custr
            ) AS t
        WHERE rk = 1
    );