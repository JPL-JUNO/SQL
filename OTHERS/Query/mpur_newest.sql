-- Active: 1691027669001@@127.0.0.1@3306@bank

CREATE TABLE
    IF NOT EXISTS mpur_newest(
        SELECT *
        FROM(
                SELECT
                    *,
                    row_number() OVER(
                        PARTITION BY account,
                        mp_n
                        ORDER BY
                            dt DESC
                    ) AS rk
                FROM mpur
            ) AS t
        WHERE t.rk = 1
    );