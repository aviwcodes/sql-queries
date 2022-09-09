--create database hr
create database if not exists hr;
use hr;

--create table employee(id, empname, city, deptid)
create table employee(id int, empname varchar(50),city varchar(10),deptid int);

--insert a record
insert into employee(id,empname,city,deptid)
values(1,  'Ram',    'Pune',       100);

--insert multiple records
insert into employee(id,empname,city,deptid)
values(2,  'Jake',   'Mumbai',     200),
      (3,  'Tom',    'Mumbai',     200),
      (4,  'Jerry',  'Hydrabad',   300);

-- inser a record without specifying column names.
insert into employee
values(5,  'Kate',   'Mumbai',     300);

--inserting details in specific columns
insert into employee(id,empname,city)
values(6,  'Ted',    'Mumbai'),
      (7,  'Josh',  'Hydrabad');
      

--create table employee1 and insert records;            
create table employee1(id int, empname varchar(50),city varchar(10),deptid int);

insert into employee1(id,empname,city,deptid)
values(10,  'Mohini',    'Sri Nagar',       200),
(11,  'Suresh',    'Sai Nagar',       300);

--create table employee2 and insert records;            
create table employee2(id int, empname varchar(50),city varchar(10),deptid int);

insert into employee2(id,empname,city,deptid)
values(20,  'Parth',    'Kolkata',       200),
(21,  'Ishita',    'Bhopal',       300),
(22,  'Rishima',    'Kolkata',       200);

--insert all records from employee1 into table employee 
insert into employee
select * from employee1;

--insert specific records from employee2 into table employee only into specific columns
insert into employee(id,empname,deptid)
select id,empname,deptid from employee2 
where deptid=200;

