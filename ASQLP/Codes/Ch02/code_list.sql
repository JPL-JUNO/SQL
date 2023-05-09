USE ASQLP;

SELECT
    products_id,
    products_name,
    sale_price,
    AVG(sale_price) OVER (
        ORDER BY
            products_id ROWS BETWEEN 2 PRECEDING
            AND CURRENT ROW
    ) AS moving_price
FROM products;

-- 显式地定义窗口

SELECT
    products_id,
    products_name,
    sale_price,
    AVG(sale_price) OVER W AS moving_price
FROM products WINDOW W AS (
        ORDER BY
            products_id ROWS BETWEEN 2 PRECEDING
            AND CURRENT ROW
    );

-- 显示窗口的有点：可以重复使用

SELECT
    products_id,
    products_name,
    sale_price,
    AVG(sale_price) OVER W AS moving_price,
    SUM(sale_price) OVER W AS moving_sum,
    COUNT(sale_price) OVER W AS moving_count,
    MAx(sale_price) OVER W AS moving_max
FROM products WINDOW W AS (
        ORDER BY
            products_id ROWS BETWEEN 2 PRECEDING
            AND CURRENT ROW
    );

SELECT
    sample_date AS cur_date,
    MIN(sample_date) OVER(
        ORDER BY
            sample_date ASC ROWS BETWEEN 1 PRECEDING
            AND 1 PRECEDING
    ) AS latest_date
FROM LoadSample;

SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER W AS latest_date,
    MIN(load_val) OVER W AS latest_load
FROM LoadSample WINDOW W AS (
        ORDER BY
            sample_date ASC ROWS BETWEEN 1 PRECEDING
            AND 1 PRECEDING
    );

-- 帧还可以想“后”移动

SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER W AS next_date,
    MIN(load_val) OVER W AS next_load
FROM LoadSample WINDOW W AS (
        ORDER BY
            sample_date ASC ROWS BETWEEN 1 FOLLOWING
            AND 1 FOLLOWING
    );

SELECT
    sample_date AS cur_date,
    load_val AS cur_load,
    MIN(sample_date) OVER W AS day_1_before,
    MIN(load_val) OVER W AS load_1_day_before
FROM LoadSample WINDOW W AS (
        ORDER BY
            sample_date ASC RANGE BETWEEN INTERVAL '1' DAY PRECEDING
            AND INTERVAL '1' DAY PRECEDING
    );

SELECT
    sample_date AS cur_date,
    MIN(sample_date) OVER(
        ORDER BY
            sample_date ASC ROWS BETWEEN 1 PRECEDING
            AND 1 PRECEDING
    ) AS latest_1,
    MIN(sample_date) OVER(
        ORDER BY
            sample_date ASC ROWS BETWEEN 2 PRECEDING
            AND 2 PRECEDING
    ) AS latest_2,
    MIN(sample_date) OVER(
        ORDER BY
            sample_date ASC ROWS BETWEEN 3 PRECEDING
            AND 3 PRECEDING
    ) AS latest_3
FROM LoadSample;

SELECT
    P1.NAME AS NAME_1,
    P2.NAME AS NAME_2
FROM PRODUCT AS P1
    CROSS JOIN PRODUCT AS P2;

SELECT
    P1.NAME AS NAME_1,
    P2.NAME AS NAME_2
FROM PRODUCT AS P1
    INNER JOIN PRODUCT AS P2 ON P1.NAME <> P2.NAME;

SELECT
    P1.NAME AS NAME_1,
    P2.NAME AS NAME_2
FROM PRODUCT AS P1
    INNER JOIN PRODUCT AS P2 ON P1.NAME > P2.NAME;

SELECT
    P1.NAME AS NAME_1,
    P2.NAME AS NAME_2,
    P3.NAME AS NAME_3
FROM PRODUCT AS P1
    INNER JOIN PRODUCT AS P2 ON P1.NAME > P2.NAME
    INNER JOIN PRODUCT AS P3 ON P2.NAME > P3.NAME;

SELECT
    DISTINCT A1.NAME,
    A1.ADDRESS
FROM ADDRESSES AS A1
    INNER JOIN ADDRESSES AS A2 ON A1.FAMILY_ID = A2.FAMILY_ID AND A1.ADDRESS <> A2.ADDRESS;

DELETE FROM Product;

INSERT INTO Product VALUES ('苹果', 50);

INSERT INTO Product VALUES ('橘子', 100);

INSERT INTO Product VALUES ('葡萄', 50);

INSERT INTO Product VALUES ('西瓜', 80);

INSERT INTO Product VALUES ('柠檬', 30);

INSERT INTO Product VALUES ('草莓', 100);

INSERT INTO Product VALUES ('香蕉', 100);

SELECT
    DISTINCT P1.NAME,
    P1.PRICE
FROM PRODUCT P1
    INNER JOIN PRODUCT P2
WHERE
    P1.NAME <> P2.NAME
    AND P1.PRICE = P2.PRICE;

SELECT
    NAME,
    PRICE,
    RANK() OVER(
        ORDER BY
            PRICE DESC
    ) AS RANK_1,
    DENSE_RANK() OVER(
        ORDER BY
            PRICE DESC
    ) AS RANK_2
FROM PRODUCT;

-- 相当于RANK()函数

SELECT P1.NAME, P1.PRICE, (
        SELECT
            COUNT(P2.PRICE)
        FROM PRODUCT AS P2
        WHERE
            P1.PRICE < P2.PRICE
    ) + 1 AS RANK_1
FROM PRODUCT AS P1
ORDER BY RANK_1;

--  相当于dense_rank()函数

SELECT P1.NAME, P1.PRICE, (
        SELECT
            COUNT(DISTINCT P2.PRICE)
        FROM PRODUCT AS P2
        WHERE
            P1.PRICE < P2.PRICE
    ) + 1 AS RANK_1
FROM PRODUCT AS P1
ORDER BY RANK_1;