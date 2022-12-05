select 
	name
    ,round(sum(unitprice) ,4) as totalRevenue
FROM (select * from
genres as g, tracks as t 
where g.GenreId = t.genreid)
group by 1
order by sum(unitprice) desc
limit 10
; 
