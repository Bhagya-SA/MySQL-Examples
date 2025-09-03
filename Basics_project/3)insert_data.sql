-- Insert data into Students table
INSERT INTO Students (first_name, last_name, gender, dob, email, phone)
VALUES 
('Alice', 'Johnson', 'Female', '2000-03-15', 'alice@example.com', '9876543210'),
('Bob', 'Smith', 'Male', '1999-07-22', 'bob@example.com', '9123456780'),
('Charlie', 'Brown', 'Male', '2001-12-05', 'charlie@example.com', '9988776655');

-- Insert data into Courses table
INSERT INTO Courses (course_name, course_duration)
VALUES
('Computer Science', '4 years'),
('Mathematics', '3 years'),
('Physics', '3 years');

-- Insert data into Enrollment table
INSERT INTO Enrollment (student_id, course_id, enrollment_date, grade)
VALUES
(1, 1, '2023-07-01', 'A'),
(2, 2, '2023-07-02', 'B'),
(3, 3, '2023-07-03', 'A');
