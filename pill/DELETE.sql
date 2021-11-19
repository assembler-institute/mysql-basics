-- Eliminate all employees with a salary greater than 20,000
DELETE employees
FROM employees 
JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary > 20000;

-- Remove the department that has more employees
DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no FROM (
        SELECT dept_no, COUNT(*) C 
        FROM dept_emp 
        GROUP BY dept_no 
        ORDER BY C DESC 
        LIMIT 1
        ) T
    );

OR

DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no
    FROM dept_emp 
    GROUP BY dept_no 
    ORDER BY COUNT(*) DESC 
    LIMIT 1
);



