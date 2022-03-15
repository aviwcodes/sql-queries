use database dev_db;
use schema staging;

create or replace table t1 (col1 integer);
create or replace table t2 (col1 integer);
insert into t1 (col1) values (2),(3),(4);
insert into t2 (col1) values (1),(2),(2),(3);

select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 inner join t2
        on t2.col1 = t1.col1
    order by t1_col1,t2_col1;
	

-- Columns in table STUDENTS => STUDENT_ID,	STUDENT_FNAME,	STUDENT_LNAME,	CITY,	STATE,	DEPT_ID,	PROJECT_PARTNER_ID,	GENDER,	DOB,	HOBBIES,	EMAIL
-- Columns in table DEPT=> DEPT_ID,	DEPT_NAME,	HEAD_OF_DEPT
-- Both tables STUDENTS and DEPT are related on DEPT_ID

-- Columns in table TEACHERS => PROF_ID,	PROF_NAME,	DEGREE,	DEPT_ID
-- Column DEPT.HEAD_OF_DEPT is related to TEACHERS.PROF_ID

--Fetch student id, name, department id and deartment name student belongs to

SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name
FROM students s INNER JOIN dept d
ON s.dept_id=d.dept_id;

SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name, HEAD_OF_DEPT,PROF_NAME
FROM students s INNER JOIN dept d
	ON s.dept_id=d.dept_id
INNER JOIN TEACHERS t
	ON d.HEAD_OF_DEPT=t.PROF_ID;
	

SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name, HEAD_OF_DEPT,PROF_NAME
FROM students s INNER JOIN dept d
	ON s.dept_id=d.dept_id
INNER JOIN (select * from TEACHERS) t
	ON d.HEAD_OF_DEPT=t.PROF_ID;
	
	
SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name, HEAD_OF_DEPT,PROF_NAME
FROM students s INNER JOIN dept d
	ON s.dept_id=d.dept_id
INNER JOIN (select * from TEACHERS) t
	ON d.HEAD_OF_DEPT=t.PROF_ID
WHERE    s.dept_id=10;

	
SELECT s1.STUDENT_ID, concat(s1.STUDENT_FNAME, ' ',s1.STUDENT_LNAME) as student_name ,
 s1.PROJECT_PARTNER_ID,concat(s2.STUDENT_FNAME, ' ',s2.STUDENT_LNAME) as partner_name
FROM students s1 INNER JOIN students s2
	ON s1.PROJECT_PARTNER_ID=s2.STUDENT_ID
    ORDER BY s1.STUDENT_ID asc;
    
SELECT * from students
WHERE project_partner_id is NULL;


