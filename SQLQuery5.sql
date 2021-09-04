create database users1
CREATE TABLE Sales (
    Sale_Id int NOT NULL,
    Sale_Amount int NOT NULL,
    Vendor_Name varchar(255) NOT NULL,
    Sale_Date date,
    Profit int
)

select * from Sales;

ALTER TABLE Sales ALTER COLUMN Profit int NOT NULL;
SP_HELP Sales

ALTER TABLE Sales ADD UNIQUE(Sale_Id);
ALTER TABLE Sales ADD CONSTRAINT UC_Sales UNIQUE(Sale_Id,Sale_Amount);
CREATE TABLE Sales1 (
    Sale_Id int NOT NULL UNIQUE,
    Sale_Amount int NOT NULL,
    Vendor_Name varchar(25) CHECK (Vendor_Name = 'ABC'),
    Sale_Date date,
    Profit int
)
ALTER TABLE Sales1 ADD CHECK (Vendor_Name = 'ABC');
select * from Sales1;
CREATE TABLE Sales2 (
    Sale_Id int NOT NULL UNIQUE,
    Sale_Amount int NOT NULL,
    Vendor_Name varchar(25) DEFAULT 'Unknown Vendor',
    Sale_Date date,
    Profit int
)

 SELECT * FROM SALES2;

 CREATE TABLE Sales4 (
    Sale_Id int NOT NULL PRIMARY KEY,
    Sale_Amount int NOT NULL,
    Vendor_Name varchar(25),
    Sale_Date date,
    Profit int,
)

CREATE TABLE Sales5 (
    Sale_Id int NOT NULL,
    Sale_Amount int NOT NULL,
    Vendor_Name varchar(25),
    Sale_Date date,
    Profit int,
    CONSTRAINT PK_Sales PRIMARY KEY ( Sale_Amount) 
)
DROP TABLE Sales5;
ALTER TABLE Sales5 ADD PRIMARY KEY (Sale_Id);


CREATE TABLE Sales_Person (
    Sales_Person_Id int NOT NULL PRIMARY KEY,
    Sales_Person_Name varchar(25),
    Sales_Person_Location varchar(25),
    Sale_Id int FOREIGN KEY REFERENCES Sales5(Sales_Id)
)
