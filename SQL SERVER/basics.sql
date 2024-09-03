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

--Like 

SELECT * FROM Employee where designation like '%n%';

SELECT * FROM Employee where city like '%h%' and designation like '%n%';

--IN
SELECT * FROM Employee where city IN ('Khi')
 
--ORDER BY
SELECT * FROM Employee Order By empName asc;

SELECT * FROM Employee Order By id desc;

-- Top

SELECT TOP 3 * From Employee;

SELECT TOP 50 percent * From Employee Order By Id asc;

-- aggregate functions

SELECT * FROM Employee;

SELECT COUNT(city) as total_cities From Employee;
 
SELECT MIN(salary) as Minium_Salary From Employee;

SELECT MAX(salary) as Max_Salary From Employee;

SELECT SUM(salary) as Total_Salary From Employee;

SELECT SUM(id) as Sum_Ids From Employee;

SELECT AVG(salary) as Average_Salary From Employee;

SELECT CONCAT(empName, ' has a designation of ', designation, ' has a salary of ', salary)
as emp_details FROM Employee;

SELECT empName, salary from Employee where salary < (SELECT AVG(salary) as
Average_Salary From Employee);