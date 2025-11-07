CREATE TABLE dbo.reviews (
    review_id INT PRIMARY KEY,
    user_id INT NOT NULL REFERENCES users(user_id),      -- Inline to users
    product_id INT NOT NULL REFERENCES products(product_id),  -- Inline to products
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    review_text TEXT NULL,
    created_at DATETIME DEFAULT GETDATE(),
    
    CONSTRAINT uq_user_product UNIQUE (user_id, product_id)
);
