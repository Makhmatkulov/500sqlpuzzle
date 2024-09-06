--Create table
CREATE TABLE [dbo].[EmpSalaryGreaterManager]
(
[EmpID] [int] NULL,
[EmpName] [varchar](50) NULL,
[EmpSalary] [bigint] NULL,
[MgrID] [int] NULL
)
GO
 
--Insert Data
INSERT INTO [EmpSalaryGreaterManager](EmpID,EmpName,EmpSalary,MgrID)
VALUES
(1,    'Pawan',      80000, 4),
(2,    'Dheeraj',    70000, 4),
(3,    'Isha',       100000,       4),
(4,    'Joteep',     90000, NULL),
(5,    'Suchita',    110000,       4)
 
--Verify Data
SELECT * FROM [dbo].[EmpSalaryGreaterManager]


--solution1
select b.EmpID, b.EmpName, b.EmpSalary, b.MgrID
from EmpSalaryGreaterManager a
join EmpSalaryGreaterManager b
on a.EmpID = b.MgrID
where b.EmpSalary > a.EmpSalary;