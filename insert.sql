-- DATA INSERT

-- REQUIREMENTS

---- 1. Insert 15 new employees: 'M' || 'F'
---- 2. Add salaries to those 15 employees ranging from 5k to 50k
---- 3. 5 employees to have 2 salaries in different dates and different ammounts
---- 4. 10 employees have more than 1 department
---- 5. 5 employees are managers
---- 6. 5 have a degree, 5 titles are from 2020
---- 7. 3 employees have the same name

--- 1. INSERT EMPLOYEES

-- FIRST ATTEMPT

INSERT INTO  employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
values (1, '1988-05-30', 'Jose', 'Valenzuela', 'M', '2015-05-01');

-- INSERT THE OTHER 14 EMPLOYEES

INSERT INTO  employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
values
 (2, '1987-04-01', 'Penelope', 'Gietz', 'F', '2006-03-01'),
 (3, '1984-01-15', 'Nick', 'Higgins', 'M', '2015-01-01'),
 (4, '1974-02-16', 'Ed', 'Whalen', 'M', '2015-05-01'),
 (5, '1972-05-12', 'Jennifer', 'King', 'F', '2015-09-01'),
 (6, '1981-05-11', 'John', 'Kochhar', 'M', '2015-09-01'),
 (7, '1991-08-04', 'Bette', 'De Haan', 'F', '2015-09-01'),
 (8, '1984-07-03', 'Grace', 'Faviet', 'F', '2015-03-01'),
 (9, '1958-08-17', 'Matthew', 'Chen', 'M', '2015-03-01'),
 (10, '1976-12-10', 'John', 'Sciarra', 'M', '2015-03-01'),
 (11, '1979-11-20', 'Christian', 'Urman', 'M', '2015-03-01'),
 (12, '1980-10-30', 'Zero', 'Popp', 'M', '2015-03-01'),
 (13, '1992-09-08', 'John', 'Greenberg', 'M', '2015-03-01'),
 (14, '1965-08-09', 'Uma', 'Mavris', 'F', '2015-03-01'),
 (15, '1969-02-14', 'Vivien', 'Hunold', 'F', '2015-03-01');


-- 2. INSERT SALARIES

-- FIRST ATTEMPT

INSERT INTO salaries (emp_no, salary, from_date, to_date)
values (1, 5000, '2008-05-30', now());

-- INSERT THE OTHER 14 SALARIES

INSERT INTO  salaries (emp_no, salary, from_date, to_date)
values
 (2, 10000, '2007-04-01', now()),
 (3, 14000, '2004-01-15', now()),
 (4, 18000, '1994-02-16', '1997-02-16'),
 (4, 22000, '1997-03-25', now()),
 (5, 20000, '1992-05-12', '1998-05-12'),
 (5, 38000, '1998-05-12', now()),
 (6, 32000, '2001-05-11', now()),
 (7, 35000, '2011-08-04', now()),
 (8, 37700, '2004-07-03', now()),
 (9, 25000, '1975-08-17', '1986-08-17'),
 (9, 50000, '1990-08-17', now()),
 (10, 42000, '1999-12-10', now()),
 (11, 41000, '2004-11-20', now()),
 (12, 45000, '2007-10-30', now()),
 (13, 47000, '2012-09-08', now()),
 (14, 38000, '1985-08-09', '2001-08-09'),
 (14, 45000, '2013-08-09', now()),
 (15, 39000, '1989-02-14', '1998-02-14');
 (15, 25000, '2001-02-14', now());

-- 3. CROSS DEPARTMENT

-- 3.1 NEED TO CREATE DEPARTMENTS FIRST

-- FIRST ATTEMPT

INSERT INTO departments (dept_no, dept_name)
values 
('mkt', 'Marketing');

-- OTHER FOUR DEPARTMENTS

INSERT INTO departments (dept_no, dept_name)
values 
('$$$', 'Finances'),
('IT', 'Technical'),
('POS', 'Sales'),
('LG', 'Logistics');

