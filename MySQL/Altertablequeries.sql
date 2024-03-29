create database softwarehouse;

use softwarehouse;

create table employee(
	emp_id int,
    emp_fname varchar(15),
    emp_lname varchar(15),
    emp_hourlypay decimal(5,2),
    emp_hiredate date
);

select * from employee;

insert into employee 
values (1, "Owais", "Khan", 99.2, "2022-11-23");

drop table employee;

truncate table employee;

RENAME table employee TO workers;

rename table workers to employee;

ALTER TABLE employee
ADD email varchar(30);

select * from employee;

ALTER TABLE employee
RENAME column phone_no to emp_email;

ALTER TABLE employee
modify column emp_email varchar(100);

ALTER TABLE employee
modify column emp_email varchar(100)
after emp_lname;

select * from employee;

ALTER TABLE employee
DROP column emp_email;

INSERT INTO employee 
VALUES (1, "Ammad", "Ali", 99.23, "2017-07-12");

select * from employee;

INSERT INTO employee 
VALUES (2, "Basim", "Ali", 76.13, "2017-07-12"),
		(3, "Sana", "Khan", 89.21, "2019-11-22"),
        (4, "Hafeez", "Ahmed", 53.23, "2018-07-13"),
        (5, "Syed", "Ali", 65.53, "2016-12-12"),
        (6, "Hanzala", "Kashif", 49.23, "2023-05-25"),
        (7, "Muhammad", "Rayyan", 32.23, "2021-11-22");
        
INSERT INTO employee(emp_id, emp_fname, emp_lname)
values (8, "Faizan", "Ali");

select * from employee
where emp_id = 3;

select * from employee
where emp_hourlypay = 65.53;

select * from employee
where emp_hiredate >= "2019-11-22";

select * from employee
where emp_hiredate <= "2019-11-22";

select * from employee
where emp_hourlypay > 70;

select * from employee
where emp_fname = "Syed";

select * from employee
where emp_lname = "Ali";

select * from employee
where emp_hourlypay IS NULL;

select * from employee
where emp_hourlypay IS NOT NULL;

select * from employee
where emp_hiredate IS NOT NULL;

select * from employee
where emp_hiredate IS NULL;

select * from employee
where emp_id = 8;
-- update

update employee
SET emp_hourlypay = 42.45,
emp_hiredate = "2022-06-21"
where emp_id = 8;

select * from employee;

DELETE FROM employee
where emp_id = 8;


set autocommit = off;

DELETE FROM employee
where emp_id = 6;

commit;

rollback;

update employee
set emp_hourlypay = 10.23;

select emp_fname, emp_hourlypay from employee;