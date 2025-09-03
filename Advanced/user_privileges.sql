-- Create new user
CREATE USER 'devuser'@'localhost' IDENTIFIED BY 'password123';

-- Grant privileges
GRANT SELECT, INSERT ON CompanyDB.* TO 'devuser'@'localhost';
