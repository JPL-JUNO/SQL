-- Active: 1691026870033@@127.0.0.1@5432@sql4da

SELECT DISTINCT year
FROM products
ORDER BY 1;


SELECT DISTINCT year,
                product_type
FROM products
ORDER BY 1,
         2;

-- 每个 first_name 只取一条，相同的话取 hire_date 最小的那条
--🚩

SELECT DISTINCT ON (first_name) *
FROM salespeople
ORDER BY first_name,
         hire_date;


select *
from salespeople
WHERE first_name = 'Andrey';

-- 可以验证上面确实如描述一样运行