-- A,B两个字段都是主键，查出在A中但是不在B中的主键

SELECT A.primary_key
FROM A
    LEFT JOIN B ON B.primary_key = A.primary_key -- LEFT JOIN B USING(primary_key)
WHERE B.primary_key IS NULL;

SELECT primary_key
FROM A
WHERE primary_key NOT IN (
        SELECT primary_key
        FROM B
    );