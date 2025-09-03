-- Check query execution plan
EXPLAIN SELECT * FROM Employees WHERE department = 'IT';

-- Optimize table
OPTIMIZE TABLE Employees;
