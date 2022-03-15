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

use database dev_db;
use schema college_data;

--Joining 2 tables
--Fetch student id, name, department id and deartment name student belongs to
SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name
FROM students s INNER JOIN dept d
ON s.dept_id=d.dept_id;

--Joining 3 tables
SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name,prof_id, prof_name as HOD_name
FROM students s INNER JOIN dept d
ON s.dept_id=d.dept_id
INNER JOIN teachers t
On d.head_of_dept=t.prof_id;

-- Join table with result of SELECT query

SELECT s.student_id, s.student_fname as first_name, s.student_lname as last_name,d.dept_id,d.dept_name,prof_id, prof_name as HOD_name
FROM students s INNER JOIN (select * from dept where dept_id=10) d
ON s.dept_id=d.dept_id
INNER JOIN teachers t
On d.head_of_dept=t.prof_id;

--SELF JOIN
select s.STUDENT_ID, concat(s.STUDENT_FNAME,' ',s.STUDENT_LNAME) as student_name, s.PROJECT_PARTNER_ID,
concat(p.STUDENT_FNAME,' ',p.STUDENT_LNAME) as partner_name
from students s inner join students p
on s.PROJECT_PARTNER_ID=p.STUDENT_ID
order by s.STUDENT_ID;

    
SELECT * from students
WHERE project_partner_id is NULL;
