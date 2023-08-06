-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

SELECT state,
       COUNT(*)
FROM customers
GROUP BY state;


SELECT to_char(date_added, 'YYYY'),
       COUNT(*)
FROM customers
GROUP BY to_char(date_added, 'YYYY') -- GROUP BY 1
ORDER BY 1;


SELECT state,
       COUNT(*)
FROM customers
GROUP BY state
ORDER BY 2; -- ORDER BY COUNT(*)


SELECT state,
       COUNT(*)
FROM customers
WHERE gender = 'M'
GROUP BY 1
ORDER BY 1;


SELECT state,
       gender,
       COUNT(*)
FROM customers
GROUP BY state,
         gender
ORDER BY state,
         gender;