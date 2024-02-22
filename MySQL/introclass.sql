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



INSERT INTO STUDENTS VALUES (3, "Basim", 22);


Select * from STUDENTS;

INSERT INTO STUDENTS 
VALUES (4, "Ali", 25),
		(5, "Hassan", 23),
        (6, "Ayesha", 22),
        (7, "Luqman", 24),
        (8, "Ayan", 20),
        (9, "Faizan", 20),
        (10, "Hanzala", 23);


