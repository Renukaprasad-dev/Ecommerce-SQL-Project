INSERT INTO Customers (Name, Email, Phone, City)
VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Bangalore'),
('Priya Singh', 'priya@gmail.com', '9123456780', 'Delhi'),
('Amit Verma', 'amit@gmail.com', '9988776655', 'Mumbai'),
('Sneha Reddy', 'sneha@gmail.com', '9871234567', 'Hyderabad');

INSERT INTO Categories (CategoryName)
VALUES
('Electronics'),
('Clothing'),
('Home Appliances');

INSERT INTO Products (ProductName, CategoryID, Price, StockQuantity)
VALUES
('Laptop', 1, 60000, 10),
('Smartphone', 1, 30000, 20),
('T-Shirt', 2, 500, 100),
('Washing Machine', 3, 25000, 5);

INSERT INTO Orders (CustomerID, Status)
VALUES
(1, 'Delivered'),
(2, 'Pending'),
(3, 'Shipped'),
(1, 'Delivered');

INSERT INTO OrderItems (OrderID, ProductID, Quantity, Price)
VALUES
(1, 1, 1, 60000),
(1, 3, 2, 500),
(2, 2, 1, 30000),
(3, 4, 1, 25000),
(4, 2, 1, 30000);

INSERT INTO Payments (OrderID, Amount, PaymentMethod)
VALUES
(1, 61000, 'Credit Card'),
(2, 30000, 'UPI'),
(3, 25000, 'Debit Card'),
(4, 30000, 'UPI');

SELECT * FROM Customers;
SELECT * FROM Orders;
SELECT * FROM OrderItems;

