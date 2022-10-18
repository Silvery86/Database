CREATE TABLE Firms(
    Code int PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100) not null UNIQUE,
    Address VARCHAR(100) not null,
    Phone VARCHAR(15) not null,
);


CREATE TABLE Products(
    ID int PRIMARY KEY IDENTITY(1,1),
    Name nVARCHAR(200) not null,
    Description NVARCHAR(200),
    Unit nvarchar(20) not null check(Unit in(N'Chiếc')),
    Price DECIMAL(12,4) not null check(Price >=0),
    StockQty int not null check(StockQty >=0),
    FirmCode int not null FOREIGN KEY REFERENCES Firms(Code)
);

