CREATE PROCEDURE GetCustomerOrders
    @CustomerID INT
AS
BEGIN
    SELECT * 
    FROM Orders
    WHERE CustomerID = @CustomerID;
END;

EXEC GetCustomerOrders @CustomerID = 1;

