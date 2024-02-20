-- CRUD in MYSQL
-- create database command 
create database 2306C2;

CREATE DataBase hosp;
-- DELETE dB command
Drop DATABASE HOSP;
-- use db command 
use 2306C2;

create table students(
	stdId INT,
    stdName varchar(25),
    stdAge int
);

INSERT INTO students(stdId, stdName, stdAge) 
VALUES (2, "Maria", 22);


SELECT stdId, stdName, stdAge FROM students;











