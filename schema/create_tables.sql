CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    City VARCHAR(50),
    CreatedDate DATETIME DEFAULT GETDATE()
);

CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY IDENTITY(1,1),
    CategoryName VARCHAR(100)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(100),
    CategoryID INT,
    Price DECIMAL(10,2),
    StockQuantity INT,

    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);


CREATE TABLE Orders (
    OrderID INT PRIMARY KEY IDENTITY(1,1),
    CustomerID INT,
    OrderDate DATETIME DEFAULT GETDATE(),
    Status VARCHAR(20),

    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE OrderItems (
    OrderItemID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    ProductID INT,
    Quantity INT,
    Price DECIMAL(10,2),

    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY IDENTITY(1,1),
    OrderID INT,
    PaymentDate DATETIME DEFAULT GETDATE(),
    Amount DECIMAL(10,2),
    PaymentMethod VARCHAR(50),

    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)
);
