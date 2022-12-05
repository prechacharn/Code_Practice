with notusa_Customer as(
select * from customers
where country <> 'USA')
, invoice_2000s as(
select * from invoices
where cast(strftime('%Y', invoicedate) as int) BETWEEN 2000 and 2020)

select 
	sCus.customerid
    ,sCus.firstname
    ,gen.Name
    ,count(sCus.customerid)
from notusa_Customer sCus 
JOIN invoice_2000S sInv    on sCUs.customerid = sInv.customerid
join invoice_items invItem on sInv.invoiceid = invItem.invoiceid
join tracks tra            on invItem.trackid = tra.trackid
join genres gen            on tra.genreid =gen.GenreId
where sCus.customerid = 10
GROUP by 3
order by 4 DESC
limit 5;
