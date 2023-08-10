-- Active: 1691026870033@@127.0.0.1@5432@sql4da@public

SELECT sales_transaction_date::DATE,
       SUM(sales_amount)::DECIMAL(12, 2)
FROM sales
WHERE sales_transaction_date::DATE BETWEEN '2021-01-01' AND '2021-12-31'
GROUP BY 1
ORDER BY 1;

WITH daily_sales AS
    (SELECT sales_transaction_date::DATE,
            SUM(sales_amount)::DECIMAL(12, 2) AS sales_amount
     FROM sales
     WHERE sales_transaction_date::DATE BETWEEN '2021-01-01' AND '2021-12-31'
     GROUP BY 1)
SELECT sales_transaction_date::DATE,
       sales_amount,
       AVG(sales_amount) OVER w AS moving_avg_30
FROM daily_sales WINDOW w AS(
                             ORDER BY sales_transaction_date::DATE ROWS BETWEEN 30 PRECEDING AND 1 PRECEDING)
ORDER BY 1;

WITH daily_sales AS
    (SELECT sales_transaction_date::DATE,
            SUM(sales_amount)::DECIMAL(12, 2) AS sales_amount
     FROM sales
     WHERE sales_transaction_date::DATE BETWEEN '2021-01-01' AND '2021-12-31'
     GROUP BY 1),
     moving_avg AS
    (SELECT sales_transaction_date::DATE,
            sales_amount,
            AVG(sales_amount) OVER w AS moving_avg_30
     FROM daily_sales WINDOW w AS(
                                  ORDER BY sales_transaction_date::DATE ROWS BETWEEN 30 PRECEDING AND 1 PRECEDING))
SELECT sales_transaction_date::DATE,
       sales_amount,
       moving_avg_30,
       NTILE(10) OVER(
                      ORDER BY moving_avg_30 DESC) AS decile
FROM moving_avg
WHERE moving_avg_30 IS NOT NULL
ORDER BY decile;