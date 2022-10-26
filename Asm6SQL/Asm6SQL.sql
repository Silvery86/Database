create table Categories(
Id int primary key identity(1,1),
Name nvarchar(100) not null unique
);
create table Authors(
Id int primary key identity(1,1),
Name nVARCHAR(100),
);
create table Publishers(
Id int primary key identity(1,1),
Name nvarchar(100) not null unique,
Address nvarchar(100) not null
);
create table Books(
Code varchar(20) primary key,
Name varchar(100) not null unique,
Description text,
PublishYear int not null,
NumberOfPublish int,
Price decimal(12,4),
Qty int not null default 0,
CategoryId int not null foreign key references Categories(Id),
PublisherId int not null foreign key references Publishers(Id)
);
create table BookAuthors(
BookCode varchar(20) foreign key references Books(Code),
AuthorId int foreign key references Authors(Id)
);