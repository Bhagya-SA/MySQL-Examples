-- INNER JOIN
SELECT e.name, d.dept_name
FROM Employees e
INNER JOIN Departments d ON e.department = d.dept_name;

-- LEFT JOIN
SELECT e.name, d.dept_name
FROM Employees e
LEFT JOIN Departments d ON e.department = d.dept_name;
