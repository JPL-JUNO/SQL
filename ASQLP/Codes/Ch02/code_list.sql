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