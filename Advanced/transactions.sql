START TRANSACTION;

UPDATE Employees SET salary = salary - 5000 WHERE name = 'Bob';
UPDATE Employees SET salary = salary + 5000 WHERE name = 'Charlie';

-- Commit or rollback
COMMIT;
-- ROLLBACK;
