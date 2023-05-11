-- Active: 1683725252949@@127.0.0.1@3306@asqlp

/*
 @Description: 自连接
 @Author(s): Stephen CUI
 @LastEditor(s): Stephen CUI
 @CreatedTime: 2023-05-11 20:32:51
 */

SELECT P1.NAME, P2.NAME
FROM PRODUCT AS P1
    INNER JOIN PRODUCT AS P2 ON P1.NAME >= P2.NAME
DROP TABLE PRODUCTS;

CREATE TABLE
    PRODUCTS(
        NAME VARCHAR(16) NOT NULL,
        PRICE INTEGER NOT NULL
    );

INSERT INTO Products VALUES('苹果', 50);

INSERT INTO Products VALUES('橘子', 100);

INSERT INTO Products VALUES('橘子', 100);

INSERT INTO Products VALUES('橘子', 100);

INSERT INTO Products VALUES('香蕉', 80);

-- 按照价格和名称计算row_number() ，如果这两个字段相同，那么就会导致row_number的数值大于1，删除大于1的

CREATE TABLE
    PRODUCTS_NO_REDUNDANT AS
SELECT
    ROW_NUMBER() OVER (
        PARTITION BY NAME,
        PRICE
        ORDER BY
            NAME
    ) AS ROW_NUM,
    NAME,
    PRICE
FROM PRODUCTS;

DELETE FROM PRODUCTS_NO_REDUNDANT WHERE ROW_NUM > 1;