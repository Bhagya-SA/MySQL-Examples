-- View of students with course names
CREATE VIEW StudentCourses AS
SELECT s.student_id, s.first_name, s.last_name, c.course_name, e.grade
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id;

-- Using the view
SELECT * FROM StudentCourses WHERE grade = 'A';

-- Another view: students not enrolled in any course
CREATE VIEW StudentsWithoutEnrollment AS
SELECT s.student_id, s.first_name, s.last_name
FROM Students s
LEFT JOIN Enrollment e ON s.student_id = e.student_id
WHERE e.enrollment_id IS NULL;
