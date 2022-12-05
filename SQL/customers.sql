create table customer(
    orderId int not Null,
    customerName text,
    menuId int,
    quantity int,
    primary key (orderId),
    foreign Key (menuId) 
    references menu(menumenuId)
);

insert into customer values
    (1, "Tae", 1, 1),
    (2, "Tae", 2, 3),
    (3, "May", 1, 2),
    (4, "May", 3, 1),
    (5, "Mike", 4, 5),
    (6, "Mike", 5, 1),
    (7, "Mike", 6, 2),
    (8, "Song", 7, 3),
    (9, "Elf", 8, 5),
    (10, "Elf", 9, 6);

Select * from customer;
