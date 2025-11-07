CREATE TABLE dbo.products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(200) NOT NULL,
    category_id INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_by INT NOT NULL REFERENCES users(user_id),  -- Cross-reference to users + inline
    
    CONSTRAINT fk_products_categories FOREIGN KEY (category_id) 
    REFERENCES categories(category_id)  -- Standard FK to categories
);
