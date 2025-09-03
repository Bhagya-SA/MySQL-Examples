-- Select all students
SELECT * FROM Students;

-- Select students with specific columns
SELECT first_name, last_name, email FROM Students;

-- Select students enrolled in Computer Science
SELECT s.first_name, s.last_name, c.course_name
FROM Students s
INNER JOIN Enrollment e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id
WHERE c.course_name = 'Computer Science';

-- Filter students by grade
SELECT s.first_name, s.last_name, e.grade
FROM Students s
JOIN Enrollment e ON s.student_id = e.student_id
WHERE e.grade = 'A';
