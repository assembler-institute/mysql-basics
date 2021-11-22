/* Adding Employees to the Table  */

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (1, '1995-01-21', 'Haroon', 'Ahmad','M',  '2015-09-21'), (2, '1979-09-09', 'Franklin', 'Collins', 'M', '2012-12-29'), (3, '1989-11-29', 'Arsalan', 'Ahmed', 'M', '2021-09-21');    

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (4, '1975-01-21', 'Tommy', 'Vercetti','M',  '2005-09-21'), (5, '1969-09-09', 'Ken', 'Markowski', 'M', '2013-12-19'), (6, '1967-06-29', 'Tervor', 'Philips', 'M', '2001-09-21'), (7, '1975-02-12', 'Michael', 'Da Santo', 'M', '2016-08-30'), (8, '1979-08-07', 'Lance', 'Vance', 'M', '2003-01-13'), (9, '1955-12-12', 'Uncle', 'Billy', 'M', '1996-10-21'), (10, '1990-02-14', 'Sonia', 'Sonny', 'F', '2018-09-30'), (11, '2000-02-29', 'Lester', 'Crest', 'M', '2019-01-01'), (12, '1990-08-20', 'Leonardo', 'Da Vinci', 'M', '2015-05-06');

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (13, '1980-02-20', 'Ezio', 'Auditore', 'M', '2002-05-30'), (14, '2000-09-01', 'Jimmy', 'Da Santa', 'M', '2021-09-01'), (15, '1980-01-20', 'Lamar', 'Davis', 'M', '2014-05-06');


/*Adding Salaries corresponding to employees */

INSERT INTO salaries (emp_no, salary, from_date, to_date) values (1, 20000, '2015-09-21', '2016-09-21'), (1, 40000, '2016-09-21', '2019-09-21'), (1, 79000, '2019-09-21', now()), (2, 20000, '2012-12-29', '2016-12-21'), (2, 50000, '2016-12-21', now()), (3, 20000, '2021-09-21', now()), (4, 5000, '2021-09-21', now());

INSERT INTO salaries (emp_no, salary, from_date, to_date) values (5, 20000, '2013-12-19', now()), (6, 39000, '2001-09-21', now()), (7, 45000, '2016-08-30', now()), (8, 69000, '2003-01-13', now()), (9, 99999, '1996-10-21', now()), (10, 35000, ' 2018-09-30', now()),(11, 20000, '2019-01-01', now()),(12, 50000, '2015-05-06', now()),(13, 80000, '2002-05-30', now()), (14, 1000, '2021-09-01', now()), (15, 45000, '2014-05-06', now());

/* Create Departments */

INSERT INTO departments (dept_no, dept_name) values ('1a', 'Planning and Relations'), ( '1b', 'On Field and Execution'), ('2a', 'Pilots'), ('2b', 'Legal Department'), ('2c', 'Banking'), ('3', 'Laundering');

/* Adding Employees to Departments */

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (1, '1a', '2015-09-21', now()), (1, '1b', '2018-12-21', now()), (2, '2a', '2012-12-29', now()), (3, '2c', '2021-09-21', now()),(14, '2c', '2021-09-01', now()), (4, '1b', '2005-09-21', now()), (5, '2b', '2013-12-19', now() ), (5, '3', '2013-12-19', now());

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (6, '1b', '2001-09-21', now()), (7, '1b', '2016-08-30', now()), (8, '1b', '2003-01-13', now()), (9, '3', '1996-10-21', now()), (10, '1b', '2018-09-30', now()), (11, '1b', '2019-01-01', now()), (12, '1b', '2015-05-06', now()), (13, '1b', '2002-05-30', now()), (14, '1b', '2021-09-01', now() ), (15, '1b', '2014-05-06', now() );

/* Adding Employees as Department Managers */

INSERT INTO  dept_manager values (1, '1a', '2015-09-21', now()), (11, '3', '2019-01-01', now()), (4, '1b', '2005-09-21', now()), (3, '2c', '2021-09-21', now() ), (5, '2b', '2013-12-19', now());

/* Adding 2 more Employees with same names */

INSERT INTO employees values (16, '1985-01-03', 'Tommy', 'Bolt', 'M', now()), (17, '1992-05-09', 'Tommy', 'Burrito', 'M', now());

/* Changing Name of an Employee based on name, surname and DOB */

UPDATE employees SET first_name = "Tom" WHERE last_name = "Burrito";

UPDATE employees SET last_name = "Clinton" WHERE first_name = "Franklin";

UPDATE employees SET hire_date = "2002-12-29" WHERE first_name = "Franklin";

/* Select all employees with a salary greater than 20,000 */ 

SELECT * 
FROM employees 
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no AND salaries.salary > 20000;

/* Select all employees with a salary below 10,000 */


SELECT * 
FROM employees 
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no AND salaries.salary < 10000;

/* Select all employees who have a salary between 14.00 and 50,000 */

SELECT * 
FROM employees 
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no AND salaries.salary > 14000 AND salaries.salary < 50000;

/* Select the total number of employees */

SELECT * FROM employees; /*Gives the Full data of all employees */

SELECT COUNT(*) FROM employees; /* Number of Employees */


/* Select Employees who have worked in more than one department */


select * from dept_emp;
SELECT
    emp_no,
    COUNT(emp_no)
FROM dept_emp
GROUP BY (emp_no)
HAVING COUNT(emp_no) > 1;

/* Select Employees who have worked as Managers */

SELECT first_name, last_name
FROM employees
INNER JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no;

/* Select Employees with first_name in uppercase */

SELECT UCASE(first_name) FROM employees;

/* Select the name, surname and name of the current department of each employee */

SELECT employees.first_name, employees.last_name, dept_emp.dept_no
FROM employees
INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
ORDER BY dept_emp.dept_no;

/* Select the name, surname and number of times the employee has worked as a manager */

SELECT
 COUNT(dept_manager.emp_no),
 employees.first_name, 
 employees.last_name
FROM dept_manager
INNER JOIN employees
ON dept_manager.emp_no = employees.emp_no

GROUP BY dept_manager.emp_no 
HAVING COUNT(dept_manager.emp_no) >0;

/*Delete all employees with a salary greater than 20,000 */

DELETE employees , salaries
FROM employees
INNER JOIN salaries
ON salaries.emp_no = employees.emp_no AND salaries.salary > 20000;

/* Remove the department that has more employees */

