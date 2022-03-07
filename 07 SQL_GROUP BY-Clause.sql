-- Video on creating free Snowflake account - https://www.youtube.com/watch?v=QwtEHKSGNjs&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=1
-- Video on creating tables used and loading data - https://www.youtube.com/watch?v=outFgeX6K1Q&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=2

-- use database
use database dev_db;
-- use schema
use schema college_data;

-- query to get students count for every departent
select dept_id, count(*)
from students
group by dept_id;


-- query to get students count for every departent
-- with alias
select dept_id, count(*) as no_of_students
from students
group by dept_id;

-- query to get students count for every departent, sort based on number of students in desc order
select dept_id, count(*) as no_of_students
from students
group by dept_id
order by no_of_students desc;

-- query to get students count for specific departents(10,20,30), sort based on number of students in desc order
select dept_id, count(*) as no_of_students
from students
where dept_id in (10,20,30)
group by dept_id
order by no_of_students desc;

-- Finding maximum marks a student have obtained per subject
select subject_id, max(obtained_marks)
from marks
group by subject_id;



