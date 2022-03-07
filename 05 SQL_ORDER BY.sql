-- Video on creating free Snowflake account - https://www.youtube.com/watch?v=QwtEHKSGNjs&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=1
-- Video on creating tables used and loading data - https://www.youtube.com/watch?v=outFgeX6K1Q&list=PLww_BjHS1NE0RhAruUd0Kh-ySn-6bv8G7&index=2

-- get all details for all studnets sorted in ascending order of state
select * from dev_db.college_data.students
order by state;

-- get all details for all studnets sorted in descending order of state
select * from dev_db.college_data.students
order by state desc;

-- get all details for all studnets sorted in descending order of state and ascending order of city
select * from dev_db.college_data.students
order by state desc, city asc;


-- get unique state and city for all studnets sorted in descending order of state and ascending order of city
select state, city from dev_db.college_data.students
order by state desc, city asc;


