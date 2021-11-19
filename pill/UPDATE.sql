-- Update employees:
-- Change the name of an employee. To do this, generate a query that affects only a certain 
-- employee based on their name, surname and date of birth.
UPDATE employees
SET first_name = 'Alejandra'
WHERE first_name = 'Maribel' AND last_name='Chuy Barros' AND birth_date='1994-01-30';

-- Update departments:
-- Change the name of all departments.
UPDATE departments
SET dept_name = CONCAT(dept_name, ' updated');