-- Video on creating free Snowflake account - https://www.youtube.com/watch?v=QwtEHKSGNjs&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=1
-- Video on creating tables used and loading data - https://www.youtube.com/watch?v=outFgeX6K1Q&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=2

-- use database
use database dev_db;
-- use schema
use schema college_data;

-- get all records from tble students 
select * from students;


-- select student_id, state, city to get details where students lives
select student_id, state, city
from students
order by state, city;


-- get unique, state and cities for students
select distinct state, city
from students
order by state, city;

-- get unique states
select distinct state
from students;



