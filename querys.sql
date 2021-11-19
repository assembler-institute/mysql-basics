-- INSERT DATA

/* Add 15 employees */
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES 
(1 , '1996-12-24', 'Christian', 'Herrero', 'M', CURDATE()),
(2 , '1995-11-11', 'Jose', 'Gonzalez', 'M', CURDATE()),
(3 , '1995-05-25', 'Lorena', 'Gutierrez', 'F', CURDATE()),
(4 , '1996-04-06', 'Julia', 'Gonzalez', 'F', CURDATE()),
(5 , '1996-12-01', 'Alberto', 'Herrero', 'M', CURDATE()),
(6 , '1994-01-05', 'Jose Manuel', 'Ramirez', 'M', CURDATE()),
(7 , '1995-11-15', 'Amparo', 'Cardenas', 'F', CURDATE()),
(8 , '1995-08-21', 'Alan', 'Martinez', 'M', CURDATE()),
(9 , '1995-10-22', 'Clara', 'Muncilla', 'F', CURDATE()),
(10 , '1996-09-10', 'Nuria', 'Cardenas', 'F', CURDATE()),
(11 , '1995-10-11', 'Nuria', 'Medilla', 'F', CURDATE()),
(12 , '1994-06-03', 'Matías', 'Garcia', 'M', CURDATE()),
(13 , '1996-04-01', 'Antonio', 'Herrero', 'M', CURDATE()),
(14 , '1995-11-11', 'Nuria', 'Gonzalez', 'F', CURDATE()),
(15 , '1995-11-11', 'Jose', 'Gonzalez', 'M', CURDATE());

/* Add salaries */
INSERT INTO salaries (emp_no, salary, from_date, to_date) 
VALUES 
(1, 25000, '2020-01-01', CURDATE()), 
(2, 42300, '2020-08-01', CURDATE()), 
(3, 19800.70, '2018-12-12', '2020-03-31'), 
(3, 33459.23, '2020-04-01', CURDATE()), 
(4, 28000, '1995-03-27', CURDATE()), 
(5, 9950, '1995-03-27', CURDATE()), 
(6, 8000, '2004-07-01', CURDATE()), 
(7, 18000, '2000-02-01', '2009-12-31'), 
(7, 28750.55, '2010-01-01', CURDATE()), 
(8, 35000, '2010-09-01', '2018-06-30'), 
(8, 39000, '2018-07-01', CURDATE()), 
(9, 44400, '2001-11-11', CURDATE()), 
(10, 21900, '2010-05-16', CURDATE()), 
(11, 38000, '2014-10-20', '2019-10-01'), 
(11, 49575, '2019-10-02', CURDATE()), 
(12, 15300, '2008-04-22', CURDATE()), 
(13, 6900, '1999-12-31', CURDATE()), 
(14, 12100, '2019-06-03', CURDATE()), 
(15, 32000, '2007-09-29', '2012-04-22'), 
(15, 40000, '2012-04-23', CURDATE());

/* Add Departments */
INSERT INTO 
departments (dept_no, dept_name) 
VALUES 
('1a', 'Marketing'), 
('1b', 'Development'), 
('2a', 'Finance'), 
('2b', 'Sales'), 
('3', 'Customer services');

/* Add Department managers */
INSERT INTO 
dept_manager (emp_no, dept_no, from_date, to_date) 
VALUES
(1, '1a', '2020-03-01', now()), 
(5, '1b', '2000-09-30', '2020-01-01'), 
(6, '1b', '2020-01-02', now()), 
(7, '2a', '2010-12-01', '2020-01-01'), 
(5, '2a', '2020-01-02', now()), 
(11, '2b', '2016-11-15', now()), 
(12, '3', '2012-05-25', now());

/* Add Department Employees */
INSERT INTO 
dept_emp (emp_no, dept_no, from_date, to_date) 
VALUES 
(1, '1b', '2020-01-01', '2020-02-29'), 
(1, '1a', '2020-03-01', now()), 
(2, '3', '2020-08-05', now()), 
(3, '2b', '2018-12-12', now()), 
(4, '2a', '1995-03-27', '2010-03-31'), 
(4, '2b', '2010-01-04', now()), 
(5, '1b', '1995-03-27', '2020-01-01'), 
(5, '1a', '2020-01-02', now()), 
(6, '1b', '2004-07-01', now()), 
(7, '2a', '2000-02-01', now()), 
(8, '3', '2010-09-01', '2015-09-10'), 
(8, '2a', '2015-09-11', now()), 
(9, '2b', '2001-11-11', '2012-12-11'), 
(9, '3', '2012-12-12', now()), 
(10, '3', '2010-05-16', now()), 
(11, '2b', '2014-10-20', '2019-07-15'), 
(11, '3', '2019-07-16', now()), 
(12, '3', '2008-04-22', '2019-07-15'), 
(12, '2b', '2019-07-16', now()), 
(13, '1b', '1999-12-31', '2018-12-31'), 
(13, '2a', '2019-01-01', now()), 
(14, '2b', '2019-06-03', '2020-06-29'), 
(14, '3', '2020-06-30', now()), 
(15, '1a', '2007-09-29', '2017-08-30'), 
(15, '3', '2017-08-31', now());

