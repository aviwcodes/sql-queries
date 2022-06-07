use database dev_db;
use schema staging;

create or replace TABLE EMP1 (   ID    VARCHAR(3),   NAME    VARCHAR(10),   CITY    VARCHAR(10),   MARRIED VARCHAR(1),   DEPTNAME VARCHAR(10)  );
create or replace TABLE EMP2 (   EMPID NUMBER(38,0), EMPNAME VARCHAR(10),   EMPCITY VARCHAR(10),   ISMARRIED BOOLEAN  );

insert into emp1(id,name,city,married,deptname)
values(10,  'Ram',    'Pune',	  'Y', 'Admin'),
      (11,  'Jake',   'Mumbai',	  'Y', 'Sales'),
      (12,  'Tom',    'Mumbai',   'N', 'Sales'),
      (13,  'Jerry',  'Hydrabad', 'N', 'HR'),
      (10,  'Ram',    'Pune',     'Y', 'Admin');
      
insert into emp2(empid,empname,empcity,ismarried)
values(10,  'Ram',     'Pune',	 1),
      (14,  'Peter',   'Chennai',0),
      (15,  'Hope',    'Mumbai', 1),
      (15,  'Hope',    'Mumbai', 1);   

--id,name,city
select id,name,city from emp1
union
select empid,empname,empcity from emp2;

--id,name,city, married?
select id,name,city,MARRIED from emp1
union
select empid,empname,empcity,ismarried from emp2;

--explicitly casting MARRIED and ismarried to varchar(5)
select id,name,city,cast(MARRIED as varchar(5)) maritalstatus from emp1
union
select empid,empname,empcity,cast(ismarried as varchar(5)) maritalstatus  from emp2;

--using iff to get correct result
select id,name,city,MARRIED from emp1
union
select empid,empname,empcity,iff (ismarried=1,'Y','N') from emp2;

-- Get id,name,city,MARRIED,DEPTNAME
select id,name,city,MARRIED,DEPTNAME from emp1
union
select empid,empname,empcity,iff (ismarried=1,'Y','N'), NULL as DEPTNAME from emp2;

--get all details from both tables
select distinct  t.id ,name as name,city ,married , deptname 
from emp1
natural right join
(select id,name,city,MARRIED from emp1
union
select empid,empname,empcity,iff (ismarried=1,'Y','N') from emp2) t;

select distinct  t.id ,name as name,city ,married , deptname 
from emp1
natural right join
(select cast(id as varchar(10)) as id,name,city,MARRIED from emp1
union
select cast(empid as varchar(10)) as id,empname,empcity,iff (ismarried=1,'Y','N') from emp2) t;


