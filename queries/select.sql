-- Select all employees with a salary greater than 20,000
SELECT * FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary > 20000;


-- Select all employees with a salary below 10,000
SELECT * FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary < 10000;

-- Select all employees who have a salary between 14.00 and 50,000
SELECT * FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary BETWEEN 14000 AND 50000;

-- Select the total number of employees
SELECT COUNT(emp_no) FROM employees;

-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;

-- Select the titles of the year 2019
SELECT * FROM titles WHERE from_date LIKE '2019%';
SELECT * FROM titles WHERE from_date BETWEEN '2019-01-01' AND '2019-12-31';


-- Select only the name of the employees in capital letters
SELECT DISTINCT UCASE(first_name) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT COUNT(emp_no)
FROM (SELECT emp_no FROM dept_emp GROUP BY emp_no HAVING COUNT(emp_no) > 1) employees;

-- Select the name, surname and number of times the employee has worked as a manager
SELECT employees.emp_no, employees.first_name, employees.last_name, Manager.times
FROM employees 
LEFT JOIN (SELECT emp_no, COUNT(emp_no) AS times FROM dept_manager GROUP BY emp_no) AS Manager
ON Manager.emp_no = employees.emp_no
HAVING Manager.times >= 1;

-- Select the name, surname and name of the current department of each employee
SELECT employees.emp_no, employees.first_name, employees.last_name, departments.dept_name
FROM employees
JOIN (SELECT emp_no, dept_no FROM dept_emp WHERE to_date = CURDATE()) AS T
ON employees.emp_no = T.emp_no
JOIN departments ON departments.dept_no = T.dept_no;