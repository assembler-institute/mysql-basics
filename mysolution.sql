-- Importing employees databse
source employees.sql;

-- Entering into our database
USE employees;

-- INSERT SECTION

-- Inserting one test employee
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values (1, '1980-03-20', 'Andres', 'Genova', 'M', '2019-12-03');

-- Inserting 14 employees (3 with the same name)
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values (2, '1981-12-24', 'Surya', 'Hrodger', 'F', '1998-02-13'),
(3, '1981-12-24', 'Deepa', 'Gofraidh', 'F', '2000-12-11'),
(4, '1984-01-12', 'Stanley', 'Phương', 'M', '2002-12-05'),
(5, '1985-02-26', 'Adalberto', 'Bojidar', 'M', '2004-07-26'),
(6, '1986-09-02', 'Arseni', 'Kehinde', 'F', '2004-10-08'),
(7, '1987-04-28', 'Tomas', 'Torny', 'M', '2005-06-13'),
(8, '1987-06-11', 'Joanna', 'Peredur', 'F', '2006-09-02'),
(9, '1987-07-22', 'Cat', 'Ivet', 'F', '2006-11-10'),
(10, '1988-06-17', 'Tomas', 'Iðunn', 'M', '2008-07-02'),
(11, '1989-01-23', 'Quirijn', 'Tadesse', 'M', '2013-06-20'),
(12, '1991-12-19', 'Evandrus', 'Daria', 'F', '2013-07-29'),
(13, '1993-10-12', 'Tomas', 'Andréia', 'M', '2013-09-01'),
(14, '1995-05-10', 'Metehan', 'Mukhtar', 'M', '2016-03-29'),
(15, '1995-06-19', 'Kallistrate', 'Muhsina', 'F', '2016-09-05');

-- Inserting salaries
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values (1, 27500, '2019-12-03', now()),
(2, 18000, '1998-02-13', '2002-12-31'),
(2, 20000, '2002-12-31', now()),
(3, 11000, '2000-12-11', now()),
(4, 10000, '1995-09-05', '2002-12-05'),
(4, 27000, '2002-12-05', now()),
(5, 6500, '2004-07-26', now()),
(6, 46500, '2000-10-08', '2004-10-08'),
(6, 57500, '2004-10-08', now()),
(7, 30500, '2005-06-13', now()),
(8, 23000, '1999-09-02', '2006-09-02'),
(8, 35000, '2006-09-02', now()),
(9, 22000, '2006-11-10', now()),
(10, 26750, '2003-07-02', '2008-07-02'),
(10, 41500, '2008-07-02', now()),
(11, 15000, '2013-06-20', now()),
(12, 48750, '2013-07-29', now()),
(13, 33500, '2013-09-01', now()),
(14, 5500, '2016-03-29', now()),
(15, 15000, '2016-09-05', now());

-- Creating departments
INSERT INTO departments (dept_no, dept_name)
values
('1d', 'marketing'),
('2d', 'sales'),
('3d', 'purchasing'),
('4d', 'engineering'),
('5d', 'administration'),
('6d', 'finance');

-- Inserting employee's departments
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
values
(1, '1d', '2019-12-03', '2021-03-12'),
(1, '2d', '2021-12-03', now()),
(2, '4d', '1998-02-13', '2002-02-15'),
(2, '6d', '2002-02-15', now()),
(3, '3d', '2000-12-11', '2004-12-11'),
(3, '5d', '2004-12-11', now()),
(4, '4d', '2002-12-05', '2007-12-05'),
(4, '5d', '2007-12-05', now()),
(5, '3d', '2004-07-26', '2015-07-26'),
(5, '6d', '2015-07-26', now()),
(6, '1d', '2004-10-08', '2009-10-08'),
(6, '3d', '2009-10-08', now()),
(7, '2d', '2005-06-13', '2018-06-13'),
(7, '1d', '2018-06-13', now()),
(8, '4d', '2006-09-02', '2012-09-02'),
(8, '6d', '2012-09-02', now()),
(9, '3d', '2006-11-10', '2020-11-10'),
(9, '5d', '2020-11-10', now()),
(10, '4d', '2008-07-02', now()),
(11, '5d', '2013-06-20', '2019-06-20'),
(11, '6d', '2019-06-20', now()),
(12, '1d', '2013-07-29', now()),
(13, '2d', '2013-09-01', now()),
(14, '3d', '2016-03-29', now()),
(15, '5d', '2016-09-05', now());

