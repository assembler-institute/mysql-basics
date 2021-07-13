-- Eliminate all employees with a salary greater than 20,000

DELETE employees
    FROM employees
    INNER JOIN salaries on salaries.emp_no = employees.emp_no
    WHERE salaries.salary > 20000;

-- Remove the department that has more employees

DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no FROM 
    (
        SELECT dept_no, COUNT(dept_no) as workers 
        FROM dept_emp
        GROUP BY dept_no 
        ORDER BY workers DESC LIMIT 1
    ) F
);