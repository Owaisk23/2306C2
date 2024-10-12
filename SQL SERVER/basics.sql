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


-- Group By Clause
SELECT city, COUNT(id) workers from Employee Group By city;

SELECT city, MAX(salary) max_salary_paid from Employee Group By city;

SELECT city, SUM(salary) total_salary_paid from Employee Group By city;



INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Ali Asr', 'MANAGER', 420000, 'KHI', null),
('Ebad', 'MANAGER', 670000, 'ISB', null),
('Bilal', 'MANAGER', 220000, 'LHR', null);

Select * FROM Employee;

SELECT designation, COUNT(id) from Employee Group By
designation having designation = 'MANAGER';

-- Department Table

CREATE table Departments (
deptId int PRIMARY KEY IDENTITY(1,1),
DName nvarchar(40) not null
);

insert into Departments values ('HR'), ('Academics'), ('Accounts'), ('SRO');
insert into Departments values ('Canteen'), ('TechRoom'), ('Coordinators');
SELECT * FROM Departments;

SELECT * FROM Employee;

TRUNCATE TABLE Employee;

DROP TABLE Employee;

CREATE TABLE Employee(
	id INT PRIMARY KEY IDENTITY(1,1),
	empName VARCHAR(255) NOT NULL,
	designation VARCHAR(255) NOT NULL,
	salary INT NOT NULL,
	city VARCHAR(255) NOT NULL,
	deptId INT,
	FOREIGN KEY (deptId) References Departments(deptId)
);


INSERT INTO Employee(empName, designation, salary, city, deptId) VALUES
('Ali Asr', 'CAH', 420000, 'KHI', 2),
('Ebad', 'Placement Officer', 670000, 'ISB', 1),
('Bilal', 'Fee Collector', 220000, 'LHR', 4),
('Haseeb', 'Coordinator', 670000, 'KHI', 2),
('Taha', 'Admin Accountant', 220000, 'LHR', 3),
('Abdullah', 'Manager', 670000, 'KHI', 2),
('Azhar', 'Faculty', 220000, 'ISB', 2);


INSERT INTO Employee(empName, designation, salary, city ) VALUES
('Wamiq', 'AH', 420000, 'KHI'),
('Osama', 'Staff Officer', 670000, 'ISB'),
('Affan', 'Form Collector', 220000, 'LHR');

SELECT * FROM Employee;

-- JOINS
--INNER JOIN 
SELECT * FROM Employee as emp INNER JOIN Departments as d on emp.deptId=d.deptId;

--LEFT JOIN 
SELECT * FROM Employee as emp LEFT JOIN Departments as d on emp.deptId=d.deptId;

SELECT * FROM Departments as d LEFT JOIN Employee as emp on d.deptId=emp.deptId;

--RIGHT JOIN 
SELECT * FROM Employee as emp RIGHT JOIN Departments as d on emp.deptId=d.deptId;

--FULL OUTER JOIN
SELECT emp.*, d.DName FROM Employee as emp FULL OUTER JOIN Departments as d on emp.deptId=d.deptId;

--Views

-- VIEWS 
SELECT * FROM Employee;

CREATE View [empDetails]
AS
SELECT id, empName, designation from Employee;

SELECT * FROM empDetails;
SELECT * FROM Departments;

CREATE View [empDeptName]
AS
SELECT DName FROM Departments;

select * from empDeptName;


Create VIEW [empDetailwithDept]
AS
SELECT emp.*, d.DName from Employee as emp INNER JOIN Departments as d ON emp.deptId = d.deptId;

SELECT * from [empDetailwithDept];

UPDATE Employee SET empName = 'Ammad' where id = 1;

delete from Employee where id = 7;

-- DCL DATA CONTROL LANGUAGE

CREATE LOGIN FACULTY_EMP  WITH Password='123';
CREATE USER FACULTY_EMP FROM LOGIN FACULTY_EMP;

select * from sys.sql_logins;

GRANT SELECT on dbo.Employee TO FACULTY_EMP;

GRANT INSERT, DELETE on dbo.Employee TO FACULTY_EMP;

-- REVOKE(To take back the permission)
REVOKE DELETE on dbo.Employee TO FACULTY_EMP;



-- PROCEDURES

CREATE PROCEDURE SeeEmp
AS
BEGIN
SELECT * FROM Employee
END;

SeeEmp;


ALTER PROCEDURE SeeEmp
AS
BEGIN
SELECT * FROM Employee where city = 'KHI'; 
END;

SeeEmp;

CREATE PROCEDURE AddEmp @Name varchar(255), @desig varchar(70), @sal int, @city varchar(60), @dId int
AS
BEGIN
INSERT INTO Employee VALUES(@Name, @desig, @sal, @city, @dId)
SELECT * FROM Employee
END;

AddEmp @Name='Haseeb', @desig='Software Developer', @sal=50000, @city='Karachi', @dId=2;

AddEmp @Name='Ali Zaib', @desig='MERN Developer', @sal=250000, @city='Karachi', @dId=3;

