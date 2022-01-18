/*
	INSERTS DATA
	Insert at least 15 new employees:
		- With salaries that are between a range of 5,000 and 50,000 of different gender
		- 5 employees must have at least two salaries in different ranges of dates and different amounts
		- 10 employees belong to more than one department
		- 5 employees are managers
		- All employees have a degree and at least 5 titles are from 2020
		- At least 3 employees have the same name
*/

INSERT INTO employees VALUES
	(1, "1985-01-01", "sergio", "bermudez", "M", "2018-04-12"),
    (2, "1984-04-12", "sergio", "gimenez", "M", "2020-05-14"),
    (3, "1987-07-16", "sergio", "lopez", "M", "2019-02-23"),
	(4, "1995-06-07", "miguel", "asis", "M", "2017-06-02"),
	(5, "1997-03-18", "sara", "montiel", "F", "2016-07-05"),
	(6, "1991-04-12", "jose", "martinez", "M", "2020-01-16"),
	(7, "1989-10-30", "sofia", "vergara", "F", "2018-08-28"),
	(8, "1999-05-15", "robert", "alonso", "M", "2016-03-22"),
	(9, "1975-02-24", "rozalen", "bonera", "F", "2017-09-13"),
	(10, "1978-11-21", "marcel", "duarte", "M", "2018-10-06"),
	(11, "1993-09-03", "rosario", "flores", "F", "2019-11-14"),
	(12, "1995-04-12", "manolo", "torralbo", "M", "2020-12-08"),
	(13, "2000-07-03", "malu", "fernandez", "F", "2015-07-26"),
	(14, "1998-10-19", "carlos", "sainz", "M", "2015-03-23"),
	(15, "1996-02-21", "laia", "belmonte", "F", "2016-01-11")
;

INSERT INTO titles VALUES
	(1, "DAW", "2019-06-21", "2020-06-21"),
    (2, "DAM", "2015-06-21", "2016-06-21"),
    (3, "ASIX", "2013-06-21", "2014-06-21"),
	(4, "DAW", "2013-06-21", "2014-06-21"),
	(5, "DAM", "2019-06-21", "2020-06-21"),
	(6, "ASIX", "2014-06-21","2015-06-21"),
	(7, "DAW", "2014-06-21", "2015-06-21"),
	(8, "DAM", "2013-06-21", "2014-06-21"),
	(9 "ASIX", "2019-06-21", "2020-06-21"),
	(10, "DAW", "2014-06-21", "2015-06-21"),
    (11, "DAM", "2019-06-21", "2020-06-21"),
    (12, "ASIX", "2013-06-21", "2014-06-21"),
	(13, "DAW", "2013-06-21", "2014-06-21"),
	(14, "DAM", "2015-06-21", "2016-06-21"),
	(15, "ASIX", "2019-06-21", "2020-06-21")
;

INSERT INTO salaries VALUES
	(4, 5000, "2017-07-02", "2018-07-02"),
	(4, 8000, "2018-10-02", "2019-10-02"),
	(5, 10000, "2016-08-05", "2017-08-05"),
	(5, 13000, "2017-11-05", "2018-11-05"),
	(6, 15000, "2020-02-16", "2021-02-16"),
	(6, 18000, "2021-05-16", "2022-01-16"),
	(7, 20000, "2018-09-28", "2018-08-05"),
	(7, 23000, "2019-11-28", "2020-11-28"),
	(8, 25000, "2016-04-22", "2017-04-22"),
	(8, 28000, "2017-07-22", "2018-07-22"),
	(9, 30000, "2017-10-13", "2018-10-13"),
	(10, 35000, "2018-11-06", "2019-11-06"),
	(11, 40000, "2019-12-14", "2020-12-14"),
	(12, 45000, "2021-01-08", "2022-01-08"),
	(13, 50000, "2015-08-26", "2016-08-26"),
	(14, 55000, "2015-04-23", "2016-04-23"),
	(15, 60000, "2016-02-11", "2017-02-11")
;

INSERT INTO departments VALUES
	("IFOR", "Informatica"),
	("RRHH", "Recursos Humanos"),
	("UIX", "diseño grafico")
;

