use database dev_db;
use schema staging;

create or replace table t1 (col1 integer);
create or replace table t2 (col1 integer);
insert into t1 (col1) values (2),(3),(4);
insert into t2 (col1) values (1),(2),(2),(3);

select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 left outer join t2
        on t2.col1 = t1.col1
    order by t1_col1,t2_col1;


select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 right outer join t2
        on t2.col1 = t1.col1
    order by t1_col1,t2_col1;


select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 full outer join t2
        on t2.col1 = t1.col1
    order by t1_col1,t2_col1;


create or replace table employee(id int, empname varchar(50),city varchar(10),deptid int);
create or replace table department(deptid int, deptname varchar(50));

insert into employee(id,empname,city,deptid)
values(10,  'Ram',    'Pune',       100),
      (11,  'Jake',   'Mumbai',     200),
      (12,  'Tom',    'Mumbai',     200),
      (13,  'Jerry',  'Hydrabad',   300);


insert into department(deptid,deptname)
values(100, 'Marketing'),
      (200, 'HR'),
      (400, 'Sales'),
      (500, 'Purchase');

select * from employee;
select * from department;

--Left outer join
select id, empname,e.deptid, deptname
from employee e left outer join department d
using (deptid);

--Right outer join
select id, empname,d.deptid, deptname
from employee e right outer join department d
using (deptid);


--full outer join 
select id, empname,e.deptid as E_deptid,d.deptid as d_deptid, deptname
from employee e full outer join department d
using (deptid);

select d.deptid,deptname, count(e.deptid) as Count_of_emps
from employee e right join department d
using(deptid)
group by d.deptid,deptname;
