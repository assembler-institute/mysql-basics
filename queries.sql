
/* INSERT DATA */

/* Insert 15 employees */ 
INSERT INTO 
employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values
(1, '1986-08-24', 'EY', 'Kim', 'F', '2019-11-10'),
(2, '1987-11-24', 'Brandon', 'Parry', 'M', '2020-01-10'),
(3, '1982-12-01', 'William', 'Thomas', 'M', '2018-05-01'),
(4, '1989-01-17', 'Lois', 'Hansen', 'F', '2018-06-30'),
(5, '1984-03-02', 'John', 'Copeland', 'M', '2016-10-11'),
(6, '1986-04-12', 'Henry', 'Himes', 'M', '2014-11-11'),
(7, '1981-12-28', 'Betty', 'Roberts', 'F', '2017-09-23'),
(8, '1990-11-03', 'Cathy', 'Willcox', 'F', '2020-11-07'),
(9, '1988-07-21', 'Alan', 'Young', 'M', '2011-10-22'),
(10, '1989-01-22', 'John', 'Marks', 'M', '2018-01-19'),
(11, '1981-12-12', 'Melissa', 'Stone', 'F', '2021-01-03'),
(12, '1983-08-02', 'John', 'Rolland', 'M', '2010-09-30'),
(13, '1984-03-27', 'David', 'Morgan', 'M', '2011-10-01'),
(14, '1986-01-31', 'Jenifer', 'Dizon', 'F', '2012-11-29'),
(15, '1991-12-25', 'Carole', 'Parker', 'F', '2015-06-18');



/* Insert salaries */

INSERT INTO
salaries (emp_no, salary, from_date, to_date) 
values 
(1, 50000, '2019-11-10', now()),
(2, 16000, '2020-01-10', now()),
(3, 23000, '2018-05-01', '2020-12-31'),
(3, 43000, '2021-01-01', now()),
(4, 20000, '2018-06-30', '2020-08-31'),
(4, 38000, '2020-09-01', now()),
(5, 43000, '2016-10-11', now()),
(6, 19000, '2014-11-11', '2016-12-31'),
(6, 30000, '2017-01-01', '2018-12-31'),
(6, 45000, '2019-01-01', now()),
(7, 42500, '2017-09-23', '2019-12-31'),
(7, 50000, '2020-01-01', now()),
(8, 39000, '2020-11-07', now()),
(9, 23000, '2011-10-22', '2013-12-31'),
(9, 37600, '2014-01-01', '2015-12-31'),
(9, 42300, '2016-01-01', '2018-12-31'),
(9, 49900, '2019-01-01', now()),
(10, 38100, '2018-01-19', now()),
(11, 23520, '2021-01-03', now()),
(12, 47700, '2010-09-30', now()),
(13, 34420, '2011-10-01', now()),
(14, 41260, '2012-11-29', now()),
(15, 29990, '2015-06-18', now());



/* Insert departments */

INSERT INTO 
departments (dept_no, dept_name)
values
('001', 'Human Resource Management'),
('002', 'Production'),
('003', 'Purchasing'),
('004', 'Marketing'),
('005', 'Account and Finance');



/* Insert departments managers */

INSERT INTO
dept_manager (emp_no, dept_no, from_date, to_date)
values 
(1, '001', '2019-11-10', now()),
(5, '002', '2016-10-11', now()),
(6, '003', '2019-01-01', now()),
(9, '004', '2016-01-01', '2018-12-31'),
(10, '004', '2019-01-01', now()),
(12, '005', '2010-09-30', now());



/* Insert employess in each department */

INSERT INTO
dept_emp (emp_no, dept_no, from_date, to_date)
values
(1, '001', '2019-11-10', now()),
(2, '002', '2020-1-10', '2020-12-31'),
(2, '003', '2021-01-01', now()),
(3, '003', '2018-05-01', '2020-12-31'),
(3, '002', '2021-01-01', now()),
(4, '005', '2018-06-30', '2020-08-31'),
(4, '004', '2020-09-01', now()),
(5, '002', '2016-10-11', now()),
(6, '003', '2014-11-11', now()),
(7, '005', '2017-09-23', '2019-12-31'),
(7, '001', '2020-01-01', now()),
(8, '001', '2020-11-07', '2021-03-01'),
(8, '004', '2021-03-02', now()),
(9, '004', '2011-10-22', '2018-12-31'),
(9, '001', '2019-01-01', now()),
(10, '004', '2018-01-19', now()),
(11, '003', '2021-01-03', '2021-06-30'),
(11, '002', '2021-07-01', now()),
(12, '005', '2010-09-30', now()),
(13, '001', '2011-10-01', '2015-12-31'),
(13, '003', '2016-01-01', now()),
(14, '004', '2012-11-29', '2016-11-29'),
(14, '001', '2016-11-30', now()),
(15, '005', '2015-06-18', '2019-09-09'),
(15, '004', '2019-09-10', now());



