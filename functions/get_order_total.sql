CREATE FUNCTION GetOrderTotal (@OrderID INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @Total DECIMAL(10,2);

    SELECT @Total = SUM(Quantity * Price)
    FROM OrderItems
    WHERE OrderID = @OrderID;

    RETURN @Total;
END;

SELECT dbo.GetOrderTotal(1) AS TotalAmount;