-- Average salary by department
SELECT department, AVG(salary) AS avg_salary
FROM Employees
GROUP BY department;
