
use database dev_db;
use schema staging;

create database if not exists dev_db;
create schema if not exists staging;

create table if not exists t1 (col1 integer);
create table if not exists t2 (col1 integer);
insert into t1 (col1) values (2),(3),(4);
insert into t2 (col1) values (1),(2),(2),(3);

select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 natural inner join t2
    order by t1_col1,t2_col1;


select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 natural left join t2
    order by t1_col1,t2_col1;

select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 natural right join t2
    order by t1_col1,t2_col1;


select t1.col1 as t1_col1, t2.col1 as t2_col1
    from t1 natural full join t2
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

select *
from employee natural join department
order by id;

select *
from employee natural inner join department
order by id;

select *
from employee natural left join department
order by id;

select *
from employee natural right join department
order by id;

select *
from employee natural full join department
order by id;

select *
from employee full outer join department
on employee.deptid=department.deptid
order by id;

create or replace table employee(id int, empname varchar(50),city varchar(10),deptid int);
create or replace table department(deptid int, deptname varchar(50), city  varchar(10));

insert into employee(id,empname,city,deptid)
values(10,  'Ram',    'Pune',       100),
      (11,  'Jake',   'Mumbai',     200),
      (12,  'Tom',    'Mumbai',     200),
      (13,  'Jerry',  'Hydrabad',   300);


insert into department(deptid,deptname,city)
values(100, 'Marketing','Pune'),
      (200, 'HR','Pune'),
      (400, 'Sales','Mumbai'),
      (500, 'Purchase','Mumbai');


select *
from employee e inner join department d
on e.deptid=d.deptid and e.city=d.city
order by id;


select *
from employee natural inner join department
order by id;







