CREATE DATABASE "2306C2";

Create table Employee(
	id INT PRIMARY KEY IDENTITY(1,1),
	empName VARCHAR(255) NOT NULL,
	designation VARCHAR(255) NOT NULL,
	salary INT NOT NULL,
	city varchar(255) NOT NULL,
	deptId INT
);

drop table Employee;

SELECT * FROM Employee;

INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Moin', 'Angular Developer', 150000, 'Khi', null),
('Aqsa', 'Php Developer', 50000, 'Lhr', null),
('Abdullah', 'Angular Developer', 130000, 'Isb', null),
('Basim', 'Dot Net Developer', 220000, 'Isb', null),
('Ammad', 'Php Developer', 40000, 'Khi', null),
('Hanzala', 'React Developer', 70000, 'Lhr', null),
('Zainab', 'Laravel Developer', 65000, 'Khi', null);

Select DISTINCT city from Employee;

-- Update Queries
UPDATE Employee SET salary=300000 where city='Khi';

UPDATE Employee SET empName='Hassan', city='Lhr' where id = 5;

-- Delete 
Delete from Employee where empName='Basim';

SELECT * FROM Employee;

-- where clause
SELECT empName, designation from Employee where designation='php developer';

-- Not Operator
SELECT empName, designation from Employee where not designation='php developer';

-- AND OPERATOR 
SELECT empName, designation, salary from Employee 
where not designation='React developer' and salary>=150000;

SELECT empName, designation, salary from Employee 
where not designation='React developer' and salary<150000;

--OR OPERATOR
SELECT empName, designation, salary from Employee 
where not designation='React developer' or salary>=150000;

SELECT empName, designation, salary from Employee 
where not designation='React developer' or salary<150000;

--Between
SELECT * FROM Employee where id between 3 AND 5;

