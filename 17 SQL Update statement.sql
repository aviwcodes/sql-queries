--create database hr
create database if not exists hr;
use hr;

--create table employee(id, empname, city, deptid, salary)
create table employee(id int, empname varchar(50),city varchar(10),deptid int, salary int);

insert into employee(id,empname,city,deptid,salary)
values(1,  'Ram',    'Pune',       100,		10000),
      (2,  'Jake',   'Mumbai',     200,		15000),
      (3,  'Tom',    'Mumbai',     200, 	16000),
      (4,  'Jerry',  'Hydrabad',   300,		11000),
      (5,  'Kate',   'Mumbai',     300,		15600);

--Increase salary of each employee by 5 percent
update employee
set salary= salary + salary * 0.05;

-- Update City of employee with id 5
update employee 
set city='Pune',
    deptid=100 
where id=5;

--See records from the table
select * from employee;

