-- Active: 1691026870033@@127.0.0.1@5432@sql4da@public

SELECT customer_id,
       street_address,
       date_added::DATE,
       COUNT(CASE
                 WHEN street_address IS NOT NULL THEN customer_id
                 else NULL
             END) OVER(
                       ORDER BY date_added::DATE) AS non_null_street_address,
       COUNT(*) OVER (
                      ORDER BY date_added::DATE) AS total_street_address -- 截至当前日期的总计数，因为没有指定 frame 的大小
FROM customers
ORDER BY date_added;

WITH daily_rolling_count AS
    (SELECT customer_id,
            street_address,
            date_added::DATE,
            COUNT(CASE
                      WHEN street_address IS NOT NULL THEN customer_id
                      else NULL
                  END) OVER(
                            ORDER BY date_added::DATE) AS non_null_street_address,
            COUNT(*) OVER(
                          ORDER BY date_added::DATE) AS total_street_address
     FROM customers)
SELECT DISTINCT date_added,
                non_null_street_address,
                total_street_address,
                1-1.0* non_null_street_address/total_street_address AS null_address_percentage
FROM daily_rolling_count
ORDER BY date_added;

