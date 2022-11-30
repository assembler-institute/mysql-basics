-- Update employees:
-- * Change the name of an employee.
-- * To do this, generate a query that affects only a certain employee based on their name,
-- * surname and date of birth.

UPDATE employees SET first_name = 'Luis'
    WHERE first_name = 'Arturo' AND last_name = 'Salgado' AND birth_date = '1974-01-05';

-- Update departments:
-- * Change the name of all departments.

UPDATE departments
    SET dept_name = 'Direction Dept.'
    WHERE dept_no = 01;

UPDATE departments
    SET dept_name = 'Human Resources Dept.'
    WHERE dept_no = 2;

UPDATE departments
    -> SET dept_name = CONCAT(dept_name, ' Dept.')
    -> WHERE dept_no > 2;