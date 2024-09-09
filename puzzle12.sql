--Create table
CREATE TABLE GroupbyMultipleColumns
(
ID INT
,Typ VARCHAR(1)
,Value1 VARCHAR(1)
,Value2 VARCHAR(1)
,Value3 VARCHAR(1)
)
GO
 
--Insert Data
INSERT INTO GroupbyMultipleColumns(ID,Typ,Value1,Value2,Value3)
VALUES
(1,'I','a','b',''),
(2,'O','a','d','f'),
(3,'I','d','b',''),
(4,'O','g','l',''),
(5,'I','z','g','a'),
(6,'I','z','g','a')
 
--Verify Data
SELECT ID,Typ,Value1,Value2,Value3 FROM GroupbyMultipleColumns;


--solution1
select typ, 
	    sum(case value1 when 'a' then 1 else 0 end)+
		sum(case value2 when 'a' then 1 else 0 end)+
		sum(case value3 when 'a' then 1 else 0 end)
from GroupbyMultipleColumns
where value1 = 'a' or Value2 = 'a' or Value3 = 'a'
group by typ;