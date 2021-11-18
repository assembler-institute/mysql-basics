-- insert a employee
INSERT INTO employees VALUES(1, '2001-08-21', 'Meredith', 'Palmer', 'F', '2021-10-30');
INSERT INTO employees VALUES(2, '1968-09-07', 'Michael', 'Scott', 'M', '2004-10-30');
INSERT INTO employees VALUES(3, '1979-05-21', 'Andy', 'Bernard', 'M', '2006-09-08');
INSERT INTO employees VALUES(4, '1971-01-17', 'Dwight', 'Schrute', 'M', '2004-10-16');
INSERT INTO employees VALUES(5, '1983-03-12', 'Pam', 'Beesley', 'F', '2006-02-11');
INSERT INTO employees VALUES(6, '1980-04-11', 'Kelly', 'Kapoor', 'F', '2006-03-10');
INSERT INTO employees VALUES(7, '1981-02-08', 'Jim', 'Halpert', 'M', '2004-12-11');
INSERT INTO employees VALUES(8, '1959-10-07', 'Creed', 'Bratton', 'M', '2003-08-30');
INSERT INTO employees VALUES(9, '1974-11-14', 'Angela', 'Martin', 'F', '2004-11-02');
INSERT INTO employees VALUES(10, '1979-06-12', 'Ryan', 'Howard', 'M', '2007-02-18');
INSERT INTO employees VALUES(11, '1977-04-03', 'Toby', 'Flenderson', 'M', '2001-10-31');
INSERT INTO employees VALUES(12, '1970-01-09', 'Kevin', 'Malone', 'M', '2005-05-30');
INSERT INTO employees VALUES(13, '1978-11-03', 'Gabe', 'Lewis', 'M', '2009-01-07');
INSERT INTO employees VALUES(14, '1975-09-27', 'Darryl', 'Philbin', 'M', '2006-09-17');
INSERT INTO employees VALUES(15, '1969-10-26', 'Phyllis', 'Lapin-Vance', 'F', '2004-05-08');
INSERT INTO employees VALUES(16, '1975-09-27', 'Kelly', 'Erinhannon', 'M', '2006-09-17');
INSERT INTO employees VALUES(17, '1969-10-26', 'Michael', 'Thompson', 'F', '2004-05-08');
INSERT INTO employees VALUES(18, '1969-10-26', 'Jim', 'James', 'F', '2004-05-08');


-- salaries
INSERT INTO salaries VALUES(4,'7000','2007-10-12', '2008-09-01');

--add employee to a department
INSERT INTO dept_emp VALUES(1, 'd-04', '2007-12-12', '2009-10-10');

--add five employee to managers table
INSERT INTO dept_manager VALUES(11, 'd-01', '2005-10-10', '2005-20-20');

--add titles to the employees
INSERT INTO titles VALUES (3, 'Degree in Science', '2000-02-02', '2004-05-05');


--update an employee name by name and more params
UPDATE employees SET first_name = 'gabee' WHERE emp_no = 13 AND last_name = 'Lewis'AND birth_date = '1978-11-03';

--update all departments name
UPDATE departments SET dept_name = 'Accountancy-d03' WHERE dept_no = 'd-03';
UPDATE departments SET dept_name = 'Human-Resources-d04' WHERE dept_no = 'd-04';
UPDATE departments SET dept_name = 'Customer-Support-d05' WHERE dept_no = 'd-05';
UPDATE departments SET dept_name = 'Quality-control-d02' WHERE dept_no = 'd-02';
UPDATE departments SET dept_name = 'Sales-d01' WHERE dept_no = 'd-01';


--Get Data

--Select all employees with a salary greater than 20,000
SELECT * FROM salaries WHERE salary > 20000;

--Select all employees with a salary below 10,000
SELECT * FROM salaries WHERE salary < 10000;

--Select all employees who have a salary between 14.000 and 50,000
SELECT * FROM salaries WHERE salary BETWEEN 14000 AND 50000;

--select number of all employees
SELECT COUNT(*) FROM employees;

--select employees that work in more than one department
SELECT emp_no, COUNT(*)
FROM dept_emp
GROUP BY emp_no HAVING COUNT(*)>1;
--Result:
+--------+----------+
| emp_no | COUNT(*) |
+--------+----------+
|      1 |        2 |
|      2 |        2 |
|      4 |        2 |
|      5 |        2 |
|      9 |        2 |
|     11 |        2 |
|     12 |        2 |
|     14 |        2 |
|     17 |        2 |
|     18 |        2 |
+--------+----------+

--Select the titles of the year 2019
SELECT * FROM titles WHERE from_date BETWEEN '2019-01-01' AND '2019-12-12';

--Select only the name of the employees in capital letters
SELECT UCASE(first_name) FROM employees;
--Result:
+-------------------+
| UCASE(first_name) |
+-------------------+
| MICHAEL           |
| ANDY              |
| DWIGHT            |
| PAM               |
| KELLY             |
| JIM               |
| CREED             |
| ANGELA            |
| RYAN              |
| TOBY              |
| KEVIN             |
| GABEE             |
| DARRYL            |
| PHYLLIS           |
| KELLY             |
| MICHAEL           |
| JIM               |
+-------------------+

--Select the name, surname and name of the current department of each employee
SELECT employees.first_name, employees.last_name, dept_emp.dep_no FROM employees INNER JOIN dept_empt ON employees.emp_no = dept_emp.emp_no;


--Select the name, surname and number of times the employee has worked as a manager
SELECT COUNT(dept_manager.emp_no), employees.first_name, employees.last_name FROM dept_manager INNER JOIN employees ON dept_manager.emp_no = employees.emp_no GROUP BY dept_manager.emp_no HAVING COUNT(dept_manager.emp_no)>0;


-- Select the name without any being repeated.
SELECT DISTINCT first_name FROM employees;

--Delete all employees with a salary greater than 20,000
DELETE employees, salaries
FROM employees JOIN salaries 
ON employees.emp_no = salaries.emp_no 
WHERE salaries.salary > 20000;

--Remove the department that has more employees
  DELETE FROM departments 
  WHERE dept_no = (
    SELECT dept_no 
    FROM dept_emp 
    WHERE to_date >= CURDATE() 
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC 
    LIMIT 1
  );
