-- Select all employees with a salary greater than 20,000
SELECT E.emp_no, E.first_name, E.last_name, S.salary 
FROM employees E
JOIN salaries S
ON S.emp_no = E.emp_no 
WHERE S.salary >= 20000;

-- Select all employees with a salary below 10,000
SELECT EM.emp_no, EM.first_name, EM.last_name, SL.salary 
FROM employees AS EM
JOIN salaries AS SL
ON SL.emp_no = EM.emp_no 
WHERE SL.salary <= 10000;

-- Select all employees who have a salary between 14.00 and 50,000
SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary 
FROM employees 
JOIN salaries 
ON salaries.emp_no = employees.emp_no 
WHERE salaries.salary BETWEEN 14000 AND 50000;

-- Select the total number of employees
SELECT COUNT(*) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT COUNT(*) AS 'number of employees'
FROM dept_manager M
JOIN dept_emp E
ON M.emp_no = E.emp_no;

-- Select the titles of the year 2019
SELECT * FROM titles WHERE YEAR(from_date) = 2019 AND YEAR(to_date) = 2019;

-- Select only the name of the employees in capital letters
SELECT * FROM employees WHERE BINARY first_name = BINARY UPPER(first_name);

-- Select the name, surname and name of the current department of each employee
SELECT T.emp_no, EM.first_name, EM.last_name, T.to_date, DP.dept_name 
FROM (
    SELECT emp_no, MAX(to_date) as 'to_date', dept_no
    FROM dept_emp DEM
    GROUP BY emp_no
) AS T
JOIN departments DP
ON T.dept_no = DP.dept_no
JOIN employees EM
ON T.emp_no = EM.emp_no
ORDER BY T.emp_no;

OR

SELECT EM.emp_no, EM.first_name, EM.last_name, DEM.to_date, DP.dept_name
FROM employees EM
JOIN dept_emp DEM
ON EM.emp_no = DEM.emp_no
JOIN departments DP
ON DEM.dept_no = DP.dept_no
WHERE to_date IN (
    SELECT MAX(to_date) 'to_date'
    FROM dept_emp
    GROUP BY emp_no
)
ORDER BY EM.emp_no;

-- Select the name, surname and number of times the employee has worked as a manager
SELECT EM.first_name, EM.last_name, DP.dept_name, COUNT(DP.dept_name) 'Times'
FROM employees EM
JOIN dept_emp DEM
ON EM.emp_no = DEM.emp_no
JOIN departments DP
ON DEM.dept_no = DP.dept_no
WHERE DEM.dept_no = 3
GROUP BY DP.dept_name, EM.first_name, EM.last_name;

-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;
OR
SELECT emp_no, first_name FROM employees GROUP BY first_name;
