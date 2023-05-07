CREATE TABLE
    IF NOT EXISTS coursemaster(
        course_id INTEGER PRIMARY KEY,
        course_name VARCHAR(32) NOT NULL
    );

INSERT INTO CourseMaster VALUES(1, '会计入门');

INSERT INTO CourseMaster VALUES(2, '财务知识');

INSERT INTO CourseMaster VALUES(3, '簿记考试');

INSERT INTO CourseMaster VALUES(4, '税务师');