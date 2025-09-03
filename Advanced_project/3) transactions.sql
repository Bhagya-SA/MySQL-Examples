-- Transaction: Update multiple grades safely
START TRANSACTION;

UPDATE Enrollment SET grade = 'A+' WHERE student_id = 1 AND course_id = 1;
UPDATE Enrollment SET grade = 'B+' WHERE student_id = 2 AND course_id = 2;

-- Check and commit
COMMIT;

-- If something goes wrong, you can ROLLBACK instead
-- ROLLBACK;
