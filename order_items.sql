CREATE TABLE dbo.order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL REFERENCES orders(order_id),  -- Inline to orders
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL,
    
    CONSTRAINT fk_order_items_products FOREIGN KEY (product_id) 
    REFERENCES products(product_id),  -- Standard FK to products
    
    CONSTRAINT chk_quantity CHECK (quantity > 0)
);
