use database dev_db;
use schema staging;

create or replace table emp1(id int , name varchar(10), city varchar(10));
create or replace table emp2(empid int , empname varchar(10),empcity varchar(10));

insert into emp1(id,name,city)
values(10,  'Ram',    'Pune'),
      (11,  'Jake',   'Mumbai'),
      (12,  'Tom',    'Mumbai'),
      (13,  'Jerry',  'Hydrabad'),
      (10,  'Ram',    'Pune');
      
insert into emp2(empid,empname,empcity)
values(10,  'Ram',    'Pune'),
      (14,  'Peter',   'Chennai'),
      (15,  'Hope',    'Mumbai'),
      (15,  'Hope',    'Mumbai');      

-- union
select * from emp1
union
select * from emp2;

--union all
select * from emp1
union all
select * from emp2;

--intersect
select * from emp1
intersect
select * from emp2;

--minus
select * from emp1
minus
select * from emp2;

--except
select * from emp1
except
select * from emp2;

