-- MySQL Basics:

-- 1. DATA INSERTION:

  -- Table "employees":
  -- First test insertion for one single register
  INSERT INTO 
    employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
    values (1, '1986-12-23', 'Jorge', 'Garcia', 'M', '2020-01-01');
  -- Multiple insertion for the remaining elements
  INSERT INTO 
    employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
    values 
      (2, '2000-06-15', 'John', 'Smith', 'M', '2020-08-01'), 
      (3, '1997-03-19', 'Jake', 'Anderson', 'M', '2018-12-12'), 
      (4, '1960-01-06', 'Jacob', 'Ford', 'M', '1995-03-27'), 
      (5, '1955-11-30', 'Emilia', 'López', 'F', '1995-03-27'), 
      (6, '1984-02-28', 'Anne', 'Brooks', 'F', '2004-07-01'), 
      (7, '1970-04-22', 'Mary', 'Nichols', 'F', '2000-02-01'), 
      (8, '1979-10-09', 'Anne', 'Biden', 'F', '2010-09-01'), 
      (9, '1969-07-31', 'Anthony', 'Keyssar', 'M', '2001-11-11'), 
      (10, '1990-08-12', 'Diana', 'Browning', 'F', '2010-05-16'), 
      (11, '1989-09-11', 'Vincent', 'Waller', 'M', '2014-10-20'), 
      (12, '1981-05-15', 'Anne', 'Wu', 'F', '2008-04-22'), 
      (13, '1977-12-08', 'Albert', 'Kitroeff', 'M', '1999-12-31'), 
      (14, '1995-07-03', 'Jennifer', 'Sánchez', 'F', '2019-06-03'), 
      (15, '1982-09-23', 'Charles', 'Glueck', 'M', '2007-09-29');

  -- Table "salaries":
  INSERT INTO 
    salaries (emp_no, salary, from_date, to_date) 
    values 
      (1, 25000, '2020-01-01', now()), 
      (2, 42300, '2020-08-01', now()), 
      (3, 19800.70, '2018-12-12', '2020-03-31'), 
      (3, 33459.23, '2020-04-01', now()), 
      (4, 28000, '1995-03-27', now()), 
      (5, 9950, '1995-03-27', now()), 
      (6, 8000, '2004-07-01', now()), 
      (7, 18000, '2000-02-01', '2009-12-31'), 
      (7, 28750.55, '2010-01-01', now()), 
      (8, 35000, '2010-09-01', '2018-06-30'), 
      (8, 39000, '2018-07-01', now()), 
      (9, 44400, '2001-11-11', now()), 
      (10, 21900, '2010-05-16', now()), 
      (11, 38000, '2014-10-20', '2019-10-01'), 
      (11, 49575, '2019-10-02', now()), 
      (12, 15300, '2008-04-22', now()), 
      (13, 6900, '1999-12-31', now()), 
      (14, 12100, '2019-06-03', now()), 
      (15, 32000, '2007-09-29', '2012-04-22'), 
      (15, 40000, '2012-04-23', now());

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

  -- ALTERNATIVE 2 with JOIN
  DELETE employees , salaries
  FROM employees
  INNER JOIN salaries
  ON salaries.emp_no = employees.emp_no AND salaries.salary > 20000;
  
  
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
 
  
