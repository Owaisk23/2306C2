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