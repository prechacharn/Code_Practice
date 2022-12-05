select 
    A.orderId,
    A.customerName,
    B.Country
from customer A Join country B
on A.orderId = B.orderId
group by A.customerName;
