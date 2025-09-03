-- Students enrolled in the course with highest enrollment
SELECT first_name, last_name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Enrollment
    WHERE course_id = (
        SELECT course_id
        FROM Enrollment
        GROUP BY course_id
        ORDER BY COUNT(student_id) DESC
        LIMIT 1
    )
);

-- Students with grades 'A' or higher
SELECT first_name, last_name
FROM Students
WHERE student_id IN (
    SELECT student_id
    FROM Enrollment
    WHERE grade IN ('A', 'A+')
);