DROP PROCEDURE SeeEmp;

SeeEmp;

DELETE FROM Employee where id = 16;

-- indexes 

create index empname_index
On Employee(empName,salary);

select * from Employees where empName='Owais';

drop index employee.empname_index;

-- Triggers

 -- for
 CREATE TRIGGER AddEmp_trigger 
 On Employee
 for INSERT
 as
 BEGIN
 print('a new employee added successfully.')
 END;

 INSERT INTO Employee(empName,designation,salary,city,deptId) VALUES
('Taha ','Mob developer', 58788, 'swat',1);


 -- alter
 ALTER TRIGGER AddEmp_trigger 
 On Employee
 for INSERT
 as
 BEGIN
SELECT * FROM inserted;
 END;

 --Creating audit table
 CREATE TABLE EmpLogs(
 logid int Primary key identity(1,1),
 ActionPerformed nvarchar(255)
 );
 SELECT * FROM EmpLogs;


 SELECT * into Test from Employees;
 SELECT * From Test;

 -- Maintaining logs on tables

  create TRIGGER AddEmp_trigger 
 On Employees
 AFTER INSERT
 as
 BEGIN
DECLARE @Id int, @name varchar(50)
SELECT @Id=id, @name=empName FROM inserted
INSERT INTO EmpLogs VALUES(@name+' having Id = '+ CAST(@Id as varchar(6)) +' is added at '+ cast(GETDATE() as varchar(30)))
 END;


 -- instead of

 SELECT * from Employee;
 Alter TABLE Employee ADD emp_status int default(1) not null;


 CREATE Trigger Soft_Delete
 On Employee
 INSTEAD OF DELETE
 AS
 BEGIN
 DECLARE @ID int
 SELECT @ID=id from Deleted
 Update Employee set emp_status=0 where id=@ID
 END;

 DELETE from Employee where id=15;


 -- Update Trigger
 ALTER Trigger Update_Employees
 On Employees
 for Update
 as
 begin
DECLARE @Id int
DECLARE @Newname varchar(60), @Oldname varchar(60)
DECLARE @Newsalary int,  @Oldsalary int
DECLARE @NewDesignation varchar(60),@OldDesignation varchar(60)
DECLARE @Newdeptid int,  @Olddeptid int
DECLARE @Newcity varchar(60), @Oldcity varchar(60)
DECLARE @AuditString varchar(255)

SELECT * into #Temptable from inserted
WHILE(exists (SELECT id from #Temptable))
begin
SELECT @Id=id, @Newname=empName, @Newsalary=salary, @NewDesignation=designation,@Newcity=city,@Newdeptid=deptId FROM #Temptable
SELECT  @Oldname=empName, @Oldsalary=salary, @OldDesignation=designation,@Oldcity=city,@Olddeptid=deptId FROM deleted where id=@Id
SET @AuditString =''
SET @AuditString ='An employee having id = '+ CAST(@Id as varchar(6))+' on '+  CAST(GETDATE() as varchar(30))+' is changed '
if(@Oldname <> @Newname)
SET @AuditString = @AuditString + ' its name from '+@Oldname +' to '+ @Newname

if(@Oldsalary <> @Newsalary)
SET @AuditString = @AuditString + ' its salary from '+CAST(@Oldsalary as varchar(10)) +' to '+CAST(@Newsalary as varchar(10))

if(@OldDesignation <> @NewDesignation)
SET @AuditString = @AuditString + ' its designation from '+@OldDesignation +' to '+ @NewDesignation

if(@Oldcity <> @Newcity)
SET @AuditString = @AuditString + ' its city from '+@Oldcity +' to '+ @Newcity

if(@Olddeptid <> @Newdeptid)
SET @AuditString = @AuditString + ' its deptid from '+CAST(@Olddeptid as varchar(10)) +' to '+CAST(@Newdeptid as varchar(10))
 Insert into Emplogs values(@AuditString)
 DELETE FROM #Temptable where id=@Id
end
 end;


 select * from Employees;
 update Employees set city='karachi' where id > 4;
 select * from Emplogs;

 -- Transactions 
 -- ddl- data definition language (create , alter, drop)
 -- dml-data manipulation language (insert,update,delete, select)
 -- dcl-data control languages (grant/revoke)
 -- tcl- transaction control language. (ROLLBACK/ COMMIT)

 -- ACID properties.
 
-- A => Atomicity -- all the steps are fully completed or not a single step will execute.
-- C => Consistency -- all the nodes in a network should be aware of the transaction.
-- I => Isolation -- one transaction's info should not be known to another transaction.
-- D => Durability -- changes after transaction should be saved.

-- Integrity
Begin Transaction
Update Employees set empName='Khurram' where id= 1;
Commit Transaction;-- save changes

Rollback Transaction;-- wapis

BEGIN TRANSACTION
BEGIN try 
Update Employees set empName='chakwal' where id= 1/0;
print('Commited Successfully.')
COMMIT TRANSACTION
End try
BEGIN catch
print('Rolled back Successfully.')
Rollback Transaction
END catch;