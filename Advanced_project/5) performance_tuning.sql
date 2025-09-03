-- Check query execution plan
EXPLAIN SELECT s.first_name, s.last_name, c.course_name
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Computer Science';

-- Optimize tables
OPTIMIZE TABLE Students;
OPTIMIZE TABLE Courses;
OPTIMIZE TABLE Enrollment;

-- Example: Using indexes for faster search
SELECT * FROM Students WHERE last_name = 'Smith'; -- idx_lastname index used
