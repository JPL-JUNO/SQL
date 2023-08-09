-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public
WITH daily_sales AS
    (SELECT sales_transaction_date::DATE,
            SUM(sales_amount) AS total_sales
     FROM sales
     GROUP BY 1)
SELECT sales_transaction_date,
       total_sales::DECIMAL(12, 2),
       AVG(total_sales) OVER(
                             ORDER BY sales_transaction_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)::DECIMAL(12, 2) as row_number
FROM daily_sales
ORDER BY 1;

WITH daily_sales AS
    (SELECT sales_transaction_date::DATE,
            SUM(sales_amount) AS total_sales
     FROM sales
     GROUP BY 1),
     moving_average_calculation_7 AS
    (SELECT sales_transaction_date,
            total_sales::DECIMAL(12, 2),
            AVG(total_sales) OVER(
                                  ORDER BY sales_transaction_date ROWS BETWEEN 6 PRECEDING AND CURRENT ROW)::DECIMAL(12, 2) AS sales_moving_average_7,
            ROW_NUMBER()OVER(
                             ORDER BY sales_transaction_date) AS row_number
     FROM daily_sales
     ORDER BY 1)
SELECT sales_transaction_date,
       CASE
           WHEN row_number >= 7 THEN sales_moving_average_7
           ELSE NULL
       END
FROM moving_average_calculation_7;

-- 先计算中间两张表，然后再计算我需要的滑动均值