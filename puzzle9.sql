--Create Table
 
CREATE TABLE Department
(
DeptID INT
,DeptName VARCHAR(10)
)
GO
 
--Insert Data
 
INSERT INTO Department(DeptID,DeptName)
VALUES
(1,'Finance'),
(2,'IT'),
(3,'HR')
 
--Create Table
 
CREATE TABLE Emps
(
EmpID INT
,EmpName VARCHAR(50)
,DeptID INT
,EmpSalary FLOAT
)
GO
 
--Insert Data
 
INSERT INTO Emps(EmpID,EmpName,DeptID,EmpSalary) VALUES
(101,'Isha',1,7000),
(111,'Esha',1,8970),
(102,'Mayank',1,8900),
(103,'Ramesh',2,4000),
(104,'Avtaar',2,9000),
(105,'Gopal',3,17000),
(106,'Krishna',3,1000),
(107,'Suchita',3,7000),
(108,'Ranjan',3,17900)
 
--Verify Data
 
  
SELECT DeptID,DeptName FROM Department;
SELECT EmpID,EmpName,DeptID,EmpSalary FROM Emps;



--solution1
with cte as (
    select 
        empid, 
        empname, 
        deptid, 
        empsalary,
        row_number() over (partition by deptid order by deptid, empsalary) as numing
    from 
        emps
)
select 
    cte.empid, 
    cte.empname, 
    cte.empsalary, 
    department.deptname
from 
    cte
join 
    department 
on 
	department.deptid = cte.deptid
where 
    numing = 2;



