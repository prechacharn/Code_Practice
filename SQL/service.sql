create table service(
    serviceNumber int not Null,
    Type text,
    Fees real not NULL,
    orderId int, 
    primary key (serviceNumber),
    foreign key (orderId) 
    references customer(customerorderID)
);

INSERT into service values
(1, "DineIn", 0.75, 1),
(2, "DineIn", 0.75, 2),
(3, "Togo", 0.5, 3),
(4, "Togo", 0.5, 4),
(5, "Togo", 0.5, 5),
(6, "DineIn", 0.75, 6),
(7, "DineIn", 0.75, 7),
(8, "DineIn", 0.75, 8),
(9, "Togo", 0.5, 9),
(10, "Togo", 0.5, 10);

Select * from service;
