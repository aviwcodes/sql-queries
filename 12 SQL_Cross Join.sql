create table if not exists t1 (col1 integer);
create table if not exists t2 (col1 integer);
insert into t1 (col1) values (2),(3),(4);
insert into t2 (col1) values (1),(2),(2),(3);

select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 cross join t2
    order by t1_col1,t2_col1;


create table IF NOT EXISTS employee(id int, empname varchar(50),city varchar(10),deptid int);
create TABLE IF NOT EXISTS department(deptid int, deptname varchar(50));

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

select id, empname,e.deptid, deptname
from employee e cross join department d
order by id,e.deptid;

select id, empname,e.deptid, deptname
from employee e cross join department d
WHERE e.deptid=d.deptid
order by id,e.deptid;

