CREATE TABLE ODS.Deloitte.orphan_table (
    id SERIAL PRIMARY KEY,
    non_existent_parent_id INT NOT NULL,
    FOREIGN KEY (non_existent_parent_id) REFERENCES ODS.Deloitte.non_existent_table(id)
);
