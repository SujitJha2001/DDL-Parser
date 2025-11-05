CREATE TABLE project_members (
    member_id SERIAL PRIMARY KEY,
    project_id INT NOT NULL,
    employee_id INT NOT NULL,
    role VARCHAR(50),
    -- EXPLICIT FOREIGN KEYS
    FOREIGN KEY (project_id) REFERENCES projects(project_id),
    FOREIGN KEY (employee_id) REFERENCES employees(employee_id)
);
