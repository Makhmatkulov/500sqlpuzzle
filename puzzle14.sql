--Create table
 
Create table tr_football_league
(
club_id INT,
club_name Varchar(32),
championship_year INT,
year_100th_champion INT
)
 
--Insert Data
insert into tr_football_league values (1, 'FENERBAHCE', 2007, 1) ;
insert into tr_football_league values (2, 'GALATASARAY', 2006, 0) ;
insert into tr_football_league values (3, 'BESIKTAS', 2003, 1) ;
insert into tr_football_league values (1, 'FENERBAHCE', 2005, 0) ;
insert into tr_football_league values (1, 'FENERBAHCE', 2004, 0) ;
insert into tr_football_league values (2, 'GALATASARAY', 2002, 0) ;
insert into tr_football_league values (2, 'GALATASARAY', 2000, 0) ;
insert into tr_football_league values (2, 'GALATASARAY', 1999, 0) ;
insert into tr_football_league values (2, 'GALATASARAY', 1998, 0) ;
insert into tr_football_league values (2, 'GALATASARAY', 1997, 0) ;
insert into tr_football_league values (1, 'FENERBAHCE', 1996, 0);
insert into tr_football_league values (1, 'FENERBAHCE', 2001, 0) ;
insert into tr_football_league values (1, 'FENERBAHCE', 1989, 0) ;
insert into tr_football_league values (1, 'FENERBAHCE', 1985, 0) ;
 
--Verify Data
SELECT club_id, club_name , championship_year , year_100th_champion FROM tr_football_league;


--solution1
WITH cte AS (
    SELECT club_name, COUNT(year_100th_champion) AS total_100th_champions
    FROM tr_football_league
    WHERE year_100th_champion = 1
    GROUP BY club_name
)
SELECT TOP 1 club_name
FROM cte
ORDER BY total_100th_champions DESC;

--solution2







