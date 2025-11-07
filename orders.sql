CREATE TABLE dbo.Orders (
  OrderID int PRIMARY KEY,
  CustomerID int NOT NULL REFERENCES dbo.Customers(CustomerID),  -- Inline reference
  OrderDate datetime NOT NULL
);
