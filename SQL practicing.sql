select 
    B.orderId,
    B.customerName Name,
    C.type
from menu A,
    customer B, 
    service C
where A.menuId = B.menuId
and   B.orderId = C.orderId;

select 
    B.customerName Name,
    sum(B.quantity* A.price)+    sum(B.quantity*C.Fees) as    Total
from menu A,
    customer B, 
    service C
where A.menuId = B.menuId
and   B.orderId = C.orderId
group by 1;
