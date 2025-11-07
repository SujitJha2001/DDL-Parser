CREATE TABLE dbo.categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL,
    parent_category_id INT NULL REFERENCES categories(category_id)  -- Self-reference + inline
);
