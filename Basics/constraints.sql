-- Example of constraints
CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) UNIQUE NOT NULL
);

ALTER TABLE Employees 
ADD CONSTRAINT fk_dept FOREIGN KEY (department) REFERENCES Departments(dept_name);
