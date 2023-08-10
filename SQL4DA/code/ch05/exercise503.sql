-- Active: 1691026870033@@127.0.0.1@5432@sql4da@public
WITH daily_sales AS
    (SELECT sales_transaction_date::DATE,
            SUM(sales_amount) AS total_sales
     FROM sales
     GROUP BY 1),
     sales_stats_30 AS
    (SELECT sales_transaction_date,
            total_sales,
            MAX(total_sales) OVER(
                                  ORDER BY sales_transaction_date ROWS BETWEEN 30 PRECEDING AND 1 PRECEDING) AS max_sales_30
     FROM daily_sales
     ORDER BY 1)
SELECT sales_transaction_date,
       total_sales::DECIMAL(12, 2),
       max_sales_30::DECIMAL(12, 2)
FROM sales_stats_30
WHERE sales_transaction_date >= '2019-01-01';

WITH daily_sales AS
    (SELECT sales_transaction_date::DATE,
            SUM(sales_amount) AS total_sales
     FROM sales
     GROUP BY 1),
     sales_stats_30 AS
    (SELECT sales_transaction_date,
            total_sales,
            MAX(total_sales) OVER(
                                  ORDER BY sales_transaction_date ROWS BETWEEN 30 PRECEDING AND 1 PRECEDING) AS max_sales_30
     FROM daily_sales
     ORDER BY 1)
SELECT sales_transaction_date,
       total_sales::DECIMAL(12, 2),
       max_sales_30::DECIMAL(12, 2)
FROM sales_stats_30
WHERE sales_transaction_date >= '2019-01-01'
    AND total_sales > max_sales_30;