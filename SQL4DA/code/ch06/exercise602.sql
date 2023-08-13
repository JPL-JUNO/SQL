-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public
-- 这里是验证使用 pd.to_sql 是可以把表存储下来的

SELECT t.city,
       t.number_of_customers,
       SUM(s.sales_amount)
FROM sales AS s
JOIN customers AS c ON s.customer_id = c.customer_id
JOIN top_cities_data AS t ON t.city = c.city
GROUP BY 1,
         2 -- 不然没有办法排序，虽然知道每个 city 对应的 number_of_customers 是唯一的
ORDER BY 2 DESC;