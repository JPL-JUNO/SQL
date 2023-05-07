SELECT
    CASE pref_name
        WHEN '德岛' THEN '四国'
        WHEN '香川' THEN '四国'
        WHEN '爱媛' THEN '四国'
        WHEN '高知' THEN '四国'
        WHEN '福冈' THEN '九州'
        WHEN '佐贺' THEN '九州'
        WHEN '长崎' THEN '九州'
        ELSE '其他'
    END AS district,
    SUM(population)
FROM poptbl
GROUP BY
    CASE pref_name
        WHEN '德岛' THEN '四国'
        WHEN '香川' THEN '四国'
        WHEN '爱媛' THEN '四国'
        WHEN '高知' THEN '四国'
        WHEN '福冈' THEN '九州'
        WHEN '佐贺' THEN '九州'
        WHEN '长崎' THEN '九州'
        ELSE '其他'
    END;

SELECT
    CASE
        WHEN population < 100 THEN 'class 1'
        WHEN population < 200 THEN 'class 2'
        WHEN population < 300 THEN 'class 3'
        WHEN population >= 300 THEN 'class 4'
        ELSE NULL
    END as pop_class,
    COUNT(*)
FROM poptbl
GROUP BY
    CASE
        WHEN population < 100 THEN 'class 1'
        when population < 200 THEN 'class 2'
        WHEN population < 300 THEN 'class 3'
        WHEN population >= 300 THEN 'class 4'
        ELSE NULL
    END;

-- PostgreSQL、MySQL支持这种语法，因为这些数据库在执行查询语句时，会先对SELECT子句中的列表进行扫描

SELECT
    CASE pref_name
        WHEN '德岛' THEN '四国'
        WHEN '香川' THEN '四国'
        WHEN '爱媛' THEN '四国'
        WHEN '高知' THEN '四国'
        WHEN '福冈' THEN '九州'
        WHEN '佐贺' THEN '九州'
        WHEN '长崎' THEN '九州'
        ELSE '其他'
    END AS district,
    SUM(population)
FROM poptbl
GROUP BY district;

SELECT pref_name, population AS 'male' FROM poptbl2 WHERE sex = '1';

SELECT
    pref_name,
    population AS 'female'
FROM poptbl2
WHERE sex = '2';

SELECT
    pref_name,
    SUM(
        CASE
            WHEN sex = '1' THEN population
            ELSE 0
        END
    ) as cnt_m,
    SUM(
        CASE
            WHEN sex = '2' THEN population
            ELSE 0
        END
    ) as cnt_fm
FROM poptbl2
GROUP BY pref_name;

SELECT
    pref_name,
    CASE
        WHEN sex = '1' THEN population
        ELSE 0
    END AS cnt_m,
    CASE
        WHEN sex = '2' THEN population
        ELSE 0
    END AS cnt_fm
FROM poptbl2;

UPDATE sometable SET p_key = 'd' WHERE p_key = 'a';

UPDATE sometable SET p_key = 'a' WHERE p_key = 'b';

UPDATE sometable SET p_key = 'b' WHERE p_key = 'd';

SELECT * FROM sometable;

-- 如果在 PostgreSQL 和 MySQL 数据

-- 库执行这条 SQL 语句，会因主键

-- 重复而出现错误。但是，约束的

-- 检查本来就发生在更新完成后，

-- 因此更新途中主键一时出现重复

-- 也没有问题。事实上，在 Oracle、

-- DB2、SQL Server数据库执行都

-- 没有问题。

UPDATE sometable
SET
    p_key = CASE
        WHEN p_key = 'a' THEN 'b'
        WHEN p_key = 'b' THEN 'a'
        ELSE p_key
    END
WHERE p_key IN ('a', 'b');

-- 使用 in 谓词

SELECT
    course_name,
    CASE
        WHEN course_id IN (
            SELECT course_id
            FROM opencourses
            WHERE
                month = 201806
        ) THEN 'O'
        ELSE 'X'
    END AS '六月',
    CASE
        WHEN course_id IN (
            SELECT course_id
            from opencourses
            WHERE
                month = 201807
        ) THEN 'O'
        ELSE 'X'
    END AS '七月',
    CASE
        WHEN course_id IN (
            SELECT course_id
            from opencourses
            WHERE
                month = 201808
        ) THEN 'O'
        ELSE 'X'
    END AS '八月'
FROM coursemaster;

-- 使用 exists 谓词

SELECT
    CM.course_name,
    CASE
        WHEN EXISTS (
            SELECT course_id
            FROM
                opencourses AS OC
            WHERE
                month = 201806
                AND OC.course_id = CM.course_id
        ) THEN 'O'
        ELSE 'X'
    END AS '六月',
    CASE
        WHEN EXISTS (
            SELECT course_id
            FROM
                opencourses AS OC
            WHERE
                month = 201807
                AND OC.course_id = CM.course_id
        ) THEN 'O'
        ELSE 'X'
    END AS '七月',
    CASE
        WHEN EXISTS (
            SELECT course_id
            FROM
                opencourses AS OC
            WHERE
                month = 201808
                AND OC.course_id = CM.course_id
        ) THEN 'O'
        ELSE 'X'
    END AS '八月'
FROM coursemaster AS CM;

SELECT
    std_id,
    MAX(club_id) AS main_club
FROM studentclub
GROUP BY std_id
HAVING COUNT(*) = 1;

SELECT
    std_id,
    club_id AS main_club
FROM studentclub
WHERE main_club_flg = 'Y';

SELECT
    std_id,
    CASE
        WHEN count(*) = 1 THEN MAX(club_id)
        ELSE MAX(
            CASE
                WHEN main_club_flg = 'Y' THEN club_id
                ELSE NULL
            END
        )
    END AS 'main_club'
FROM studentclub
GROUP BY std_id;