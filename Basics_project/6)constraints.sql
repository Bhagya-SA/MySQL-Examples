-- Add a UNIQUE constraint to phone numbers
ALTER TABLE Students
ADD CONSTRAINT unique_phone UNIQUE (phone);

-- Add a NOT NULL constraint to enrollment_date in Enrollment
ALTER TABLE Enrollment
MODIFY enrollment_date DATE NOT NULL;

-- Add a CHECK constraint for grade values
ALTER TABLE Enrollment
ADD CONSTRAINT chk_grade CHECK (grade IN ('A','B','C','D','F','A+','B+','C+'));
