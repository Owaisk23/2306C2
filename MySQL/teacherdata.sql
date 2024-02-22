create database institute;

use institute;

create table teacher (
	teacher_id int,
    teacher_fname varchar(20),
    teacher_lname varchar(20),
	teacher_hourlypay decimal(4,2),
    teacher_dob date
);


select * from teacher;