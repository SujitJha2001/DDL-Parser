CREATE TABLE dbo.users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);
