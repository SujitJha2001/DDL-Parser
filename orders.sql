CREATE TABLE dbo.orders (
    order_id INT PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),  -- Inline reference
    order_date DATETIME NOT NULL DEFAULT GETDATE(),
    total_amount DECIMAL(10,2) NOT NULL
);
