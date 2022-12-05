create table menu(
    menuId int not Null,
    menuName text,
    price real,
    primary key (menuId)
);

insert into menu values
    (1, "Pizza", 10),
    (2, "BBQ", 15),
    (3, "FriedRice", 3),
    (4, "Donut", 2),
    (5, "Waffles", 4),
    (6, "Spagetti", 3),
    (7, "Pies", 8.5),
    (8, "Noodles", 7),
    (9, "Gyoza", 1),
    (10, "Tart", 1.5);

Select * from menu;
