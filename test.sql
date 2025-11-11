-- In schema Deloitte
CREATE OR REPLACE TABLE Deloitte.Client (
    ClientID INT PRIMARY KEY,
    ClientName VARCHAR(100)
);

-- In schema Sales  
CREATE OR REPLACE TABLE Sales.PurchOrders (
    OrderID INT PRIMARY KEY,
    ClientID INT REFERENCES Deloitte.Client(ClientID)  -- Cross-schema reference
);