-- Manager data
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values
('1d', 7, '2018-06-13', now()),
('2d', 13, '2013-09-01', now()),
('3d', 6, '2009-10-08', now()),
('4d', 10, '2008-07-02', now()),
('5d', 3, '2004-12-11', now()),
('6d', 6, '2009-10-08', now());



-- Inserting employees titles
INSERT INTO  titles (emp_no, title, from_date, to_date) 
values 
(1, 'Marketing Degree', '2020-08-02', null), 
(2, 'BA Economics', '2002-10-03', null), 
(3, 'BA Economics', '2016-10-28', null), 
(4, 'Industrial Engineering Degree', '2000-10-03', null), 
(5, 'Economics Degree', '2020-08-20', null), 
(6, 'BA Economics', '2016-09-31', null), 
(7, 'Marketing Master', '2020-07-19', null), 
(8, 'Chemical Engineering Master', '1998-05-17', null), 
(9, 'BA Business', '2005-06-11', null), 
(10, 'Mechanical Engineering Degree', '2020-07-27', null), 
(11, 'BA Business', '2012-04-23', null), 
(12, 'Marketing Degree', '2020-05-10', null), 
(13, 'BA Economics', '2001-12-14', null), 
(14, 'Human Resource Degree', '2019-12-09', null), 
(15, 'Economics Degree', '2006-10-04', null);


---------------------------------------------------------------------

-- UPDATE SECTION

-- Changing the name of one employee, based of name, last name and date of birth
UPDATE employees SET first_name = 'Zlatan' WHERE
( first_name = 'Stanley' AND last_name = 'Phương' AND birth_date = '1984-01-12');

-- Changing all departments name
UPDATE departments SET dept_name = 
CASE
WHEN dept_no = '1d' THEN 'Production'
WHEN dept_no = '2d' THEN 'Human Resources'
WHEN dept_no = '3d' THEN 'R&D'
WHEN dept_no = '4d' THEN 'Logistics'
WHEN dept_no = '5d' THEN 'Payroll'
WHEN dept_no = '6d' THEN 'Events'
END;

---------------------------------------------------------------------

-- GET SECTION

-- Getting all employees with salary > 20000 using DISCTINCT in case of more than one salary for one employee
SELECT DISTINCT employees.first_name FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND salaries.salary > 20000;

-- Getting all employees with salary < 10000 using DISCTINCT in case of more than one salary for one employee
SELECT DISTINCT employees.first_name FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND salaries.salary < 10000;

-- Getting all employees with 14000 < salary < 50000
SELECT DISTINCT employees.first_name FROM employees INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND salaries.salary BETWEEN 14000 AND 50000;

-- Total number of employees
SELECT COUNT(*) FROM employees;

-- Number of employees who work in more than departments
SELECT COUNT(*) FROM
(SELECT emp_no FROM dept_emp GROUP BY emp_no HAVING COUNT(emp_no) > 1)
employees;

-- Titles from 2019
SELECT title FROM titles WHERE from_date LIKE '2019%';

-- Name the employees in capital letters
SELECT UCASE(first_name) FROM employees;

-- Name, surname and department name of each employee
SELECT employees.first_name, employees.last_name, departments.dept_name
FROM
employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
AND dept_emp.to_date LIKE '2021%'
JOIN departments on dept_emp.dept_no = departments.dept_no;


-- Name, surname and number of times worked as manager
SELECT employees.first_name, employees.last_name, COUNT(departments.dept_name)
FROM
employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
AND dept_emp.dept_no = 6
GROUP BY employees.first_name, employees.last_name, departments.dept_name;

-- Employees name without any being repeated
SELECT DISTINCT first_name FROM employees;

---------------------------------------------------------------------

-- DELETE Section

-- Deleting employees with salary > 20000
DELETE FROM employees WHERE emp_no IN 
(SELECT employees.emp_no FROM employees JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary > 20000 AND salaries.to_date >= CURDATE());

-- Deleting department with most employees
DELETE FROM departments 
(SELECT dept_no FROM dept_emp WHERE to_date >= CURDATE() 
GROUP BY dept_no ORDER BY COUNT(DISTINCT emp_no) DESC LIMIT 1);