-- Active: 1691026870033@@127.0.0.1@5432@sql4da
-- 外连接可以分为三种：左外连接、右外连接、全外连接

SELECT *
FROM customers AS c
LEFT OUTER JOIN emails AS e ON e.customer_id = c.customer_id
ORDER BY c.customer_id
LIMIT 1000; -- 可以看见 customer_id 是 27 的这个客户没有收到任何的 Email，
-- -- 但是他仍在查询结果中，因为顾客表的全部行都被保存了下来
-- the columns belonging to the emails table are completely full of NULL values.
-- 如果是 inner join，那么 customer_id=27 将会被剔除


SELECT c.customer_id,
       c.title,
       c.first_name,
       c.last_name,
       c.suffix,
       c.email,
       e.email_id,
       e.email_subject,
       e.opened,
       e.clicked,
       e.bounced,
       e.sent_date,
       e.opened_date,
       e.clicked_date
FROM customers AS c
LEFT OUTER JOIN emails AS e ON e.customer_id = c.customer_id
WHERE e.customer_id IS NULL
ORDER BY c.customer_id
LIMIT 1000; -- 因为是没有发送 Email，这些字段都是 NULL，取出来有啥意义

-- right outer join

SELECT e.email_id,
       e.email_subject,
       e.opened,
       e.clicked,
       e.bounced,
       e.sent_date,
       e.opened_date,
       e.clicked_date,
       c.customer_id,
       c.title,
       c.first_name,
       c.last_name,
       c.suffix,
       c.email
FROM emails AS e
RIGHT OUTER JOIN customers AS c ON e.customer_id = c.customer_id
ORDER BY c.customer_id
LIMIT 1000;


SELECT *
FROM emails AS e
FULL OUTER JOIN customers AS c ON e.customer_id = c.customer_id;