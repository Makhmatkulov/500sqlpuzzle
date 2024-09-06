--Create table
CREATE TABLE TestMax
(
Year1 INT
,Max1 INT
,Max2 INT
,Max3 INT
)
GO
 
--Insert data
INSERT INTO TestMax 
VALUES
 (2001,10,101,87)
,(2002,103,19,88)
,(2003,21,23,89)
,(2004,27,28,91)
 
--Select data
Select Year1,Max1,Max2,Max3 FROM TestMax


--solution1
select year1,
	   greatest(max1, max2, max3)
from testmax;

--solution2
select year1,
	   case 
	       when max1 >= max2 and max1 >= max3 then max1
		   when max2 >= max1 and max2 >= max3 then max2
		   when max3 >= max1 and max3 >= max2 then max3
	   end as max
from testmax;



