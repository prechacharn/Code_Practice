select 
    A.menuName,
    sum(B.itemPrice) as total_cost
from menu A, cost B
where A.menuId = B.menuId
group by menuName
order by sum(B.itemPrice) desc;
