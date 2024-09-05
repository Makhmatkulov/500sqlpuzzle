--Create table
 
CREATE TABLE NthHighest
(
 Name  varchar(5)  NOT NULL,
 Salary  int  NOT NULL
)
 
--Insert the values
INSERT INTO  NthHighest(Name, Salary)
VALUES
('e5', 45000),
('e3', 30000),
('e2', 49000),
('e4', 36600),
('e1', 58000)
 
--Check data
SELECT Name,Salary FROM NthHighest

--solution 1
select *
from NthHighest 
order by salary desc
offset 1 row fetch next 1 row only;

--solution 2
select top 1 *
from NthHighest
where Salary < (select max(Salary) from NthHighest)
order by salary desc

--solution 3
SELECT name, salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (ORDER BY Salary DESC) AS rank
    FROM NthHighest
) ranked
WHERE rank = 2;