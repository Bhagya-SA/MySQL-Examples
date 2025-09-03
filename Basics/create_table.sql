-- Create Employees table
CREATE TABLE Employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(30),
    salary DECIMAL(10,2),
    hire_date DATE
);
