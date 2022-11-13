CREATE TABLE CourseMaster (
    course_id INTEGER PRIMARY KEY,
    course_name VARCHAR(32) NOT NULL
);

INSERT INTO CourseMaster VALUES(1, '会计入门');
INSERT INTO CourseMaster VALUES(2, '财务知识');
INSERT INTO CourseMaster VALUES(3, '簿记考试');
INSERT INTO CourseMaster VALUES(4, '税务师');

CREATE TABLE OpenCourses (
    month INTEGER,
    course_id INTEGER,
    PRIMARY KEY (month , course_id)
);

INSERT INTO OpenCourses VALUES(200706, 1);
INSERT INTO OpenCourses VALUES(200706, 3);
INSERT INTO OpenCourses VALUES(200706, 4);
INSERT INTO OpenCourses VALUES(200707, 4);
INSERT INTO OpenCourses VALUES(200708, 2);
INSERT INTO OpenCourses VALUES(200708, 4);

select * from coursemaster;

select * from opencourses;

select course_name, 
	case when course_id in 
	(select course_id from opencourses where month=200706) 
    then 'yes' else 'no' end as 'June',
    case when course_id in 
	(select course_id from opencourses where month=200707) 
    then 'yes' else 'no' end 'July',
    case when course_id in 
	(select course_id from opencourses where month=200708) 
    then 'yes' else 'no' end 'August'
    from coursemaster;
    
select cm.course_name,
	case when exists
		(select course_id from opencourses oc
         where month=200706 and oc.course_id = cm.course_id)
		then 'Yes' else 'No' end 'June',
	case when exists
		(select course_id from opencourses oc
         where month=200707 and oc.course_id = cm.course_id)
		then 'Yes' else 'No' end 'July',
	case when exists
		(select course_id from opencourses oc
         where month=200708 and oc.course_id = cm.course_id)
		then 'Yes' else 'No' end 'August'
	from coursemaster cm;


    