/* Add Employee titles */
INSERT INTO 
titles (emp_no, title, from_date, to_date) 
VALUES 
(1, 'Front end developer', '2011-09-25', null), 
(2, 'UX & UI designer', '2020-06-13', null), 
(3, 'marketing consultant', '2016-10-28', null), 
(4, 'Counting manager', '1985-12-03', null), 
(5, 'Senior Software engineer', '2020-02-02', null), 
(6, 'Graphic designer', '2006-08-30', null), 
(7, 'Backend developer', '1994-07-07', null), 
(8, 'Product manager', '2020-03-31', null), 
(9, 'Sales specialist', '1992-01-01', null), 
(10, 'marketing consultant', '2014-06-27', null), 
(11, 'Full stack developer', '2020-05-17', null), 
(12, 'Database administrator', '2003-12-19', null), 
(13, 'Backend developer', '2000-09-24', null), 
(14, 'Front end developer', '2020-01-10', null), 
(15, 'marketing consultant', '2005-04-23', null);

-- DATA UPDATE

/* Update employee */
UPDATE employees 
SET first_name = 'Jose'
WHERE (
  first_name = 'Alan' AND 
  last_name LIKE '%b%' AND 
  birth_date > '1980-01-01'
);

/* Update departments */
UPDATE departments 
SET dept_name = 
CASE 
  WHEN dept_no = '1a' THEN 'Marketing & Sales' 
  WHEN dept_no = '1b' THEN 'Development & Web Hosting' 
  WHEN dept_no = '2a' THEN 'Counting & Finances' 
  WHEN dept_no = '2b' THEN 'Marketing & Sales' 
  WHEN dept_no = '3' THEN 'Customer Support' 
END;

-- GET DATA

/* Select all employees with a salary greater than 20,000 */
SELECT * 
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no AND 
  salaries.salary > 20000;
 
/* Select all employees with a salary below 10,000 */
SELECT * 
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no AND 
  salaries.salary < 10000;

/* Select all employees who have a salary between 14,000 and 50,000 */
SELECT * 
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no AND 
  salaries.salary BETWEEN 14000 AND 50000;

/* Select the total number of employees */
SELECT COUNT(emp_no) FROM employees;

/* Select the total number of employees who have worked in more than one department */
SELECT COUNT(emp_no) 
FROM (
  SELECT emp_no 
  FROM dept_emp 
  GROUP BY emp_no 
  HAVING COUNT(emp_no) > 1
) employees;

/* Select the titles of the year 2019 */
SELECT * 
FROM titles 
WHERE from_date 
  BETWEEN '2019-01-01' AND '2019-12-31';

/* Select only the name of the employees in capital letters */
SELECT UCASE(first_name) FROM employees;

/* Select the name, surname and name of the current department of each employee */
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

/* Select the name, surname and number of times the employee has worked as a manager */
SELECT E.first_name, E.last_name, M.times_manager 
FROM employees E 
LEFT JOIN (
  SELECT emp_no, COUNT(*) AS times_manager 
  FROM dept_manager 
  GROUP BY emp_no
) M ON E.emp_no = M.emp_no;

/* Select the name without any being repeated */
SELECT DISTINCT first_name FROM employees;

-- DELETE DATA

/* Eliminate all employees with a salary greater than 20,000 (assuming the salary paid today) */
DELETE FROM employees 
  WHERE emp_no IN (
    SELECT E.emp_no 
    FROM employees E 
    JOIN salaries S ON E.emp_no = S.emp_no 
    WHERE S.salary > 20000 AND S.to_date >= CURDATE()
  );

/* Remove the department that has the most employees */
DELETE FROM departments 
WHERE dept_no = (
  SELECT dept_no 
  FROM dept_emp 
  WHERE to_date >= CURDATE() 
  GROUP BY dept_no
  ORDER BY COUNT(DISTINCT emp_no) DESC 
  LIMIT 1
);
