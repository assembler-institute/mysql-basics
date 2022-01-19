-- 1.5.1 INSERT DATA


--15 new employees, at least 3 employees have the same name

-- 1 employee for check if works
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
    -> values (1, '2001-04-20', 'Roger', 'Mateu', 'M', '2020-09-27');

--14 employees add
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
    -> values
(2, '1986-03-30', 'Anna', 'Rodriguez', 'F', '2015-07-20'),
(3, '1986-03-31', 'Manuel', 'Gutierrez', 'M', '2016-01-07'),
(4, '1987-07-30', 'Laura', 'Fernandez', 'F', '2016-05-10'),
(5, '1990-07-01', 'Raquel', 'Perez', 'F', '2016-07-25'),
(6, '1991-03-08', 'Alex', 'Esteban', 'M', '2016-07-29'),
(7, '1993-02-16', 'Laura', 'Lopez', 'F', '2016-10-19'),
(8, '1993-12-11', 'Pau', 'Acereda', 'M', '2018-03-08'),
(9,	'1999-06-15', 'Marc', 'Gasol', 'M',	'2018-04-16'),
(10,'2000-09-08', 'Jordi', 'Fornos', 'M', '2018-08-28'),
(11,'2007-10-14', 'Carla', 'Berenguer', 'F', '2018-10-10'),
(12,'2008-11-06', 'Carmen', 'Gonzalez',	'F', '2019-01-01'),
(13,'2009-11-12', 'Jairo', 'Martin', 'M', '2019-10-01'),
(14,'2018-11-28', 'Laura', 'Sanchez', 'F', '2019-10-04'),
(15,'2019-03-24', 'Pol', 'Garcia', 'M', '2020-12-30');

--add salaries that are between a range of 5,000 and 50,000
INSERT INTO salaries (emp_no, salary, from_date, to_date)
    -> values
(1, 24300, '2019-01-04', '2021-03-26'),
(2, 41000, '2019-01-11', '2021-05-27'),
(3, 44900, '2019-01-29', '2021-07-08'),
(4, 9100, '2019-03-28', '2021-07-29'),
(5, 40600, '2019-04-08', '2021-08-06'),
(6, 28000, '2019-08-06', '2021-08-16'),
(7, 32800, '2019-08-20', '2021-08-24'),
(8, 27500, '2019-09-03', '2021-09-20'),
(9, 27400, '2019-10-01', '2021-09-23'),
(10, 29500, '2020-03-17', '2021-10-04'),
(11, 15000, '2020-06-03', '2021-10-06'),
(12, 4100, '2020-06-17', '2021-10-19'),
(13, 19800, '2020-06-30', '2021-11-03'),
(14, 40500, '2020-07-21', '2021-11-25'),
(15, 6500, '2020-10-20', '2021-12-24');

--add departaments
INSERT INTO departments (dept_no, dept_name)
    -> values
('1st', 'Production'),
('2nd', 'Purchasing'),
('3rd', 'Research and Development'),
('4th', 'Marketing'),
('5th', 'Accounting and Finance');

--10 employees belong to more than one department
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
    -> values
(1,	'1st',	'2021-01-07',	'2021-01-08'),
(2,	'2nd',	'2021-01-21',	'2021-01-12'),
(2,	'4th',	'2021-02-02',	'2021-02-04'),
(3,	'2nd',	'2021-03-10',	'2021-02-11'),
(3,	'4th',	'2021-03-19',	'2021-03-04'),
(4,	'5th',	'2021-03-25',	'2021-03-05'),
(5,	'3rd',	'2021-04-16',	'2021-03-16'),
(5,	'1st',	'2021-08-12',	'2021-03-26'),
(6,	'1st',	'2021-08-18',	'2021-04-01'),
(6,	'5th',	'2021-08-23',	'2021-04-19'),
(7,	'5th',	'2021-09-01',	'2021-06-01'),
(8,	'3rd',	'2021-12-13',	'2021-06-08'),
(8,	'4th',	'2021-12-14',	'2021-06-11'),
(9,	'4th',	'2021-12-16',	'2021-12-16'),
(9,	'5th',	'2021-12-30',	'2022-01-06'),
(10, '2nd',	'2021-03-08',	'2021-08-23'),
(10, '1st',	'2021-03-17',	'2021-09-02'),
(11, '2nd',	'2021-03-23',	'2021-11-01'),
(11, '4th',	'2021-03-30',	'2021-11-04'),
(12, '3rd',	'2021-04-01',	'2021-12-01'),
(13, '3rd',	'2021-07-01',	'2021-12-06'),
(13, '1st',	'2021-09-15',	'2021-12-09'),
(14, '5th',	'2021-09-30',	'2021-09-08'),
(15, '5th',	'2021-10-20',	'2021-12-08'),
(15, '4th',	'2021-11-09',	'2022-01-13');

