-- Stored Procedure: Get all students by course
DELIMITER //
CREATE PROCEDURE GetStudentsByCourse(IN courseName VARCHAR(100))
BEGIN
    SELECT s.first_name, s.last_name, c.course_name, e.grade
    FROM Students s
    JOIN Enrollment e ON s.student_id = e.student_id
    JOIN Courses c ON e.course_id = c.course_id
    WHERE c.course_name = courseName;
END //
DELIMITER ;

-- Call the procedure
CALL GetStudentsByCourse('Computer Science');
