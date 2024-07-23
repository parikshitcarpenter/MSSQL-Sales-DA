CREATE VIEW vwSalesByDate AS
SELECT 
    t.OrderID,
    t.Day,
    t.Month,
    t.Year,
    t.Quarter,
    f.Sales,
    f.Profit,
    f.Quantity,
    f.Discount,
    f.Cost,
    f.CustomerID,
    f.ProductID,
    f.ShipMode
FROM 
    FactSales f
JOIN 
    DimTime t ON f.OrderID = t.OrderID;
