-- 4. DELETE DATA

  -- DELETE ALL EMPLOYEES WHO HAVE A SALARY OF $20000 OR HIGHER (TODAY):

DELETE FROM employees
WHERE emp_no IN (
    SELECT EMP.emp_no
    FROM (SELECT * FROM employees) AS EMP
    JOIN salaries SAL ON EMP.emp_no = SAL.emp_no
    WHERE SAL.salary >= 20000 AND SAL.to_date >= '2021-11-01'
);

-- REMOVE THE DEPARTMENT WHICH HAS THE HIGHER NUMBER OF EMPLOYEES

DELETE FROM departments
WHERE dept_no = (
    SELECT dept_no
    FROM dept_emp
    WHERE to_date >= CURDATE()
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC
    LIMIT 1
);