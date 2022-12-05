select 
    B.customerName,
    count(A.menuId) as number_of_menu,
    count(distinct B.customerName) 
        as number_of_customer
from menu A, customer B
where A.menuId = B.menuId
group by 1;

