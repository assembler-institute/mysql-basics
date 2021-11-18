-- Update employees
SET SQL_SAFE_UPDATES = 0;
UPDATE employees 
SET first_name = 'Maqueña'
WHERE first_name = 'Ana' 
	AND last_name = 'Navarra'
    AND birth_date = '1984-02-18';
SET SQL_SAFE_UPDATES = 1;

-- Update departments
UPDATE departments SET dept_name = 'Supply Chain Management' WHERE dept_no = 'D01'; 
UPDATE departments SET dept_name = 'Sales & Marketing' WHERE dept_no = 'D02';
UPDATE departments SET dept_name = 'Finance & Accounting' WHERE dept_no = 'D03';
UPDATE departments SET dept_name = 'Administration' WHERE dept_no = 'D04';
UPDATE departments SET dept_name = 'Manufacturing' WHERE dept_no = 'D05';
UPDATE departments SET dept_name = 'Research & Development' WHERE dept_no = 'D06';