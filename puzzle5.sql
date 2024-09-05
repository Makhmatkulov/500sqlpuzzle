CREATE TABLE PQ
(
ID INT
,Name VARCHAR(10)
,Typed VARCHAR(10)
)
 
--Insert data
INSERT INTO PQ(ID,Name,Typed) VALUES  (1,'P',NULL) , (1,NULL,'Q')
 
--Verify data
SELECT * FROM  PQ



--solution1
SELECT main.ID,
       main.Name,
       typedData.Typed
FROM PQ main
LEFT JOIN PQ typedData ON main.ID = typedData.ID AND typedData.Typed IS NOT NULL
WHERE main.Name IS NOT NULL;

--solution2
SELECT typedData.ID,
       main.Name,
       typedData.Typed
FROM PQ typedData
RIGHT JOIN PQ main ON main.ID = typedData.ID AND typedData.Typed IS NOT NULL
WHERE main.Name IS NOT NULL;

--solution3
SELECT nameData.ID,
       nameData.Name,
       typedData.Typed
FROM PQ nameData
JOIN PQ typedData ON nameData.ID = typedData.ID
WHERE nameData.Name IS NOT NULL AND typedData.Typed IS NOT NULL;

--solution4
SELECT nameData.ID,
       nameData.Name,
       typedData.Typed
FROM PQ nameData
CROSS JOIN PQ typedData
WHERE nameData.ID = typedData.ID 
  AND nameData.Name IS NOT NULL
  AND typedData.Typed IS NOT NULL;


