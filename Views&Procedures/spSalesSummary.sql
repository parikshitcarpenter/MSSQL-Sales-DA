CREATE PROCEDURE spSalesSummary
AS
BEGIN
    SELECT 
        f.SalesID,
        f.OrderID,
        f.OrderDate,
        f.ShipDate,
        f.ShipMode,
        f.CustomerID,
        c.Country,
        c.Region,
        f.ProductID,
        p.Category,
        p.SubCategory,
        f.Sales,
        f.Profit,
        f.Quantity,
        f.Discount,
        f.Cost
    FROM 
        FactSales f
    JOIN 
        DimCustomer c ON f.CustomerID = c.CustomerID
    JOIN 
        DimProduct p ON f.ProductID = p.ProductID;
END;
