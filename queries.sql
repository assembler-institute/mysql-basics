
-- SHOW TABLES AND RESULTS
SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM dept_emp;
SELECT * FROM dept_manager;
SELECT * FROM salaries;
SELECT * FROM titles;

-- SHOW Primary Keys and Foreigns Keys
SHOW CREATE TABLE titles;
SHOW CREATE TABLE salaries;
SHOW CREATE TABLE departments;
SHOW CREATE TABLE employees;
SHOW CREATE TABLE dept_emp;
SHOW CREATE TABLE dept_manager;


-- INSERT DATA --
-- ADD EMPLOYEES (NO LOS PONGO TODOS PORQUE SE FUE LA LUZ Y PERDI LOS DATOS, ES SOLO REPRESENTATIVA)
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES
	(1, '1986-06-11', 'Juan Francisco', 'Solano', 'M', '2022-09-28'),
    (2, '1980-04-21', 'Juan Francisco', 'Perez', 'M', '2022-09-28');

-- ADD ALL DEPT
INSERT INTO departments (dept_no, dept_name) VALUES (1, 'Administracion');
INSERT INTO departments (dept_no, dept_name) VALUES (2, 'Informatica');
INSERT INTO departments (dept_no, dept_name) VALUES (3, 'Hosteleria');
INSERT INTO departments (dept_no, dept_name) VALUES (4, 'Recepción');
INSERT INTO departments (dept_no, dept_name) VALUES (5, 'Direccion');

