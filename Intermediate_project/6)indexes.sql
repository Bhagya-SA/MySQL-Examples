-- Index on last_name for faster search
CREATE INDEX idx_lastname ON Students(last_name);

-- Index on course_name in Courses table
CREATE INDEX idx_course_name ON Courses(course_name);

-- Composite index on student_id and course_id in Enrollment
CREATE INDEX idx_student_course ON Enrollment(student_id, course_id);
