-- Insert at least 15 new employees of different gender.
-- At least 3 employees have the same name.

INSERT INTO employees (emp_no,birth_date,first_name,last_name,gender,hire_date)
VALUES
  (1,"1996-05-08","Elliott","Mills","M","2019-04-23"),
  (2,"1999-07-05","Mohammad","Mclaughlin","M","2019-10-16"),
  (3,"1995-04-04","Risa","Harrison","M","2020-05-09"),
  (4,"1992-02-09","Addison","French","F","2020-06-27"),
  (5,"1993-08-20","John","Dean","M","2020-02-12"),
  (6,"1997-08-13","Lunea","Conner","F","2020-01-01"),
  (7,"1981-02-11","John","Walter","M","2020-08-21"),
  (8,"1981-04-13","Judith","Stone","F","2019-04-12"),
  (9,"1998-12-30","Jolie","Julae","F","2019-08-29"),
  (10,"1981-07-27","Jaime","Lott","F","2020-04-17"),
  (11,"1984-03-20","Frances","Beard","M","2018-11-30"),
  (12,"1984-10-07","Abbot","Bush","F","2019-02-03"),
  (13,"1987-08-16","Colleen","Skinner","M","2018-11-08"),
  (14,"1982-09-12","Addison","Horn","F","2019-08-05"),
  (15,"1990-06-03","John","Le","M","2019-06-29");

-- With salaries that are between a range of 5,000 and 50,000.
-- 5 employees must have at least two salaries in different ranges of dates and different amounts.

INSERT INTO salaries (emp_no,salary,from_date,to_date)
VALUES
  (1,29018,"2019-04-23","2020-12-31"),
	(1,39018,"2021-01-01","2021-12-31"),
  (2,18652,"2019-10-16","2020-12-31"),
	(2,28652,"2021-01-01","2021-12-31"),
	(3,25868,"2020-05-09","2020-12-31"),
  (3,30868,"2021-01-01","2021-12-31"),
  (4,40815,"2020-06-27","2020-12-31"),
	(4,45815,"2021-01-01","2021-12-31"),
  (5,38351,"2020-02-12","2020-12-31"),
	(5,45351,"2021-01-01","2021-12-31"),
  (6,16000,"2020-01-01","2021-12-31"),
  (7,16000,"2020-08-21","2021-12-31"),
  (8,16000,"2019-04-12","2021-12-31"),
  (9,16000,"2019-08-29","2021-12-31"),
  (10,30603,"2020-04-17","2021-12-31"),
  (11,44174,"2018-11-30","2021-12-31"),
  (12,48782,"2019-02-03","2021-12-31"),
  (13,6449,"2018-11-08","2021-12-31"),
  (14,16406,"2019-08-05","2021-12-31"),
  (15,19028,"2019-06-29","2021-12-31");

-- 10 employees belong to more than one department.
-- 5 employees are managers.

INSERT INTO departments (dept_no,dept_name)
VALUES
	(1,"Manager"),
	(2,"Marketing"),
	(3,"Purchasing"),          
	(4,"Human Resources"),
	(5,"Shipping"),
	(6,"IT"),    
	(7,"Public Relations"),
	(8,"Sales"),
	(9,"Executive"),
	(10,"Finance"),       
	(11,"Accounting"),           
	(12,"Treasury"); 

INSERT INTO dept_manager (emp_no,dept_no,from_date,to_date)
VALUES
	(1,1,"2019-04-23","2021-12-31"),
	(2,2,"2019-10-16","2021-12-31"),
	(3,6,"2020-05-09","2021-12-31"),
	(4,4,"2020-06-27","2021-12-31"),
	(5,5,"2020-02-12","2021-12-31");

INSERT INTO dept_emp (emp_no,dept_no,from_date,to_date)
VALUES
	(1,1,"2019-04-23","2021-12-31"),
  (2,2,"2019-10-16","2021-12-31"),
  (3,6,"2020-05-09","2021-12-31"),
  (4,4,"2020-06-27","2021-12-31"),
  (5,5,"2020-02-12","2021-12-31"),
  (6,6,"2020-01-01","2021-12-31"),
  (7,6,"2020-08-21","2021-12-31"),
  (8,6,"2019-04-12","2021-12-31"),
  (9,6,"2019-08-29","2021-12-31"),
  (10,7,"2020-04-17","2021-12-31"),
	(10,2,"2020-04-17","2021-12-31"),
  (11,8,"2018-11-30","2021-12-31"),
	(11,3,"2018-11-30","2021-12-31"),
  (12,9,"2019-02-03","2021-12-31"),
	(12,10,"2019-02-03","2021-12-31"),
  (13,9,"2018-11-08","2021-12-31"),
	(13,10,"2018-11-08","2021-12-31"),
  (14,11,"2019-08-05","2021-12-31"),
	(14,10,"2019-08-05","2021-12-31"),
  (15,12,"2019-06-29","2021-12-31"),
  (15,10,"2019-06-29","2021-12-31");

