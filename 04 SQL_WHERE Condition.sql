-- Video on creating free Snowflake account - https://www.youtube.com/watch?v=QwtEHKSGNjs&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=1
-- Video on creating tables used and loading data - https://www.youtube.com/watch?v=outFgeX6K1Q&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=2

-- Equals Operator
select student_id,student_fname as first_name, student_lname as last_name, dept_id
from dev_db.college_data.students
where dept_id = 20;

select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where city='Pune';

-- Greater than opperator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where student_id > 70;

-- Less Than operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where student_id < 5;

-- Less Than Equals Operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where student_id <= 5;

--Greater than equals operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where student_id >= 70;

--Not equals to operator
select * from dev_db.college_data.dept
where dept_id <> 10;

-- between operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where student_id between 10 and 15;

--like operator
select distinct city
from dev_db.college_data.students
where city like 'P%';

--in operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where state in ('MH','AP');

-- or operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where state ='MH' or state ='AP';

-- and operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where state ='MH' and city='Pune';

--NOT Operator
select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where state not in ('MH','AP','GJ');

select student_id,student_fname as first_name, student_lname as last_name, city
from dev_db.college_data.students
where not state ='MH';

select distinct city
from dev_db.college_data.students
where  city not like 'P%';





