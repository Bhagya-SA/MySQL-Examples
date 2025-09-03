-- Count number of students in each course
SELECT c.course_name, COUNT(e.student_id) AS total_students
FROM Courses c
LEFT JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name;

-- Average grade by course (Assume grade mapped to numeric: A=4, B=3, etc.)
-- For simplicity, just display count of each grade
SELECT c.course_name, e.grade, COUNT(*) AS total
FROM Courses c
JOIN Enrollment e ON c.course_id = e.course_id
GROUP BY c.course_name, e.grade;