-- ADD SALARIES TO EMPLOYEES
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1, 50000, '2022-06-01', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (2, 50000, '2022-01-01', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (3, 5000, '2020-02-15', '2021-02-15');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (3, 25000, '2021-02-15', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (4, 25000, '2012-05-18', '2015-05-18');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (4, 35000, '2015-05-18', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (5, 30000, '2020-11-08', '2021-11-08');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (5, 40000, '2021-11-08', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (6, 35000, '2010-03-04', '2015-03-04');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (6, 45000, '2010-03-04', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (7, 40000, '2019-07-29', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (8, 45000, '2015-12-28', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (9, 45000, '2011-11-11', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (10, 5000, '2005-03-15', '2015-03-15');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (10, 25000, '2015-03-15', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (11, 15000, '2008-03-15', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (12, 25000, '2009-09-09', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (13, 30000, '2015-10-18', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (14, 10000, '2021-12-16', CURDATE());
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (15, 15000, '2021-10-10', CURDATE());

-- ADD TITLES TO EMPLOYEES
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (1, 'Software Developer', '2018-06-22', '2022-06-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (2, 'Chef Ramsy', '2010-10-10', '2012-10-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (3, 'Dirección de empresas', '2016-06-22', '2020-06-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (4, 'Dirección de empresas', '2017-06-22', '2021-06-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (5, 'Sistemas Microinformaticos y de redes', '2018-06-22', '2020-06-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (6, 'Software Developer', '2016-03-12', '2020-03-12');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (7, 'Software Developer', '2018-06-22', '2019-06-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (8, 'Software Developer', '2018-06-22', '2019-06-22');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (9, 'Direccion de empresas', '2015-07-12', '2019-07-12');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (10, 'Idiomas', '2012-06-06', '2016-06-06');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (11, 'Idiomas', '2014-06-26', '2018-06-26');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (12, 'Administracion de Fincas', '2006-06-12', '2010-06-28');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (13, 'Administrador', '2017-01-20', '2021-01-29');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (14, 'Administrador', '2014-01-02', '2018-02-02');
INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (15, 'Chef Ramsy', '2019-02-22', '2020-02-12');

--ADD MANAGERS
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (1, 2, '2022-06-01', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (2, 3, '2022-01-01', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (9, 5, '2011-11-11', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (13, 1, '2015-10-18', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (10, 4, '2015-03-15', CURDATE());

--ADD EMPLOYEES TO DEPT
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) 
VALUES
	(1, 2, '2022-06-01', CURDATE()),
    (1, 5, '2022-06-01', CURDATE()),
    (2, 3, '2022-01-01', CURDATE()),
    (3, 5, '2016-06-22', CURDATE()),
    (4, 5, '2017-06-22', CURDATE()),
    (5, 2, '2018-06-22', CURDATE()),
    (5, 1, '2018-06-22', CURDATE()), 
    (6, 2, '2010-03-04', CURDATE()), 
    (7, 2, '2019-07-29', CURDATE()),
    (8, 2, '2015-12-28', CURDATE()),
    (9, 5, '2011-11-11', CURDATE()),
    (10, 4, '2015-03-15', CURDATE()),
    (11, 4, '2008-03-15', CURDATE()),
    (12, 1, '2009-09-09', CURDATE()),
    (13, 1, '2015-10-18', CURDATE()),
    (14, 1, '2021-12-16', CURDATE()),
    (15, 3, '2021-10-10', CURDATE()),
    (13, 2, '2020-03-01', CURDATE()),
    (12, 2, '2020-03-01', CURDATE()),
    (10, 2, '2019-06-10', CURDATE()),
    (11, 2, '2020-08-15', CURDATE()),
    (14, 3, '2021-12-16', CURDATE()),
    (15, 2, '2021-10-10', CURDATE()),
    (4, 3, '2017-06-22', CURDATE()),
    (7, 3, '2019-07-29', CURDATE());


-- UPDATE DATA --
-- CHANGE NAME OF AN EMPLOYEE (NAME, SURNAME AND DATE OF BIRTH)
UPDATE employees SET first_name = 'Pepa' WHERE emp_no = 7;
UPDATE employees SET last_name = 'Gutierrez' WHERE emp_no = 7;
UPDATE employees SET birth_date = '1985-02-14' WHERE emp_no = 7;


-- CHANGE NAME OF ALL DEPT
UPDATE departments SET dept_name = 'Adm' WHERE dept_no = '1';
UPDATE departments SET dept_name = 'Dir' WHERE dept_no = '5';
UPDATE departments SET dept_name = 'Inf' WHERE dept_no = '2';
UPDATE departments SET dept_name = 'Hos' WHERE dept_no = '3';
UPDATE departments SET dept_name = 'Rec' WHERE dept_no = '4';


-- GET DATA --
-- SELECT SALARY MORE THAN 20.000
SELECT * FROM salaries WHERE salary > 20000;

-- SELECT SALARY LESS THAN 10.000
SELECT * FROM salaries WHERE salary < 10000;

-- SELECT SALARY BETWEEN 14.000 AND 50.000
SELECT * FROM salaries WHERE salary BETWEEN 14000 AND 50000;

-- COUNT TOTAL EMPLOYEES
SELECT COUNT(emp_no) FROM employees;

-- COUNT EVERY EMPLOYEE IF WORK IN 2 DEPT OR MORE
SELECT COUNT(dept_no), emp_no FROM dept_emp GROUP BY emp_no HAVING COUNT(dept_no) >= 2; 

-- RETURN ALL TITLES FROM 2020 (NOT SURE WHAT EXERCISE WANT - 2 ANSWERS)
SELECT * FROM titles WHERE to_date BETWEEN '20200101' AND CURDATE();
-- RETURN ALL TITLES ONLY FROM 2020 (NOT SURE WHAT EXERCISE WANT - 2 ANSWERS)
SELECT * FROM titles WHERE to_date LIKE '2020%';

-- SELECT ALL NAMES FROM EMPLOYEES AND RETURN IN MAYUS
SELECT UCASE(first_name) FROM employees;

-- SELECT EVERY NAME, SURNAME AND NAME DEPT, FROM EVERY EMPLOYEE
SELECT d.dept_name, e.first_name, e.last_name FROM employees e
	INNER JOIN dept_emp de ON e.emp_no = de.emp_no
    INNER JOIN departments d ON de.dept_no = d.dept_no;

-- EXTRA FOR TESTS, ADDING NEW EMPLOYE--
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES (16, '1925-12-12', 'Julian', 'Olmos', 'M', '2021-12-12');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (16, 5000, '2021-12-12', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (16, 5, '2021-12-12', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (16, 5, '2021-12-12', CURDATE());

UPDATE dept_manager SET to_date = '2021-12-12' WHERE emp_no = 9;

-- SELECT NAME, SURNAME AND NUMBER OF TIMES EMPLOYEE WORKED LIKE MANAGER 
SELECT COUNT(dm.emp_no), e.first_name, e.last_name FROM dept_manager dm
LEFT JOIN employees e ON e.emp_no = dm.emp_no 
GROUP BY dm.emp_no;

-- SHOW ALL EMPLOYEES NAMES WITHOUT REPEAT
SELECT DISTINCT first_name FROM employees;


-- DELETE DATA --
-- DELETE ALL EMPLOYES WITH SALARY ABOVE 20.000
DELETE FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary > 20000);

-- DELETE DEPT WITH MORE EMPLOYEES
DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no HAVING COUNT(*)>6);
