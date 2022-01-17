-- Update Employee name

UPDATE employees
SET first_name = 'Penelope'
WHERE employees.emp_no = 9;

--Update Department name
UPDATE departments
SET dept_name = 'Dep. Finance '
WHERE departments.dept_no = '1';
UPDATE departments
SET dept_name = 'Dep. Human Resources'
WHERE departments.dept_no = '2';
UPDATE departments
SET dept_name = 'Dep. Marketing'
WHERE departments.dept_no = '3';
UPDATE departments
SET dept_name = 'Dep. Sales'
WHERE departments.dept_no = '4';
UPDATE departments
SET dept_name = 'Dep. General Management'
WHERE departments.dept_no = '5';
UPDATE departments
SET dept_name = 'Dep. Logistics'
HERE departments.dept_no = '6';