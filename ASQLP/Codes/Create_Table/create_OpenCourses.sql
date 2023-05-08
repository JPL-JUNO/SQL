CREATE TABLE
    if NOT EXISTS opencourses(
        month INTEGER,
        course_id INTEGER,
        PRIMARY KEY(month, course_id)
    );

INSERT INTO OpenCourses VALUES(201806, 1);

INSERT INTO OpenCourses VALUES(201806, 3);

INSERT INTO OpenCourses VALUES(201806, 4);

INSERT INTO OpenCourses VALUES(201807, 4);

INSERT INTO OpenCourses VALUES(201808, 2);

INSERT INTO OpenCourses VALUES(201808, 4);