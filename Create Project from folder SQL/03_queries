/*In this script I will gain insight from 02_restuarant.db

There are 5 tables will answer some questions about the restuarant's customers and store performance

[A] Total cost from these orders of customers
[B] Revernue group by customer
[C] Demonstrate MenuName in order
[D] Country of customers
[E] Quantities of menu from each customer
[F] calculate Bills with service charge for each customer
NOTE : read on 02_restuarant.db to see results
*/

-- [A] Total cost from the orders of customers(GROUP BY, ORDER BY, AGGREGATE FUNCTION)
select 
    A.menuName,
    sum(B.itemPrice) as total_cost
from menu A, cost B
where A.menuId = B.menuId
group by menuName
order by sum(B.itemPrice) desc;

-- [B] Revernue group by customer
select
    B.customerName Name,
    count(A.menuId) as number_of_order,
    sum(B.quantity* A.price) as bill
from menu A, customer B
where A.menuId = B.menuId
group by 1
order by 2 desc;

-- [C] Demonstrate MenuName in order (JOINING TABLES)
select
    B.orderId,
    B.customerName,
    A.menuName
From menu A join customer B
on A.menuId = B.menuId;

--[D] Country of customers
select 
    A.orderId,
    A.customerName,
    B.Country
from customer A Join country B
on A.orderId = B.orderId
group by A.customerName;

--[E] Quantities of menu from each customer (Distinct)
select 
    B.customerName,
    count(A.menuId) as number_of_menu,
    count(distinct B.customerName) 
        as number_of_customer
from menu A, customer B
where A.menuId = B.menuId
group by 1;

--[F] calculate Bills with service charge for each customer
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