-- 3.2 EMPLOYEES WHERE 10 EMPLOYEES HAVE MORE THAN ONE DEPT

-- FIRST ATTEMPT

INSERT INTO dept_emp(emp_no, dept_no, from_date, to_date)
values
(1, 'mkt', '2008-05-30', now());

-- REST OF EMPLOYEES

INSERT INTO dept_emp(emp_no, dept_no, from_date, to_date)
value
(2, '$$$', '2007-04-01', '2010-02-15'),
(2, 'POS', '2010-02-16', now()),
(3, '$$$', '2004-01-15', now()),
(4, 'POS', '1994-02-16', '1997-02-16'),
(4, '$$$', '1997-02-16', now()),
(5, 'LG', '1992-05-12', '1998-05-12'),
(5, 'POS', '1998-05-13', now()),
(6, 'LG', '2001-05-11', '2005-05-15'),
(6, 'POS', '2005-05-16', now()),
(7, 'IT', '2011-08-04', '2015-08-15'),
(7, 'POS', '2015-08-16', now()),
(8, 'POS', '2004-07-03', now()),
(9, 'POS', '1975-08-17', '1986-08-17'),
(9, 'LG', '1990-08-17', now()),
(10, 'mkt', '1999-12-10', now()),
(11, 'POS', '2004-11-20', '2010-11-15'),
(11, 'mkt', '2010-11-16', now()),
(12, 'IT', '2007-10-30', now()),
(13, 'mkt', '2012-09-08', '2017-09-15'),
(13, 'IT', '2017-09-16', now()),
(14, 'mkt', '1985-08-09', '2001-08-09'),
(14, 'IT', '2013-08-10', now()),
(15, 'mkt', '1989-02-14', '1998-02-14'),
(15, 'IT', '2001-02-15', now());

-- FIRST ATTEMPT
  -- Table "departments":
  INSERT INTO 
    departments (dept_no, dept_name) 
    values 
      ('01a', 'Finance'), 
      ('01b', 'Administration'), 
      ('02a', 'Sales'), 
      ('02b', 'Procurement'), 
      ('03', 'Logistics');

  -- Table "dept_manager":
  INSERT INTO 
    dept_manager (emp_no, dept_no, from_date, to_date) 
    values 
      (1, '01a', '2020-03-01', now()), 
      (5, '01b', '2000-09-30', '2020-01-01'), 
      (6, '01b', '2020-01-02', now()), 
      (7, '02a', '2010-12-01', '2020-01-01'), 
      (5, '02a', '2020-01-02', now()), 
      (11, '02b', '2016-11-15', now()), 
      (12, '03', '2012-05-25', now());

  -- Table "dept_emp":
  INSERT INTO 
    dept_emp (emp_no, dept_no, from_date, to_date) 
    values 
    (1, '01b', '2020-01-01', '2020-02-29'), 
    (1, '01a', '2020-03-01', now()), 
    (2, '03', '2020-08-05', now()), 
    (3, '02b', '2018-12-12', now()), 
    (4, '02a', '1995-03-27', '2010-03-31'), 
    (4, '02b', '2010-01-04', now()), 
    (5, '01b', '1995-03-27', '2020-01-01'), 
    (5, '01a', '2020-01-02', now()), 
    (6, '01b', '2004-07-01', now()), 
    (7, '02a', '2000-02-01', now()), 
    (8, '03', '2010-09-01', '2015-09-10'), 
    (8, '02a', '2015-09-11', now()), 
    (9, '02b', '2001-11-11', '2012-12-11'), 
    (9, '03', '2012-12-12', now()), 
    (10, '03', '2010-05-16', now()), 
    (11, '02b', '2014-10-20', '2019-07-15'), 
    (11, '03', '2019-07-16', now()), 
    (12, '03', '2008-04-22', '2019-07-15'), 
    (12, '02b', '2019-07-16', now()), 
    (13, '01b', '1999-12-31', '2018-12-31'), 
    (13, '02a', '2019-01-01', now()), 
    (14, '02b', '2019-06-03', '2020-06-29'), 
    (14, '03', '2020-06-30', now()), 
    (15, '01a', '2007-09-29', '2017-08-30'), 
    (15, '03', '2017-08-31', now());

  -- Table "titles":
  INSERT INTO 
    titles (emp_no, title, from_date, to_date) 
    values 
      (1, 'Degree in Civil Engineering', '2011-09-25', null), 
      (2, 'BA in Business Administration', '2020-06-13', null), 
      (3, 'BA in Law', '2016-10-28', null), 
      (4, 'BA in Economics', '1985-12-03', null), 
      (5, 'Degree in Mechanical Engineering', '2020-02-02', null), 
      (6, 'BA in Architecture', '2006-08-30', null), 
      (7, 'BA in Psychology', '1994-07-07', null), 
      (8, 'Degree in Computer Science', '2020-03-31', null), 
      (9, 'Degree in Applied Mathematics', '1992-01-01', null), 
      (10, 'Degree in Physics', '2014-06-27', null), 
      (11, 'BA in English Philology', '2020-05-17', null), 
      (12, 'BA in Law', '2003-12-19', null), 
      (13, 'BA in Business Administration', '2000-09-24', null), 
      (14, 'BA in Psychology', '2020-01-10', null), 
      (15, 'BA in Economics', '2005-04-23', null);

