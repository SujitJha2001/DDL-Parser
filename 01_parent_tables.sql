CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    company_id INT NOT NULL,
    location_id INT,  -- Optional reference to locations
    created_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    budget DECIMAL(15,3),
    -- EXPLICIT FOREIGN KEYS
    FOREIGN KEY (company_id) REFERENCES companies(company_id),
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    department_id INT NOT NULL,  -- MUST have a department
    -- EXPLICIT FOREIGN KEY
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);
