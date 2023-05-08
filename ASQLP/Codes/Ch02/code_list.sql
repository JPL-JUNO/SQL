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