INSERT INTO dept_emp VALUES
	(4, "IFOR", "2016-02-11", "2018-02-11"),
	(4, "RRHH", "2017-02-11", "2019-02-11"),
	(5, "UIX", "2015-02-11", "2017-02-11"),
	(5, "RRHH", "2016-02-11", "2018-02-11"),
	(6, "IFOR", "2018-02-11", "2020-02-11"),
	(6, "RRHH", "2017-02-11", "2019-02-11"),
	(7, "UIX", "2016-02-11", "2018-02-11"),
	(7, "IFOR", "2012-02-11", "2014-02-11"),
	(8, "IFOR", "2011-02-11", "2013-02-11"),
	(8, "RRHH", "2018-02-11", "2020-02-11"),
	(9, "UIX", "2019-02-11", "2021-02-11"),
	(9, "IFOR", "2017-02-11", "2019-02-11"),
	(10, "IFOR", "2011-02-11", "2013-02-11"),
	(10, "RRHH", "2014-02-11", "2016-02-11"),
	(11, "UIX", "2015-02-11", "2017-02-11"),
	(11, "RRHH", "2013-02-11", "2015-02-11"),
	(12, "RRHH", "2015-02-11", "2017-02-11"),
	(12, "IFOR", "2016-02-11", "2018-02-11"),
	(13, "RRHH", "2017-02-11", "2019-02-11"),
	(13, "IFOR", "2018-02-11", "2020-02-11")
;

INSERT INTO dept_manager VALUES)),
	(1, "IFOR", "2011-01-01", "2022-01-17"),
	(2, "RRHH", "2011-01-01", "2022-01-17"),
	(3, "UIX", "2012-01-01", "2022-01-17"),
	(14, "IFOR", "2012-01-01", "2022-01-17"),
	(15, "UIX", "2013-01-01", "2022-01-17")
;

/*
	UPDATE DATA
	Update employees:
		- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
*/

UPDATE employees SET first_name = "lewis", last_name = "hamilton", birth_date = "1987-06-12" WHERE emp_no = 2;

/*
	UPDATE DATA
	Update departments:
		- Change the name of all departments.
*/
UPDATE departments SET dept_no = "FRONT" WHERE dept_no = "UIX";
UPDATE departments SET dept_no = "BACK" WHERE dept_no = "IFOR";
UPDATE departments SET dept_no = "SMEDI" WHERE dept_no = "RRHH";

-- GET DATA: Select all employees with a salary greater than 20,000.
SELECT employees.* FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salary > 20000;

-- GET DATA: Select all employees with a salary below 10,000.
SELECT employees.* FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salary < 10000;

-- GET DATA: Select all employees who have a salary between 14.00 and 50,000.
SELECT employees.* FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salary BETWEEN 14000 AND 50000;

-- GET DATA: Select the total number of employees.
SELECT count(emp_no) AS "Empleados total" FROM employees;

-- GET DATA: Select the total number of employees who have worked in more than one department.
SELECT count(employees.emp_no) AS "Empleados_total" FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
GROUP BY dept_no HAVING count(dept_emp.dept_no) > 1;

-- GET DATA: Select the titles of the year 2020.
SELECT employees.* FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE titles.to_date LIKE "2020%";

-- GET DATA: Select only the name of the employees in capital letters.
SELECT UPPER(first_name) FROM employees;

-- GET DATA: Select the name, surname and name of the current department of each employee.
SELECT E.first_name, E.last_name, D.dept_name
	FROM employees E
	JOIN (
		SELECT emp_no, dept_no, from_date
		FROM dept_emp
		WHERE from_date IN (
			SELECT MAX(from_date)
			FROM dept_emp
			GROUP BY emp_no
		)
	) recent_depts ON E.emp_no = recent_depts.emp_no
	JOIN departments D ON recent_depts.dept_no = D.dept_no
	ORDER BY E.emp_no;

-- GET DATA: Select the name, surname and number of times the employee has worked as a manager.
SELECT first_name, last_name, count(dept_emp.dept_no) FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
GROUP BY dept_emp.emp_no HAVING count(dept_emp.dept_no) > 1;

-- GET DATA: Select the name of employees without any being repeated.
SELECT DISTINCT first_name FROM employees;

-- DELETE DATA: Delete all employees with a salary greater than 20,000.
DELETE FROM salaries WHERE salary > 20000;

-- DELETE DATA: Remove the department that has more employees.
DELETE FROM departments
	WHERE dept_no = (
		SELECT dept_no
		FROM dept_emp
		WHERE to_date >= CURDATE()
		GROUP BY dept_no
		ORDER BY COUNT(DISTINCT emp_no) DESC
		LIMIT 1
);