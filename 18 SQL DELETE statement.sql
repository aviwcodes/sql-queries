--create table employee(id, empname, city, deptid, salary)
create table employee(id int, empname varchar(50),city varchar(10),deptid int, salary int);

insert into employee(id,empname,city,deptid,salary)
values(1,  'Ram',    'Pune',       100,		10000),
      (2,  'Jake',   'Mumbai',     200,		15000),
      (3,  'Tom',    'Mumbai',     200, 	16000),
      (4,  'Jerry',  'Hydrabad',   300,		11000),
      (5,  'Kate',   'Mumbai',     300,		15600);

delete from employee
where id=5;
select * from employee;

delete from employee;

select * from employee;