-- All employees have a degree and at least 5 titles are from 2020

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES
	(1,"Bussiness Administration Licenciate","2015-09-15","2019-06-31"),
  (2,"Bussiness Administration Licenciate","2015-09-15","2019-06-31"),
  (3,"Bussiness Administration Licenciate","2015-09-15","2019-06-31"),
  (4,"Bussiness Administration Licenciate","2015-09-15","2019-06-31"),
  (5,"Bussiness Administration Licenciate","2016-09-15","2020-06-31"),
  (6,"IT Technician Licenciate","2015-01-15","2019-06-31"),
  (7,"IT Technician Licenciate","2016-08-15","2020-06-31"),
  (8,"IT Technician Licenciate","2016-04-15","2010-06-31"),
  (9,"IT Technician Licenciate","2015-08-15","2019-06-31"),
  (10,"Commerce & Economy Licenciate ","2020-04-17","2021-12-31"),
	(11, "MBA", "2020-12-15", "2021-06-15"),
	(12, "MBA", "2020-12-15", "2021-06-15"),
	(13, "MBA", "2020-12-15", "2021-06-15"),
	(14, "MBA", "2020-12-15", "2021-06-15"),
	(15, "MBA", "2020-12-15", "2021-06-15");

-- Update employees:
-- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
UPDATE employees SET first_name = "Frank" WHERE first_name="Mohammad" AND last_name = "Mclaughlin" and birth_date > "1980-01-01";

-- Update departments:
-- Change the name of all departments.
UPDATE departments SET dept_name = CONCAT(dept_name, " Department") WHERE dept_name NOT LIKE "% Department";

-- 1.5.3 GET DATA
-- Select all employees with a salary greater than 20,000

-- With displayed salary
SELECT 
	CONCAT(first_name, " ", last_name) AS employee,
	salary
FROM employees
JOIN salaries USING (emp_no)
WHERE salary > 20000
AND CURRENT_DATE() BETWEEN from_date AND to_date;

-- Without displaying salary
SELECT 
	CONCAT(first_name, " ", last_name) AS employee
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM salaries
	WHERE salary > 20000
	AND CURRENT_DATE() BETWEEN from_date AND to_date
);

-- Select all employees with a salary below 10,000
SELECT 
	CONCAT(first_name, " ", last_name) AS employee,
	salary
FROM employees
JOIN salaries USING (emp_no)
WHERE salary < 20000
AND CURRENT_DATE() BETWEEN from_date AND to_date;

-- Without displaying salary
SELECT 
	CONCAT(first_name, " ", last_name) AS employee
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM salaries
	WHERE salary < 20000
	AND CURRENT_DATE() BETWEEN from_date AND to_date
);

-- Select all employees who have a salary between 14.00 and 50,000
SELECT 
	CONCAT(first_name, " ", last_name) AS employee,
	salary
FROM employees
JOIN salaries USING (emp_no)
WHERE salary BETWEEN 14000 AND 50000
AND CURRENT_DATE() BETWEEN from_date AND to_date;

-- Without displaying salary
SELECT 
	CONCAT(first_name, " ", last_name) AS employee
FROM employees
WHERE emp_no IN (
	SELECT emp_no
	FROM salaries
	WHERE salary BETWEEN 14000 AND 50000
	AND CURRENT_DATE() BETWEEN from_date AND to_date
);

-- Select the total number of employees
SELECT COUNT(emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT count(*) FROM (
	SELECT emp_no, count(dept_no) AS num_of_departments
	FROM dept_emp
	GROUP BY emp_no
) AS departments_per_employee
WHERE num_of_departments > 1;

-- Select the titles of the year 2019
SELECT DISTINCT title FROM titles WHERE EXTRACT(YEAR FROM to_date) = "2019";

-- Select only the name of the employees in capital letters
SELECT UCASE(first_name) FROM employees;

-- Select the name, surname and name of the current department of each employee
SELECT 
	first_name, 
	last_name, 
	GROUP_CONCAT(dept_name SEPARATOR ", ") AS current_department
FROM employees
LEFT JOIN dept_emp 		USING (emp_no)
LEFT JOIN departments USING (dept_no)
WHERE CURRENT_DATE() BETWEEN from_date AND to_date
GROUP BY emp_no;

-- Select the name, surname and number of times the employee has worked as a manager
SELECT
	first_name,
	last_name,
	count(dept_no) AS times_been_manager
FROM employees
LEFT JOIN dept_manager USING (emp_no)
GROUP BY emp_no;

-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;

-- 1.5.4 DELETE DATA
-- Eliminate all employees with a salary greater than 20,000
DELETE FROM employees WHERE emp_no IN (
	SELECT emp_no FROM salaries WHERE salary > 20000
);

-- Remove the department that has more employees
DELETE FROM departments WHERE dept_no = (
	SELECT dept_no FROM (
		SELECT 
			dept_no,
			COUNT(emp_no) AS num_of_employees
		FROM departments
		JOIN dept_emp USING (dept_no)
		GROUP BY dept_no
		HAVING COUNT(emp_no) = (
			SELECT 
				MAX(num_of_employees) AS max_num_of_employees
			FROM (
				SELECT 
					dept_no, COUNT(emp_no) AS num_of_employees
				FROM departments
				JOIN dept_emp USING (dept_no)
				GROUP BY dept_no
			) AS num_of_employees
		)
	) AS max_num_of_employees
);








