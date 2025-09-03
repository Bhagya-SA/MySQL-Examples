-- Create a view
CREATE VIEW HighSalaryEmployees AS
SELECT name, salary FROM Employees WHERE salary > 50000;

-- Use the view
SELECT * FROM HighSalaryEmployees;
