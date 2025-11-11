-- In schema Deloitte
CREATE TABLE Deloitte.Client (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100)
);

-- In schema Sales  
CREATE TABLE Sales.PurchOrders (
    OrderID INT PRIMARY KEY,
    ClientID INT REFERENCES Deloitte.Client(ClientID)  -- Cross-schema reference
);
