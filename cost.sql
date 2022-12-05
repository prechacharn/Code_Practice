create table cost(
    itemNumber int not Null,
    itemName TEXT,
    itemPrice real not null,
    menuId int,
    primary key(itemNumber),
    foreign key (menuId)
    references menu(menumenuId)
);

insert into cost values
    (1, "flour", 2.5, 1),
    (2, "tomato", 1, 1),
    (3, "beef", 6, 2),
    (4, "pork", 3, 2),
    (5, "sugar", 0.5, 4),
    (6, "beef", 3, 7),
    (7, "peppers", 1, 9),
    (8, "lemons", 1, 10),
    (9, "chicken", 2.5, 2),
    (10, "shrimp", 7, 6);

select * from cost
