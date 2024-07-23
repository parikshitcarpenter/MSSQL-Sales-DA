CREATE VIEW vwProductSales AS
SELECT 
    p.ProductID,
    p.Category,
    p.SubCategory,
    f.OrderID,
    f.OrderDate,
    f.ShipDate,
    f.ShipMode,
    f.CustomerID,
    f.Sales,
    f.Profit,
    f.Quantity,
    f.Discount,
    f.Cost
FROM 
    FactSales f
JOIN 
    DimProduct p ON f.ProductID = p.ProductID;
