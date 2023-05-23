SELECT MOD(10, 4);

SELECT MOD(22.75, 5);

SELECT POW(2, 8);

SELECT
    POW(2, 10) AS KILOBYTE,
    POW(2, 10) AS MEGABYTE,
    POW(2, 30) AS GIGABYTE,
    POW(2, 40) AS TERABYTE;

SELECT CEIL(72.445), FLOOR(72.445);

SELECT CEIL(72.000000001), FLOOR(72.999999999);

SELECT ROUND(72.49999), ROUND(72.5), ROUND(72.50001);

SELECT ROUND(72.0909, 1), ROUND(72.0909, 2), ROUND(72.0909, 3);

SELECT
    TRUNCATE(72.0909, 1),
    TRUNCATE(72.0909, 2),
    TRUNCATE(72.0909, 3);

SELECT ROUND(17, -1), TRUNCATE(17, -1);