select
    B.orderId,
    B.customerName,
    A.menuName
From menu A, customer B
where A.menuId = B.menuId;
