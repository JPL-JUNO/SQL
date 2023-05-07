CREATE TABLE
    if NOT EXISTS Greatests (
        key_value CHAR(1) PRIMARY KEY,
        x INTEGER NOT NULL,
        y INTEGER NOT NULL,
        z INTEGER NOT NULL
    );

INSERT INTO Greatests VALUES('A', 1, 2, 3);

INSERT INTO Greatests VALUES('B', 5, 5, 2);

INSERT INTO Greatests VALUES('C', 4, 7, 1);

INSERT INTO Greatests VALUES('D', 3, 3, 8);

SELECT
    key_value,
    CASE
        WHEN x < y THEN y
        ELSE x
    END AS greatest
FROM greatests;

SELECT
    key_value,
    CASE
        WHEN CASE
            WHEN x < y THEN y
            ELSE x
        END < z THEN z
        ELSE CASE
            WHEN x < y THEN y
            ELSE x
        END
    END AS greatest
FROM greatests;

SELECT key_value, MAX(col)
FROM (
        SELECT
            key_value,
            x AS col
        FROM greatests
        UNION ALL
        SELECT
            key_value,
            y AS col
        FROM greatests
        UNION ALL
        SELECT
            key_value,
            z AS col
        FROM greatests
    ) AS tmp
GROUP BY key_value;

-- MySQL 与 Oracle 适用

SELECT
    key_value,
    GREATEST(GREATEST(x, y), z) AS greatest
FROM greatests;

SELECT
    sex AS '性别',
    SUM(population) AS '全国',
    SUM(
        CASE
            WHEN pref_name = '德岛' THEN population
            ELSE 0
        END
    ) AS '德岛',
    SUM(
        CASE
            WHEN pref_name = '香川' THEN population
            ELSE 0
        END
    ) AS '香川',
    SUM(
        CASE
            WHEN pref_name = '爱媛' THEN population
            ELSE 0
        END
    ) AS '爱媛',
    SUM(
        CASE
            WHEN pref_name = '高知' THEN population
            ELSE 0
        END
    ) AS '高知',
    SUM(
        CASE
            WHEN pref_name IN ('德岛', '香川', '爱媛', '高知') THEN population
            ELSE 0
        END
    ) AS '再揭'
FROM poptbl2
GROUP BY sex;

-- 指定排序的方式

SELECT key_value
FROM greatests
ORDER BY
    CASE key_value
        WHEN 'B' THEN 1
        WHEN 'A' THEN 2
        WHEN 'D' THEN 3
        WHEN 'C' THEN 4
        ELSE NULL
    END;