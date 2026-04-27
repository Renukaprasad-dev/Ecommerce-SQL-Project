CREATE TRIGGER UpdateStock
ON OrderItems
AFTER INSERT
AS
BEGIN
    UPDATE p
    SET p.StockQuantity = p.StockQuantity - i.Quantity
    FROM Products p
    JOIN inserted i ON p.ProductID = i.ProductID;
END;


--
CREATE INDEX idx_customer ON Orders(CustomerID);

--
BEGIN TRY
    INSERT INTO Payments (OrderID, Amount, PaymentMethod)
    VALUES (1, 5000, 'UPI');
END TRY

BEGIN CATCH
    SELECT ERROR_MESSAGE() AS ErrorMessage;
END CATCH;


