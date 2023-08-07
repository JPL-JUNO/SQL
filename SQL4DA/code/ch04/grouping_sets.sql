-- Active: 1690980029839@@127.0.0.1@5432@sql4da@public

    (SELECT state,
            NUll as gender,
            COUNT(*)
     FROM customers
     GROUP BY 1,
              2)
UNION ALL
    (SELECT state,
            gender,
            COUNT(*)
     FROM customers
     GROUP BY 1,
              2)
ORDER BY 1,
         2;

-- 有些时候需要对得到的聚合进行合并， UNION ALL 过于繁琐

SELECT state,
       gender,
       COUNT(*)
FROM customers
GROUP BY
GROUPING SETS((state), (state, gender))
ORDER BY 1,
         2;

