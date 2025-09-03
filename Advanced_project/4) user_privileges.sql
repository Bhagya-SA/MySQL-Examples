-- Create a new MySQL user
CREATE USER 'student_user'@'localhost' IDENTIFIED BY 'password123';

-- Grant privileges for StudentDB
GRANT SELECT, INSERT, UPDATE, DELETE ON StudentDB.* TO 'student_user'@'localhost';

-- Check privileges
SHOW GRANTS FOR 'student_user'@'localhost';
