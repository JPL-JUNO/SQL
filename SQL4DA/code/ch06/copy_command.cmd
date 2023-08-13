psql -h localhost -p 5432 -d sql4da -U postgres

COPY
    (SELECT customer_id,
            first_name,
            last_name
    FROM customers
    LIMIT 5) TO STDOUT WITH CSV HEADER;

@REM 不能使用多行命令
\COPY (SELECT * FROM customers LIMIT 5) TO 'D:\DS_Works\SQL\SQL4DA\code\ch06\back_slash_copy_file.csv' WITH CSV HEADER;