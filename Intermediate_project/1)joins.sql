-- Inner Join: Get student names with their enrolled courses
SELECT s.first_name, s.last_name, c.course_name, e.grade
FROM Students s
INNER JOIN Enrollment e ON s.student_id = e.student_id
INNER JOIN Courses c ON e.course_id = c.course_id;

-- Left Join: Get all students and their courses (even if not enrolled)
SELECT s.first_name, s.last_name, c.course_name
FROM Students s
LEFT JOIN Enrollment e ON s.student_id = e.student_id
LEFT JOIN Courses c ON e.course_id = c.course_id;

-- Right Join: Get all courses and students enrolled (even if no student)
SELECT s.first_name, s.last_name, c.course_name
FROM Students s
RIGHT JOIN Enrollment e ON s.student_id = e.student_id
RIGHT JOIN Courses c ON e.course_id = c.course_id;
