CREATE DATABASE SalesDataAnalysis;
GO

USE SalesDataAnalysis;


CREATE TABLE DimCustomer (
    CustomerID VARCHAR(50) PRIMARY KEY,
    Segment VARCHAR(50),
    Country VARCHAR(50),
    City VARCHAR(50),
    State VARCHAR(50),
    Region VARCHAR(50),
    CustomerAge TINYINT,
    CustomerGender VARCHAR(50)
);


CREATE TABLE DimProduct (
    ProductID VARCHAR(50) PRIMARY KEY,
    Category VARCHAR(50),
    SubCategory VARCHAR(50)
);


CREATE TABLE DimTime (
    OrderID VARCHAR(50) PRIMARY KEY,
    Day VARCHAR(50),
    Month VARCHAR(50),
    Year VARCHAR(50),
    Quarter VARCHAR(50)
);

CREATE TABLE FactSales (
    SalesID VARCHAR(50) PRIMARY KEY,
    OrderID VARCHAR(50),
    OrderDate DATE,
    ShipDate DATE,
    ShipMode VARCHAR(50),
    CustomerID VARCHAR(50),
    ProductID VARCHAR(50),
    Sales FLOAT,
    Profit SMALLINT,
    Quantity TINYINT,
    Discount VARCHAR(50),
    Cost FLOAT,    
	FOREIGN KEY (CustomerID) REFERENCES DimCustomer(CustomerID),
    FOREIGN KEY (ProductID) REFERENCES DimProduct(ProductID),
    FOREIGN KEY (OrderID) REFERENCES DimTime(OrderID)
);


