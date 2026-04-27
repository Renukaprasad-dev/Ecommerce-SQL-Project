CREATE VIEW OrderSummary AS
SELECT 
    o.OrderID,
    c.Name AS CustomerName,
    o.OrderDate,
    SUM(oi.Quantity * oi.Price) AS TotalAmount
FROM Orders o
JOIN Customers c ON o.CustomerID = c.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
GROUP BY o.OrderID, c.Name, o.OrderDate;

SELECT * FROM OrderSummary;

