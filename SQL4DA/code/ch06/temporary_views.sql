-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public
-- you can also add a TEMP keyword to instruct SQL to remove the
-- view automatically once you are logged out of the server.
-- 这样创建的 VIEW 不会出现在 public 下的 Views 中

CREATE TEMP VIEW customers_samples AS
    (SELECT *
     FROM customers
     LIMIT 12);


SELECT COUNT(1)
FROM customers_samples;


DROP VIEW customers_samples;