-- Video on creating free Snowflake account - https://www.youtube.com/watch?v=QwtEHKSGNjs&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=1
-- Video on creating tables used and loading data - https://www.youtube.com/watch?v=outFgeX6K1Q&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=2

--Get all data from table students
select * from dev_db.college_data.students;


--get student_id, city and state for all students
select student_id,city, state
from dev_db.college_data.students;

-- alias
select student_fname as first_name, student_lname as last_name
from dev_db.college_data.students;

--index based
select $1, $2, $3 from dev_db.college_data.students;

--index based with alias
select $1 as id, $2 as firstname, $3 as lastname 
from dev_db.college_data.students;

--get hobbies and email for students
select student_id,hobbies,email from dev_db.college_data.students;

--get sperate hobbies
select student_id,hobbies,hobbies[0] first_hobby,hobbies[1] second_hobby from dev_db.college_data.students;

--get seperate mail ids
select student_id,email,email['primary'] primary_mail,email['secondary'] secondary_mail from dev_db.college_data.students;
