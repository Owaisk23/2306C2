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
WHERE AGE BETWEEN 18 AND 22
ORDER BY AGE desc;

-- AGGREGATE FUNCTIONS
SELECT MIN(AGE) FROM STUDENTS;
SELECT MAX(AGE) FROM STUDENTS;
SELECT SUM(AGE) FROM STUDENTS;
SELECT AVG(AGE) AS AGEAVG FROM STUDENTS;
SELECT CONCAT(SNAME, " from " , CITY) AS STDLOCATION FROM STUDENTS;


create database items;
use items;
CREATE TABLE PAYMENTS( 
	ID int PRIMARY KEY AUTO_INCREMENT,
    PNAME varchar(50) NOT NULL,
    PDATE DATE NOT NULL,
    METHOD VARCHAR(50),
	AMOUNT int,
    CITY VARCHAR(50) NOT NULL
);
DROP TABLE PAYMENTS;
SELECT * FROM PAYMENTS;

INSERT INTO PAYMENTS(PNAME, PDATE, METHOD, AMOUNT, CITY)
VALUES ("Taha", "2024-02-29", "Jazzcash", 35000, "Karachi");


INSERT INTO PAYMENTS(PNAME, PDATE, METHOD, AMOUNT, CITY)
VALUES ("Adnan", "2024-02-25", "Easypaisa", 45000, "Multan");

INSERT INTO PAYMENTS(PNAME, PDATE, METHOD, AMOUNT, CITY)
VALUES ("Ali", "2024-02-29", "Cash", 25000, "Lahore"),
("Hamna", "2024-02-25", "Card", 45000, "Quetta"),
("Humais", "2024-02-29", "Easypaisa", 45000, "Karachi"),
("Farhan", "2024-02-27", "Paypal", 45000, "Sukkur"),
("Haris", "2024-02-25", "Easypaisa", 45000, "Islamabad");

update payments
set AMOUNT = 27000
where ID = 6;

SELECT * FROM PAYMENTS;

SELECT PDATE, SUM(AMOUNT) FROM PAYMENTS
WHERE PDATE = "2024-02-29"
order by PDATE asc;

SELECT CITY, SUM(AMOUNT) AS TOTALAMOUNT, COUNT(ID) AS COUNT
FROM PAYMENTS
GROUP BY CITY;

SELECT PDATE, SUM(AMOUNT) AS TOTALAMOUNT, COUNT(ID) AS COUNT
FROM PAYMENTS
GROUP BY PDATE;

SELECT CITY, SUM(AMOUNT) AS TOTALAMOUNT, COUNT(ID) AS COUNT
FROM PAYMENTS
GROUP BY CITY with rollup;

SELECT METHOD, SUM(AMOUNT) AS TOTALAMOUNT, COUNT(ID) AS COUNT, CITY
FROM PAYMENTS
GROUP BY METHOD
HAVING CITY = "Karachi" AND NOT METHOD = "Paypal";

DELETE FROM PAYMENTS
WHERE AMOUNT BETWEEN 30000 AND 50000;

SELECT * FROM PAYMENTS;

use products;

select * from payment;

INSERT INTO PAYMENT (PNAME,p_DATE, METHOD,CITY,AMOUNT) VALUES
("ADNAN","2023-09-29","CASH","KARACHI",45000),
("BILAL","2023-09-29","CARD","LAHORE",30000),
("ZEESHAN","2023-09-30","JAZZCASH","ISLAMABAD",25000),
("SHARIQ","2023-09-28","PAYPAL", "LAHORE",15000),
("ABEEHA","2023-09-29","CASH","KARACHI",28000);


SELECT METHOD, sum(AMOUNT), COUNT(ID),CITY 
FROM PAYMENT 
GROUP BY METHOD
HAVING  CITY="KARACHI"
AND NOT METHOD="CASH";


-- SUB QUERIES
SELECT AVG(AMOUNT) FROM PAYMENT;

SELECT *,(SELECT AVG(AMOUNT) FROM PAYMENT) AS AVERAGE_AMOUNT FROM PAYMENT WHERE
AMOUNT <= (SELECT AVG(AMOUNT) FROM PAYMENT);

SELECT * FROM STUDENTS
WHERE ID IN (SELECT ID FROM STUDENTS
WHERE  ID%2 = 0);

