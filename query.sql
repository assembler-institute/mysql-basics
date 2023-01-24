
-- $$$ Insert data $$$ --

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (1, '1990-02-09', 'Maria', 'Ivanova', 'F', '2020-02-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (2, '1976-09-30', 'Gomer', 'Simpson', 'M', '2021-06-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (3, '1988-11-12', 'Alfred', 'Morgan', 'M', '2010-04-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (4, '1991-05-21', 'Coco', 'Chanel', 'F', '2018-07-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (5, '1989-10-07', 'Britney', 'Spears', 'F', '2020-04-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (6, '1990-09-03', 'Daniel', 'Green', 'M', '2015-08-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (7, '1992-11-07', 'Elvis', 'Presley', 'M', '2019-09-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (8, '1996-09-23', 'Devid', 'Smith', 'M', '2021-03-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (9, '1987-02-16', 'Maria', 'Duma', 'F', '2018-02-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (10, '1978-05-26', 'Emily', 'Cooper', 'F', '2017-07-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (11, '1993-04-12', 'Li', 'Won', 'M', '2023-01-10');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (12, '1987-07-27', 'Karry', 'Bradshow', 'F', '2010-02-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (13, '1970-07-11', 'Olivia', 'Gonzalez', 'F', '2011-04-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (14, '1974-04-19', 'Maria', 'Dubrova', 'F', '2013-02-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (15, '1999-12-09', 'Nikita', 'Mikhalkov', 'M', '2013-05-01');

INSERT INTO departments (dept_no, dept_name) 
	VALUES 
	('n1', 'Sales'),
	('n2', 'Administration'),
	('n3', 'HR'),
    ('n4', 'Finance'),
	('n5', 'Customer Service');

INSERT INTO titles (emp_no, title, from_date, to_date) 
	VALUES 
    (1, 'Degree in Law', '2020-09-01', now()),
	(2, 'Degree in Media and Communication', '2015-09-01', '2019-06-01'),
	(3, 'Degree in Social Sciences', '2013-09-01', '2017-06-01'),
	(4, 'Degree in Arts and Humanities', '2020-09-01', now()),
	(5, 'Master in Business and Economics', '2014-09-01', '2018-06-01'),
	(6, 'Master in Media and Communication', '2015-09-01', '2019-06-01'),
	(7, 'Master in Law', '2010-09-01', '2014-06-01'),
	(8, 'Master in Social Sciences', '2018-09-01', '2022-06-01'),
	(9, 'Master in Business and Economics', '2020-09-01', now()),
	(10, 'BA in Media and Communication', '2011-09-01', '2015-06-01'),
	(11, 'BA in Social Sciences', '2018-09-01', '2022-06-01'),
	(12, 'BA in Arts and Humanities', '2020-09-01', now()),
	(13, 'BA in Arts and Humanities', '2018-09-01', '2022-06-01'),
	(14, 'BA in Law', '2018-09-01', '2022-06-01'),
	(15, 'BA in Business and Economics', '2020-09-01', now());
    
INSERT INTO salaries (emp_no, salary, from_date, to_date)
	VALUES 
    (1, 24000, '2020-02-01', '2021-02-01'),
    (1, 30000, '2021-02-02', now()),
    (2, 24000, '2021-06-01', '2022-02-01'),
    (2, 28000, '2022-02-02', now()),
    (3, 18000, '2010-04-01', '2015-09-01'),
    (3, 30000, '2015-09-02', now()),
    (4, 26000, '2018-07-01', '2019-08-01'),
    (4, 32000, '2019-08-02', now()),
    (5, 26000, '2020-04-01', '2021-06-01'),
    (5, 36000, '2021-06-01', now()),
	(6, 31000, '2015-08-01', now()),
    (7, 33000, '2019-09-01', now()),
    (8, 23000, '2021-03-01', now()),
    (9, 28000, '2018-02-01', now()),
    (10, 35000, '2017-07-01', now()),
    (11, 19000, '2023-01-10', now()),
    (12, 45000, '2010-02-01', now()),
    (13, 36000, '2011-04-01', now()),
    (14, 32000, '2013-02-01', now()),
    (15, 39000, '2013-05-01', now());
    
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
	VALUES
    (2, 'n1', '2021-06-01', now()),
    (13, 'n2', '2011-04-01', '2020-04-02'),
    (5, 'n2', '2020-04-02', now()),
    (14, 'n3', '2013-02-01', now()),
    (2, 'n4', '2021-06-01', '2019-08-31'),
    (7, 'n4', '2019-09-01', now()),
    (4, 'n5', '2018-07-01', now());
    
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
	VALUES 
    (1, 'n1', '2020-02-01', '2021-01-31'),
    (1, 'n2', '2021-02-01', now()),
    (2, 'n2', '2021-06-01', now()),
    (3, 'n2', '2010-04-01', '2012-04-01'),
    (3, 'n4', '2012-04-02', now()),
    (4, 'n3', '2018-07-01', '2020-04-01'),
    (4, 'n5', '2020-04-02', now()),
	(5, 'n5', '2020-04-01', '2022-06-01'),
    (5, 'n3', '2022-06-02', now()),
    (6, 'n3', '2015-08-01', now()),
    (7, 'n4', '2019-09-01', '2021-06-01'),
    (7, 'n1', '2021-06-02', now()),
    (8, 'n3', '2021-03-01', '2023-01-01'),
    (8, 'n2', '2023-01-02', now()),
	(9, 'n4', '2018-02-01', '2020-01-01'),
    (9, 'n1', '2020-01-02', now()),
    (10, 'n1', '2017-07-01', '2020-05-01'),
    (10, 'n5', '2020-05-02', now()),
    (11, 'n3', '2023-01-10', now()),
	(12, 'n5', '2010-02-01', '2015-09-01'),
    (12, 'n1', '2015-09-01', '2020-11-01'),
    (12, 'n3', '2020-11-02', now()),
	(13, 'n4', '2011-04-01', '2018-11-01'),
    (13, 'n2', '2020-11-02', now()),
    (14, 'n4', '2013-02-01', '2018-08-01'),
    (14, 'n2', '2018-08-02', now()),
    (15, 'n3', '2013-05-01', '2018-10-01'),
    (15, 'n1', '2018-10-02', now());
    


-- $$$ UPDATE DATA $$$


SELECT * FROM employees;

-- Change the name of an employee --
UPDATE employees SET first_name = 'Megan' WHERE (first_name = 'Alicia' AND last_name LIKE '%nov%' AND birth_date > '1989-02-01');


SELECT * FROM departments;
-- Change the name of all departments --
UPDATE departments SET dept_name = 'Sales and marketing' WHERE (dept_no = 'n1');
UPDATE departments SET dept_name = 'Finance and Administration' WHERE (dept_no = 'n2');
UPDATE departments SET dept_name = 'PR and Publishing' WHERE (dept_no = 'n3');
UPDATE departments SET dept_name = 'HR and production' WHERE (dept_no = 'n4');
UPDATE departments SET dept_name = 'Customer Service and operations' WHERE (dept_no = 'n5');



-- $$$ GET DATA $$$

-- select ALL from Table "employees" --> add table 'salaries' where match up "emp_no" and salary of tab."salaries" >20000

-- Select all employees with a salary greater than 20,000, you must list all employees data and the salary (+28000 in my case)--
SELECT * FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no AND salaries.salary > 20000;
SELECT * FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no AND salaries.salary > 28000;

 -- Select all employees with a salary below 10,000, you must list all employees data and the salary --
SELECT * FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no AND salaries.salary < 20000;

-- Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary --
SELECT * FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no AND salaries.salary BETWEEN 20000 AND 30000;

-- Select the total number of employees --
SELECT COUNT(emp_no) AS 'Number of employees' FROM employees;

-- Select the total number of employees who have worked in more than one department --
SELECT COUNT(emp_no) AS 'Have worked in more than 1 dept' FROM (SELECT emp_no FROM dept_emp GROUP BY emp_no HAVING COUNT(emp_no) > 1) employees;

-- Select the titles of the year 2020 --
SELECT * FROM titles WHERE from_date BETWEEN '2020-01-01' AND '2020-12-31';

-- Select the name of all employees with capital letters --
SELECT UCASE(first_name) FROM employees;

-- Select the name of employees without any being repeated --
SELECT DISTINCT first_name FROM employees;
SELECT COUNT(DISTINCT first_name) FROM employees;

-- Select the name, surname and name of the current department of each employee
SELECT e.first_name, e.last_name, ds.dept_name FROM employees e JOIN dept_emp d ON E.emp_no = d.emp_no JOIN departments ds ON d.dept_no = ds.dept_no;
   -- take name+surname from table empl-s and name of dep-t from table departments -> join from table dept_emp (d meams short name of the table) whero matchs id of every employeer and then join -> table dp-ts where match id of dp-table

-- Select the name, surname and number of times the employee has worked as a manager
SELECT e.first_name, e.last_name, COUNT(*) FROM employees e, dept_manager dm WHERE e.emp_no = dm.emp_no GROUP BY e.first_name, e.last_name;



-- $$$ DELETE DATA $$$ 
 
-- Delete all employees with a salary greater than 20,000 (35000 in my case)
DELETE employees, salaries FROM employees INNER JOIN salaries ON salaries.emp_no = employees.emp_no AND salaries.salary > 35000;

-- Remove the department that has the most employees
DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY count(dept_no) desc limit 1);
