CREATE TABLE [Movie]
(
 
[MName] [varchar] (10) NULL,
[AName] [varchar] (10) NULL,
[Roles] [varchar] (10) NULL
)
 
GO
 
--Insert data in the table
 
INSERT INTO Movie(MName,AName,Roles)
SELECT 'A','Amitabh','Actor'
UNION ALL
SELECT 'A','Vinod','Villan'
UNION ALL
SELECT 'B','Amitabh','Actor'
UNION ALL
SELECT 'B','Vinod','Actor'
UNION ALL
SELECT 'D','Amitabh','Actor'
UNION ALL
SELECT 'E','Vinod','Actor'
 
--Check your data
SELECT MName , AName , Roles FROM Movie

--solution1



SELECT * 
FROM Movie 
WHERE MName IN (
    SELECT MName 
    FROM Movie 
    WHERE Roles = 'Actor' AND AName = 'Amitabh'
)
AND MName IN (
    SELECT MName 
    FROM Movie 
    WHERE Roles = 'Actor' AND AName = 'Vinod'
);

