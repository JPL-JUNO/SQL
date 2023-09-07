-- Active: 1691027669001@@127.0.0.1@3306@bank

DROP TABLE IF EXISTS card_newest;

CREATE TABLE
    IF NOT EXISTS card_newest AS(
        SELECT *
        FROM(
                select
                    *,
                    ROW_NUMBER() OVER(
                        PARTITION BY card_id
                        ORDER BY
                            dt DESC
                    ) AS rk
                FROM card
            ) AS t
        WHERE rk = 1
    );