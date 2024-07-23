CREATE PROCEDURE spSalesByRegion
AS
BEGIN
    SELECT 
        c.Region,
        SUM(f.Sales) AS TotalSales,
        SUM(f.Profit) AS TotalProfit,
        SUM(f.Quantity) AS TotalQuantity
    FROM 
        FactSales f
    JOIN 
        DimCustomer c ON f.CustomerID = c.CustomerID
    GROUP BY 
        c.Region;
END;
