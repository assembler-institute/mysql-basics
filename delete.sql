--Delete all employees with a salary greater than 20,000
    DELETE FROM salaries WHERE salary >20000;

--Remove the department that has more employees
DELETE FROM dept_emp WHERE COUNT(emp_no)
