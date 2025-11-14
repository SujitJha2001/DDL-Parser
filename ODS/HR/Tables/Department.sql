CREATE OR REPLACE TABLE HR.Department (
    DepartmentID INT PRIMARY KEY,
    DepartmentCode VARCHAR(10) NOT NULL UNIQUE,
    DepartmentName VARCHAR(100) NOT NULL,
    ManagerID INT NULL,
    Location VARCHAR(100),
    Budget DECIMAL(15,2),
    CreatedDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
