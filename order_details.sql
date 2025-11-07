CREATE TABLE dbo.OrderDetails (
  OrderDetailID int PRIMARY KEY,
  OrderID int NOT NULL REFERENCES Orders(OrderID),  -- Inline reference
  ProductID int NOT NULL,
  Quantity int NOT NULL,
  CONSTRAINT FK_OrderDetails_Orders FOREIGN KEY (OrderID) REFERENCES dbo.Orders(OrderID)  -- Standard FK
);
