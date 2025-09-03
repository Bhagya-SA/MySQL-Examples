DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN deptName VARCHAR(30))
BEGIN
    SELECT * FROM Employees WHERE department = deptName;
END //
DELIMITER ;

-- Call procedure
CALL GetEmployeesByDept('IT');