--5 employees are managers
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
    -> values
(1,	'1st',	'2021-01-28',	'2021-07-22'),
(5,	'3rd',	'2021-03-03',	'2021-08-11'),
(7,	'5th',	'2021-05-06',	'2021-09-24'),
(8,	'4th',	'2021-06-09',	'2021-12-21'),
(11,'2nd',	'2021-06-14',	'2022-01-06');

--All employees have a degree and at least 5 titles are from 202
INSERT INTO titles (emp_no, title, from_date, to_date)
    -> values
(1,	'B.A. English', '2000-09-08', null),
(2,	'B.S. Business Administration',	'2001-01-05', null),
(3,	'B.F.A. Graphic Arts', '2020-03-26', null),
(4,	'B.A.S. Industrial Technology',	'2001-06-20', null),
(5,	'M. MUS', '2005-03-08', null),
(6,	'M.Ed. Master Teacher', '2020-05-05', null),
(7,	'Bachelor of Science', '2009-12-03', null),
(8,	'Bachelor of Arts', '2010-06-30', null),
(9,	'Master of Arts', '2020-03-20', null),
(10, 'Doctor of Philosophy', '2015-11-27', null),
(11, 'B.A.S. Industrial Technology','2016-06-30', null),
(12, 'B.A. English', '2017-04-04', null),
(13, 'B.F.A. Graphic Arts', '2020-06-06', null),
(14, 'Doctor of Philosophy', '2018-04-04', null),
(15, 'Bachelor of Science', '2020-08-31', null);


--1.5.2 UPDATE DATA

--Change the employee that: name is Raquel, surname is Perez, and birthday is 1990-07-01
UPDATE employees
SET first_name = 'Maria'
WHERE (first_name = 'Raquel' AND
last_name = 'Perez' AND
birth_date = '1990-07-01');

--Change the name of all departments.
UPDATE departments
SET dept_name =
CASE
WHEN dept_no = '1st' THEN 'Production of Materials'
WHEN dept_no = '2nd' THEN 'Purchasing of Art'
WHEN dept_no = '3rd' THEN 'Research and Development of Companies'
WHEN dept_no = '4th' THEN 'Marketing of Videogames'
WHEN dept_no = '5th' THEN 'Accounting and Finance of Money'
END;


--1.5.3 GET DATA

-- Select all employees with a salary greater than 20,000.
SELECT *
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND
salaries.salary > 20000;

-- Select all employees with a salary below 10,000.
SELECT *
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND
salaries.salary < 10000;

-- Select all employees who have a salary between 14,000 and 50,000.
SELECT *
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND
salaries.salary BETWEEN 14000 AND 50000;

-- Select the total number of employees.
SELECT COUNT(emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department.
SELECT COUNT(emp_no)
FROM (
SELECT emp_no
FROM dept_emp
GROUP BY emp_no
HAVING COUNT(emp_no) > 1) employees;

-- Select the titles of the year 2020.
SELECT *
FROM titles
WHERE from_date
BETWEEN '2020-01-01' AND '2020-12-31';

-- Select only the name of the employees in capital letters.
SELECT UCASE(first_name) FROM employees;

-- Select the name, surname and name of the current department of each employee.
SELECT E.first_name, E.last_name, D.dept_name
FROM employees E
JOIN (
SELECT emp_no, dept_no, from_date
FROM dept_emp
WHERE from_date IN (
SELECT MAX(from_date)
FROM dept_emp
GROUP BY emp_no)
) recent_depts ON E.emp_no = recent_depts.emp_no
JOIN departments D ON recent_depts.dept_no = D.dept_no
ORDER BY E.emp_no;

-- Select the name, surname and number of times the employee has worked as a manager.
SELECT E.first_name, E.last_name, M.times_manager
FROM employees E
LEFT JOIN (
    SELECT emp_no, COUNT(*) AS times_manager
    FROM dept_manager
    GROUP BY emp_no
) M ON E.emp_no = M.emp_no;

-- Select the name without any being repeated.
SELECT DISTINCT first_name FROM employees;


-- 4. DATA DELETION:

-- Eliminate all employees with a salary greater than 20,000 (assuming the salary paid today).
DELETE FROM employees
WHERE emp_no IN (
SELECT E.emp_no
FROM employees E
JOIN salaries S ON E.emp_no = S.emp_no
WHERE S.salary > 20000 AND S.to_date >= CURDATE()
);

-- Remove the department that has the most employees.
DELETE FROM departments
WHERE dept_no = (
    SELECT dept_no
    FROM dept_emp
    WHERE to_date >= CURDATE()
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC
    LIMIT 1
);