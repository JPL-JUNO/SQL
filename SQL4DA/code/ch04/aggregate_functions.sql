-- Active: 1690980029839@@127.0.0.1@5432@sql4da

SELECT COUNT(*)
FROM customers
WHERE state = 'CA';


SELECT COUNT(*) / 2
FROM customers;


SELECT SUM(base_msrp) / COUNT(*) AS avg_base_msrp
FROM products;


SELECT AVG(base_msrp) AS avg_base_msrp
FROM products;


SELECT COUNT(customer_id) -- 仅计算 non-NULL
FROM customers;


SELECT COUNT(*) -- 计算行数
FROM customers;


SELECT COUNT(title)
FROM customers;


SELECT COUNT(DISTINCT state)
FROM customers; -- 可以计算不同值, nunique


SELECT COUNT(customer_id)::numeric / COUNT(DISTINCT state)
FROM customers; -- 计算平均每个州的客户数


SELECT COUNT(customer_id) / COUNT(DISTINCT state)
FROM customers; -- 结果时 980， count 在 psql 中返回的是整数，做除法会截断小数位


SELECT COUNT(customer_id) * 1.0 / COUNT(DISTINCT state)
FROM customers; -- 乘整数也可以变成浮点数

