create table customers(
	id int not null,
	name varchar(20) not null,
	age int not null,
	address varchar(255),
	salary decimal(18,2),
	primary key(id)
);
insert into customers(id,name, age,address,salary)values
(1,'jameel abbas',21,'clifton skd',999999),
(2,'abbas',21,'clifton skd',9345),
(3,'hassan',23,'clifton skd',13234),
(4,'kamal',31,'clifton skd',35466),
(5,'rasza',22,'clifton skd',34000),
(6,'jameel ',27,'clifton skd',12009),
(7,'jameel haider',29,'clifton skd',23000);

create view DetailsView as
select * from customers
where salary>34000;

select * from DetailsView;

-- another table 

create table orders(
	old int not null,
	dates datetime not null,
	customer_id int not null,
	amount int not null,
	primary key (old)
);
insert into orders(old,dates,customer_id,amount)values
(102, '2009-10-08 00:00:00', 3, 3000),
(100, '2009-10-08 00:00:00', 3, 1500),
(101, '2009-11-20 00:00:00', 2, 1560),
(103, '2008-05-20 00:00:00', 4, 2060);

select salary
from customers
union
select amount
from orders;

select salary
from customers
intersect
select amount
from orders


