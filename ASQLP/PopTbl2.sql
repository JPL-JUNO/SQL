USE ASQLT;
CREATE TABLE IF NOT EXISTS poptbl2 (
    pref_name VARCHAR(32),
    sex CHAR(1) NOT NULL,
    population INTEGER NOT NULL,
    PRIMARY KEY (pref_name , sex)
);

INSERT INTO PopTbl2 VALUES('德岛', '1',	60 );
INSERT INTO PopTbl2 VALUES('德岛', '2',	40 );
INSERT INTO PopTbl2 VALUES('香川', '1',	100);
INSERT INTO PopTbl2 VALUES('香川', '2',	100);
INSERT INTO PopTbl2 VALUES('爱媛', '1',	100);
INSERT INTO PopTbl2 VALUES('爱媛', '2',	50 );
INSERT INTO PopTbl2 VALUES('高知', '1',	100);
INSERT INTO PopTbl2 VALUES('高知', '2',	100);
INSERT INTO PopTbl2 VALUES('福冈', '1',	100);
INSERT INTO PopTbl2 VALUES('福冈', '2',	200);
INSERT INTO PopTbl2 VALUES('佐贺', '1',	20 );
INSERT INTO PopTbl2 VALUES('佐贺', '2',	80 );
INSERT INTO PopTbl2 VALUES('长崎', '1',	125);
INSERT INTO PopTbl2 VALUES('长崎', '2',	125);
INSERT INTO PopTbl2 VALUES('东京', '1',	250);
INSERT INTO PopTbl2 VALUES('东京', '2',	150);

SELECT 
    *
FROM
    (SELECT 
        pref_name, SUM(population) AS '男'
    FROM
        poptbl2
    WHERE
        sex = '1'
    GROUP BY pref_name) AS a
        JOIN
    (SELECT 
        pref_name, SUM(population) AS '女'
    FROM
        poptbl2
    WHERE
        sex = '2'
    GROUP BY pref_name) AS b USING (pref_name);
    
SELECT
    pref_name,
    SUM(CASE WHEN sex = '1' THEN population ELSE 0 END) AS cnt_m,
    SUM(CASE WHEN sex = '2' THEN population ELSE 0 END) AS cnt_f
FROM poptbl2
GROUP BY pref_name;
