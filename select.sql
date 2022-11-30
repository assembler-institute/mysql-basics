-- Select all employees with a salary greater than 20,000

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary
    FROM employees
    INNER JOIN salaries on salaries.emp_no = employees.emp_no
    WHERE salaries.salary > 20000;

-- Select all employees with a salary below 10,000

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary
    FROM employees
    INNER JOIN salaries on salaries.emp_no = employees.emp_no
    WHERE salaries.salary < 10000;

-- Select all employees who have a salary between 14.00 and 50,000

SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary
    FROM employees
    INNER JOIN salaries on salaries.emp_no = employees.emp_no
    WHERE salaries.salary
    BETWEEN 14000 AND 50000;

-- Select the total number of employees

SELECT COUNT(emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department

SELECT emp_no, COUNT(emp_no)
    FROM dept_emp
    GROUP BY emp_no
    HAVING COUNT(emp_no) > 1;

-- Select the titles of the year 2019

SELECT employees.emp_no, employees.first_name, employees.last_name, titles.title, titles.from_date
    FROM employees
    INNER JOIN titles on titles.emp_no = employees.emp_no
    WHERE titles.from_date BETWEEN '2019-01-01' AND '2019-12-31';

-- Select only the name of the employees in capital letters

SELECT first_name
    FROM employees
    WHERE UPPER(first_name) LIKE BINARY first_name;

-- Select the name, surname and name of the current department of each employee

SELECT employees.first_name, employees.last_name, departments.dept_name
    FROM dept_emp
    INNER JOIN employees on employees.emp_no = dept_emp.emp_no
    INNER JOIN departments on departments.dept_no = dept_emp.dept_no
    WHERE dept_emp.to_date BETWEEN '2021-01-01' AND '2021-12-31';

-- Select the name, surname and number of times the employee has worked as a manager

SELECT employees.first_name, employees.last_name, COUNT(dept_manager.emp_no)
    FROM dept_manager
    INNER JOIN employees on employees.emp_no = dept_manager.emp_no
    GROUP BY dept_manager.emp_no;

-- Select the name of employees without any being repeated

SELECT DISTINCT(first_name)
    -> FROM employees;