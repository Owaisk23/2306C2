create database tts11_1;

use tts11_1;

create table students(
	ID int PRIMARY KEY,
    STDNAME varchar(30) NOT NULL,
    AGE int NOT NULL check (AGE >= 18),
    CITY varchar(30) NOT NULL default "Karachi",
    EMAIL VARCHAR(50) NOT NULL UNIQUE,
    GENDER varchar(15) NOT NULL
);

select * from students;

insert into students 
values(1, "Farhan", 34, "Lhr", "farhan123@yahoo.com", "male");

insert into students 
values(4, "Taha", 21, "Quetta", "taha1@outlook.com", "male");


insert into students(ID, STDNAME, AGE, EMAIL, GENDER) 
values(5, "Rayyan", 23, "rayyu21@gmail.com", "male");

ALTER table students change
STDNAME SNAME varchar(30) NOT NULL;

insert into students(ID, SNAME, AGE, EMAIL, GENDER, CITY) 
values(6, "Samad", 19, "samad11@gmail.com", "male", "Multan");

insert into students(ID, SNAME, AGE, EMAIL, GENDER, CITY) 
values(7, "Saad", 27, "saad171@gmail.com", "male", "Hyd");

select * from students
where Age>=20 OR City = "Swatt";

select * from students
where Age>=20 AND City = "Swatt";

select * from students
where AGE BETWEEN 21 AND 35;

select * from students
where AGE BETWEEN 21 AND 35
limit 3;

SELECT * FROM students
where NOT CITY IN ("Lhr", "Isb", "Hyd");


SELECT * FROM students
where NOT CITY IN ("Karachi");

update students
set city = "Swatt"
where Id = 3;

SELECT * FROM students
WHERE AGE BETWEEN 20 AND 30
ORDER BY ID asc;


SELECT * FROM students
WHERE AGE BETWEEN 20 AND 30
ORDER BY ID desc;

