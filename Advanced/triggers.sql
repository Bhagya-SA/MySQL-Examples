-- Trigger before inserting employee
DELIMITER //
CREATE TRIGGER before_employee_insert
BEFORE INSERT ON Employees
FOR EACH ROW
BEGIN
    IF NEW.salary < 30000 THEN
        SET NEW.salary = 30000; -- minimum salary rule
    END IF;
END //
DELIMITER ;
