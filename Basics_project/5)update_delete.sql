-- Update student email
UPDATE Students
SET email = 'alice.johnson@example.com'
WHERE first_name = 'Alice';

-- Update grade
UPDATE Enrollment
SET grade = 'A+'
WHERE student_id = 2 AND course_id = 2;

-- Delete a student
DELETE FROM Students
WHERE first_name = 'Charlie';

-- Delete an enrollment record
DELETE FROM Enrollment
WHERE enrollment_id = 3;