-- 2. DATA UPDATE:

  -- Update employees: change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
  UPDATE employees 
    SET first_name = 'Carmen'
    WHERE (
      first_name = 'Anne' AND 
      last_name LIKE '%b%' AND 
      birth_date > '1980-01-01'
    );

  -- Update departments: change the name of all departments.
  UPDATE departments 
    SET dept_name = 
      CASE 
        WHEN dept_no = '01a' THEN 'Finance & Administration' 
        WHEN dept_no = '01b' THEN 'HR, Expats & Payroll' 
        WHEN dept_no = '02a' THEN 'Sales & Customer Service' 
        WHEN dept_no = '02b' THEN 'Procurement & Supplier Relationship' 
        WHEN dept_no = '03' THEN 'Logistics & SCM' 
      END;

-- 3. DATA OBTAINMENT:

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
    HAVING COUNT(emp_no) > 1
  ) employees;

  -- Select the titles of the year 2019.
  SELECT * 
  FROM titles 
  WHERE from_date 
    BETWEEN '2019-01-01' AND '2019-12-31';

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
      GROUP BY emp_no
    )
  ) recent_depts ON E.emp_no = recent_depts.emp_no 
  JOIN departments D ON recent_depts.dept_no = D.dept_no 
  ORDER BY E.emp_no;

  -- Only showing employees who are currently assigned to a department
  -- SELECT E.first_name, E.last_name, D.dept_name
  -- FROM employees E 
  -- JOIN (
  --   SELECT emp_no, dept_no, to_date 
  --   FROM dept_emp 
  --   WHERE to_date IN (
  --     SELECT to_date 
  --     FROM dept_emp 
  --     WHERE to_date >= CURDATE()
  --     GROUP BY emp_no
  --   )
  -- ) recent_depts ON E.emp_no = recent_depts.emp_no 
  -- JOIN departments D ON recent_depts.dept_no = D.dept_no 
  -- ORDER BY E.emp_no;

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
  
  -- ALTERNATIVE 2 --> ERROR: 'LIMIT & IN/ALL/ANY/SOME subquery' not supported by MariaDB
  -- DELETE FROM departments 
  --   WHERE dept_no IN (
  --     SELECT dept_no, COUNT(DISTINCT emp_no) AS current_emp 
  --     FROM dept_emp 
  --     WHERE to_date >= CURDATE() 
  --     GROUP BY dept_no
  --     ORDER BY current_emp DESC 
  --     LIMIT 1
  --   );