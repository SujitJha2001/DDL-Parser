CREATE TABLE companies1 (
    company_id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL,
    founded_date DATE
);

CREATE TABLE locations1 (
    location_id SERIAL PRIMARY KEY,
    location_name VARCHAR(100) NOT NULL,
    address TEXT
);
