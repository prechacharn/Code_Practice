/*Hi
In this project, 
  I will be creating a database containing 5 tables from scratch using SQLite.
The database is about a restuarant shop
This database including
    1. Menu : providing Food names and the price of it
    2. customers   : customers' name  details
    3. service     : service of order
    4. country     : courntry of customers
    5. cost      : cost of the ingredients

P.S. an empty have been already created as 02_restuarant.db, and this project will use it for creating and filling out the tables.

Concerning!!! this database have already import into restuarant.db, if re-running the code it would be create a duplicate, so please move on to "Queries.sql"*/

-- create table for Menu
create table menu(
    menuId int not Null,
    menuName text,
    price real,
    primary key (menuId)
);

--insert into menu
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

--create table Customers
create table customer(
    orderId int not Null,
    customerName text,
    menuId int,
    quantity int,
    primary key (orderId),
    foreign Key (menuId) 
    references menu(menumenuId)
);

-- insert customers details
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

--create service table
create table service(
    serviceNumber int not Null,
    Type text,
    Fees real not NULL,
    orderId int, 
    primary key (serviceNumber),
    foreign key (orderId) 
    references customer(customerorderID)
);

-- insert values service table
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

--create country table
create table country(
    countryId int not NULL,
    Country text,
    orderId int not NULL,
    Primary key(countryId),
    Foreign key (orderId)
    references customer(customerorderId)
);

-- insert values country table
insert into country values
    (1, "Thailand", 1),
    (2, "China", 3),
    (3, "Brazil", 5),
    (4, "United Kindoms", 8),
    (5, "Laos", 9);


--create cost table
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

select * from menu;
select * from customer;
select * from service;
select * from country;
select * from cost;
