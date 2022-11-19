 -- create empty table
 create or replace table active_employee(id int, name varchar(20), 
 city varchar(10), gender char(1), isactive boolean,
 created_on date,updated_on date);
 
 --create empty table 
 create or replace table employee_with_changes as 
    select id,name,city,gender,isactive from active_employee;
 
 -- insert 3 records
 insert into active_employee(id, name, city, gender, isactive,created_on, updated_on) 
 values(10 , 'Ram'    , 'Pune'   , 'M',	1,	'2022-02-07', NULL), 
       (11 , 'Sudar'  , 'Mumbai' , 'M',	1,	'2020-02-01', NULL),
       (12 , 'Trisha' , 'Mumbai' , 'F',	1,	'2015-09-30', NULL);
 
 -- insert 3 records
 insert into employee_with_changes(id, name, city, gender, isactive) 
 values(10 , 'Ram'    , 'Pune',    'M'     ,1), 
       (11 , 'Sudar'  , 'Nagpur',  'M'     ,1),
       (12 , 'Trisha' , 'Mumbai' , 'F'	   ,0),
       (13 , 'Advika' , 'Mumbai',  'F'     ,1);
       
select * from active_employee;       
select * from employee_with_changes;    

--target table active_employee
--source table employee_with_changes

MERGE INTO active_employee AS t 
    USING employee_with_changes AS s
    -- Condition to match
    ON (t.id = s.id)
    --If its new record, insert in target
    WHEN NOT MATCHED
        THEN INSERT (id, name, city, gender, isactive,created_on)         
            VALUES (s.id, s.name, s.city, s.gender, s.isactive,CURRENT_DATE())
    --  If its existing record, check if needs to be updated
    WHEN MATCHED AND t.city != s.city
        THEN UPDATE
            -- Update necessary columns
            SET t.city = s.city,
                t.updated_on = CURRENT_DATE()
    -- if its existing record, check if needs to be deleted
    WHEN MATCHED AND s.isactive = 0
        -- Delete record
        THEN DELETE;
