CREATE TABLE IF NOT EXISTS Salaries (
    name VARCHAR(32) PRIMARY KEY,
    salary INTEGER NOT NULL
);

INSERT INTO Salaries VALUES('相田', 300000);
INSERT INTO Salaries VALUES('神崎', 270000);
INSERT INTO Salaries VALUES('木村', 220000);
INSERT INTO Salaries VALUES('齐藤', 290000);

SET SQL_SAFE_UPDATES = 0;

-- 条件1 
UPDATE salaries 
SET salary = salary * 0.9
WHERE salary >= 300000;
-- 条件2 
UPDATE Salaries
SET salary = salary * 1.2
WHERE salary >= 250000 AND salary < 280000;

UPDATE Salaries 
SET 
    salary = CASE
        WHEN salary >= 300000 THEN salary * .9
        WHEN salary >= 250000 AND salary < 280000 THEN salary * 1.2
        ELSE salary END;
        
-- 剩余的WHEN子句被忽略的写法示例
CASE WHEN COL_1 IN {'A', 'B'} THEN 'FIRSTT'
WHEN COL_1 IN {'A'} THEN 'SECOND'
     ELSE 'OTHERS' END;