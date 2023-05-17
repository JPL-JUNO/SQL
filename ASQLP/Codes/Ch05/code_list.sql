-- Active: 1683725252949@@127.0.0.1@3306@asqlp

SELECT DISTINCT `PERSON` FROM meetings;

SELECT
    DISTINCT M1.MEETING,
    M2.PERSON
FROM meetings AS M1
    CROSS JOIN meetings AS M2;

SELECT
    DISTINCT M1.MEETING,
    M2.PERSON
FROM meetings AS M1
    CROSS JOIN meetings AS M2
WHERE NOT EXISTS (
        SELECT *
        FROM MEETINGS AS M3
        WHERE
            M1.`MEETING` = M3.MEETING
            AND M2.`PERSON` = M3.PERSON
    );

-- MySQL不能执行

/*
 SELECT
 DISTINCT M1.MEETING,
 M2.PERSON
 FROM
 meetings AS M1,
 MEETINGS AS M2
 EXCEPT
 SELECT MEETING, PERSON
 FROM MEETINGS;
 */

SELECT DISTINCT STUDENT_ID
FROM testscores AS TS1
WHERE NOT EXISTS(
        SELECT *
        FROM testscores AS TS2
        WHERE
            TS1.`STUDENT_ID` = TS2.`STUDENT_ID`
            AND TS2.`SCORE` < 50
    );

SELECT `STUDENT_ID`
FROM testscores AS TS1
WHERE
    `SUBJECT` IN ('数学', '语文')
    AND NOT EXISTS(
        SELECT *
        FROM testscores AS TS2
        WHERE
            TS1.`STUDENT_ID` = TS2.`STUDENT_ID`
            AND 1 = CASE
                WHEN `SUBJECT` = '数学'
                AND `SCORE` < 80 THEN 1
                WHEN `SUBJECT` = '语文'
                AND `SCORE` < 50 THEN 1
                ELSE 0
            END
    )
GROUP BY `STUDENT_ID`
HAVING COUNT(*) = 2;

SELECT `PROJECT_ID`
FROM projects
GROUP BY `PROJECT_ID`
HAVING
    COUNT(*) = SUM(
        CASE
            WHEN `STEP_NBR` <= 1
            AND `STATUS` = '完成' THEN 1
            WHEN `STEP_NBR` > 1
            AND `STATUS` = '等待' THEN 1
            ELSE 0
        END
    );

SELECT *
FROM projects AS P1
WHERE NOT EXISTS(
        SELECT `STATUS`
        FROM projects AS P2
        WHERE
            P1.`PROJECT_ID` = P2.`PROJECT_ID`
            AND `STATUS` <> CASE
                WHEN `STEP_NBR` <= 1 THEN '完成'
                ELSE '等待'
            END
    );