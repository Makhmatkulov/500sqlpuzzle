--Create table
CREATE TABLE [dbo].[TestMultipleZero]
(
[A] [int] NULL,
[B] [int] NULL,
[C] [int] NULL,
[D] [int] NULL
)
GO
 
--Insert Data
INSERT INTO [dbo].[TestMultipleZero](A,B,C,D)
VALUES (0,0,0,1),(0,0,1,0),(0,1,0,0),(1,0,0,0),(0,0,0,0),(1,1,1,0)
 
--Check data
SELECT A,B,C,D FROM [dbo].[TestMultipleZero];

--solution1
select *
from TestMultipleZero
where a != 0 or b != 0 or c != 0 or d != 0 ;


--solution2
SELECT *
FROM TestMultipleZero
WHERE A + B + C + D != 0;


