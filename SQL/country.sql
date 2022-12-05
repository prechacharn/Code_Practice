create table country(
    countryId int not NULL,
    Country text,
    orderId int not NULL,
    Primary key(countryId),
    Foreign key (orderId)
    references customer(customerorderId)
);

insert into country values
    (1, "Thailand", 1),
    (2, "China", 3),
    (3, "Brazil", 5),
    (4, "United Kindoms", 8),
    (5, "Laos", 9);

Select * from country;
