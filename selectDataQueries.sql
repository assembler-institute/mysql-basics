-- Select all employees with a salary greater than 20,000
SELECT employees.*, salaries.salary 
FROM employees INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no
WHERE salary > 20000;

-- Select all employees with a salary below 10,000
SELECT employees.*, salaries.salary 
FROM employees INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no
WHERE salary < 10000;

-- Select all employees who have a salary between 14,000 and 50,000
SELECT employees.*, salaries.salary 
FROM employees INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no
WHERE salary > 14000 AND salary <= 50000;

-- Select the total number of employees
SELECT COUNT(*) FROM employees;

-- Select the total number of employees who have worked in more 
-- than one department
SELECT employees.* 
FROM employees INNER JOIN dept_emp
ON employees.emp_no = dept_emp.emp_no
GROUP BY employees.emp_no
HAVING COUNT(dept_emp.emp_no) > 1;

-- Select the titles of the year 2019
-- 1st way
SELECT * FROM titles
WHERE from_date BETWEEN '2019-01-01' AND '2019-12-31'; 

-- 2nd way
SELECT * FROM titles
WHERE YEAR(from_date) IN (2019);

-- Select only the name of the employees in capital letters
-- 1st way
SELECT * FROM employees
WHERE BINARY(first_name) = UPPER(first_name);

-- 2nd way
SELECT * FROM employees
WHERE UPPER(first_name) LIKE BINARY first_name;

-- Select the name, surname and name of the current department 
-- of each employee
SELECT first_name, last_name, departments.dept_name 
FROM (
    employees 
    INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
    INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
    );

-- Select the name, surname and number of times the employee has 
-- worked as a manager
SELECT first_name, last_name, M.times_as_manager 
FROM employees 
LEFT JOIN(
    SELECT emp_no, COUNT(emp_no) AS times_as_manager
    FROM dept_manager
    GROUP BY emp_no
    ) M ON employees.emp_no = M.emp_no
HAVING M.times_as_manager IS NOT NULL;

-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;