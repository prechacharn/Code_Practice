select
    B.customerName Name,
    count(A.menuId) as number_of_order,
    sum(B.quantity* A.price) as bill
from menu A, customer B
where A.menuId = B.menuId
group by 1
order by 2 desc;
