CREATE TABLE List
(
ID INT
)
GO
 
INSERT INTO List(ID) VALUES (1),(2),(3),(4),(5)


--solution1
select id, 
       sum(id) over (order by id) rolling_total
from list;


--solution2
select a.id, 
	   sum(b.id)
from list a
join list b
on b.id <= a.id
group by a.id
order by a.id;
