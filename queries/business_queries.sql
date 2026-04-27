--TASK 1: Find Top Customers (Who spent the most money)
SELECT 
    c.CustomerID,
    c.Name,
    SUM(oi.Quantity * oi.Price) AS TotalSpent
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID
JOIN OrderItems oi ON o.OrderID = oi.OrderID
GROUP BY c.CustomerID, c.Name
ORDER BY TotalSpent DESC;

--TASK 2: Monthly Revenue Report
SELECT 
    FORMAT(o.OrderDate, 'yyyy-MM') AS Month,
    SUM(oi.Quantity * oi.Price) AS Revenue
FROM Orders o
JOIN OrderItems oi ON o.OrderID = oi.OrderID
GROUP BY FORMAT(o.OrderDate, 'yyyy-MM')
ORDER BY Month;

--TASK 3: Top Selling Products
SELECT 
    p.ProductName,
    SUM(oi.Quantity) AS TotalSold
FROM Products p
JOIN OrderItems oi ON p.ProductID = oi.ProductID
GROUP BY p.ProductName
ORDER BY TotalSold DESC;

--TASK 4: Pending Orders
SELECT 
    OrderID,
    OrderDate,
    Status
FROM Orders
WHERE Status = 'Pending';

--TASK 5: Low Stock Products (Important in real business)
SELECT 
    ProductName,
    StockQuantity
FROM Products
WHERE StockQuantity < 10;

--TASK 6: Duplicate Email Check (Data Quality)
SELECT 
    Email,
    COUNT(*) AS Count
FROM Customers
GROUP BY Email
HAVING COUNT(*) > 1;