/* Insert titles */

INSERT INTO 
titles (emp_no, title, from_date, to_date) 
values 
(1, 'Master in Psychology', '2015-02-13', null),
(2, 'BA in Business', '2020-09-23', null),
(3, 'BA in Commerce', '2018-04-01', null),
(4, 'MA in Law', '2021-01-02', null),
(5, 'BA in Economics', '2016-09-07', null),
(6, 'BA in Administration', '2011-08-31', null),
(7, 'BA in Financial Studies', '2017-09-22', null),
(8, 'BA in Accounting', '2020-09-01', null),
(9, 'Master in Linguistics', '2010-10-01', null),
(10, 'Master in Law', '2020-10-11', null),
(11, 'Master in Statistics', '2020-12-04', null),
(12, 'BA in Administration', '2010-09-01', null),
(13, 'BA in Commerce', '2020-10-04', null),
(14, 'BA in Economics', '2012-11-02', null),
(15, 'Master in Economics', '2014-12-22', null);




/* UPDATE DATA */

/* Change the name of an employee. To do this, generate a query that
affects only a certain employee based on their name, surname and
date of birth. */

UPDATE employees.employees 
SET first_name = 'Paul'
WHERE (
first_name = 'John' AND
last_name LIKE 'm%' AND 
birth_date = '1989-01-22'
);



/* Change the name of all departments. */

UPDATE employees.departments
     SET dept_name =
     CASE
     WHEN dept_no = '001' THEN 'HR MANAGEMENT'
     WHEN dept_no = '002' THEN 'PRODUCTION AND SALES'
     WHEN dept_no = '003' THEN 'PURCHASING AND TRADING'
     WHEN dept_no = '004' THEN 'ADVERTISING AND MARKETING'
     WHEN dept_no = '005' THEN 'ACCOUNTING'
     END;



/* Select all employees with a salary greater than 20,000 */

  SELECT * 
  FROM employees 
  INNER JOIN salaries 
  ON employees.emp_no = salaries.emp_no AND salaries.salary > 20000;



/* Select all employees with a salary below 10,000 */
  SELECT *
  FROM employees
  INNER JOIN salaries
  ON employees.emp_no = salaries.emp_no AND salaries.salary < 10000;



/* Select all employees who have a salary between 14.00 and 50,000 */

  SELECT *
  FROM employees
  INNER JOIN salaries
  ON employees.emp_no = salaries.emp_no AND
   salaries.salary BETWEEN 14000 AND 50000;



/* Select the total number of employees */

SELECT COUNT(emp_no) FROM employees;

SELECT COUNT(emp_no) 
FROM ( 
  SELECT emp_no 
  FROM dept_emp 
  GROUP BY emp_no 
  HAVING COUNT(emp_no) > 1 
  ) employees;



/* Select the titles of the year 2019 (n my case it is empty set)*/
SELECT * 
FROM titles
WHERE from_date
BETWEEN '2019-01-01' AND '2019-12-31' 



/* Select the titles of the year 2020 */
  SELECT * 
FROM titles
WHERE from_date
BETWEEN '2020-01-01' AND '2020-12-31' 



/* Select only the name of the employees in capital letters */

/* 1 */
SELECT UPPER(first_name) FROM employees;

/* 2 */
SELECT UCASE(first_name) FROM employees;



/* Select the name, surname and name of the current department of each employee */
SELECT employees.first_name, employees.last_name, departments.dept_no, departments.dept_name
FROM employees
INNER JOIN (
  SELECT emp_no, dept_no, from_date
  FROM dept_emp
  WHERE from_date IN (
    SELECT MAX(from_date)
    FROM dept_emp
    GROUP BY emp_no
  )
) current_dept ON employees.emp_no = current_dept.emp_no
INNER JOIN departments ON current_dept.dept_no = departments.dept_no;



/* Select the name, surname and number of times the employee has worked as
a manager */

SELECT CONCAT(first_name, ' ', last_name) AS 'full_name', managers.number_of_time
FROM employees
LEFT JOIN (
SELECT emp_no, COUNT(*) AS number_of_time
FROM dept_manager 
GROUP BY emp_no
) managers on employees.emp_no = managers.emp_no;



/* Select the name of employees without any being repeated */

SELECT DISTINCT first_name FROM employees;



/* Eliminate all employees with a salary greater than 20,000 */

/* 1 */
DELETE employees.*
FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no 
WHERE salaries.salary > 20000;

/* 2 */
DELETE 
FROM employees
WHERE emp_no IN (
  SELECT emp_no FROM salaries
  WHERE salaries.salary > 20000
  GROUP BY emp_no
);



/* Remove the department that has more employees */

DELETE FROM departments
WHERE dept_no = (
SELECT dept_no 
FROM dept_emp   
GROUP BY dept_no
ORDER BY COUNT(*) DESC 
limit 1
);

