CREATE VIEW vwCustomerSales AS
SELECT 
    c.CustomerID,
    c.Segment,
    c.Country,
    c.City,
    c.State,
    c.Region,
    c.CustomerAge,
    c.CustomerGender,
    f.OrderID,
    f.OrderDate,
    f.ShipDate,
    f.ShipMode,
    f.ProductID,
    f.Sales,
    f.Profit,
    f.Quantity,
    f.Discount,
    f.Cost
FROM 
    FactSales f
JOIN 
    DimCustomer c ON f.CustomerID = c.CustomerID;
