
create table Customers(
	Id bigint not null,
	Name varchar(60) not null,
	primary key (Id)
);

create table Orders(
	Id bigint not null,
	CustomerId bigint not null,
	primary key(Id),
	foreign key (CustomerId) references Customers(Id)
);

insert into Customers
values (1,'Max'),(2,'Pavel'),(3,'Ivan'),(4,'Leonid');

insert into Orders
values (1,2),(2,4);

select Customers.Name Customers
from Customers
left join Orders on Customers.Id = Orders.CustomerId
where Orders.CustomerId is null