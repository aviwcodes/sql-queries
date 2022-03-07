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


-- Find number of students per dept with number of students more than 15.
select dept_id, count(*)
from students
group by dept_id
having count(*)>15;

-- Finding maximum marks students have obtained per subject, if the max marks are more than 90. 
select subject_id, max(obtained_marks)
from marks
group by subject_id
having max(obtained_marks)>90;

-- same as above, using alias 
select subject_id, max(obtained_marks) as max_of_obtained_marks
from marks
group by subject_id
having max_of_obtained_marks>90;



