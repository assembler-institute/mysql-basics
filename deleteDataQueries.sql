-- Eliminate all employees with a salary greater than 20,000
DELETE FROM employees 
WHERE emp_no IN(
    SELECT emp_no FROM salaries 
    WHERE salary > 20000
    GROUP BY emp_no
);

-- Remove the department that has more employees
-- 1st way
DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no FROM(
        SELECT dept_no, MAX(D.max_count) FROM 
        (
            SELECT dept_no, COUNT(dept_no) as max_count 
            FROM dept_emp
            GROUP BY dept_no
        ) D
    )DD
);

-- 2nd way
DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no FROM 
    (
        SELECT dept_no, COUNT(dept_no) as max_count 
        FROM dept_emp
        GROUP BY dept_no 
        ORDER BY max_count DESC
        LIMIT 1
    ) D
);

