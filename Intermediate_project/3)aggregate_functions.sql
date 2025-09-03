-- Total number of students
SELECT COUNT(*) AS total_students FROM Students;

-- Highest student ID
SELECT MAX(student_id) AS highest_id FROM Students;

-- Earliest and latest DOB
SELECT MIN(dob) AS oldest_student, MAX(dob) AS youngest_student FROM Students;

-- Count students in each gender
SELECT gender, COUNT(*) AS total FROM Students GROUP BY gender;
