-- Trigger: Ensure grade is valid before insert
DELIMITER //
CREATE TRIGGER before_enrollment_insert
BEFORE INSERT ON Enrollment
FOR EACH ROW
BEGIN
    IF NEW.grade NOT IN ('A','B','C','D','F','A+','B+','C+') THEN
        SET NEW.grade = 'F'; -- default grade if invalid
    END IF;
END //
DELIMITER ;

-- Trigger: Log updates to student emails
DELIMITER //
CREATE TRIGGER after_student_email_update
AFTER UPDATE ON Students
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO EmailLog(student_id, old_email, new_email, change_date)
        VALUES (OLD.student_id, OLD.email, NEW.email, NOW());
    END IF;
END //
DELIMITER ;

-- Create EmailLog table to support trigger
CREATE TABLE IF NOT EXISTS EmailLog (
    log_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT,
    old_email VARCHAR(100),
    new_email VARCHAR(100),
    change_date DATETIME,
    FOREIGN KEY (student_id) REFERENCES Students(student_id)
);
