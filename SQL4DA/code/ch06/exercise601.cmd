CREATE TEMP VIEW top_cities AS
    (SELECT city,
            count(*) AS number_of_customers
     FROM customers
     WHERE city IS NOT NULL
     GROUP BY 1
     ORDER BY 2 DESC
     LIMIT 10);

\COPY (SELECT * FROM top_cities) TO 'D:\DS_Works\SQL\SQL4DA\code\ch06\top_cities.csv' WITH CSV HEADER DELIMITER ',';

DROP VIEW top_cities;