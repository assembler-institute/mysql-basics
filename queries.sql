DROP DATABASE employees;
CREATE DATABASE employees;
USE employees;
SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';
+ -----------------------------+
| INFO | + -----------------------------+
| CREATING DATABASE STRUCTURE | + -----------------------------+
-- created table Employees
CREATE TABLE employees (
    emp_no INT NOT NULL,
    birth_date DATE NOT NULL,
    first_name VARCHAR(14) NOT NULL,
    last_name VARCHAR(16) NOT NULL,
    gender ENUM ('M', 'F') NOT NULL,
    hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no)
);
-- SHOW databases;
+ --------------------+
| Database | + --------------------+
| employees | | information_schema | | mysql | | performance_schema | | phpmyadmin | | test | + --------------------+
-- show tables;
+ ---------------------+
| Tables_in_employees | + ---------------------+
| employees | + ---------------------+
CREATE TABLE departments (
    dept_no CHAR(4) NOT NULL,
    dept_name VARCHAR(40) NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE KEY (dept_name)
);
-- show tables;
+ ---------------------+
| Tables_in_employees | + ---------------------+
| departments | | employees | + ---------------------+
CREATE TABLE dept_manager (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, dept_no)
);
-- show tables;
+ ---------------------+
| Tables_in_employees | + ---------------------+
| departments | | dept_manager | | employees | + ---------------------+
CREATE TABLE dept_emp (
    emp_no INT NOT NULL,
    dept_no CHAR(4) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, dept_no)
);
CREATE TABLE titles (
    emp_no INT NOT NULL,
    title VARCHAR(50) NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, title, from_date)
);
-- show tables,
+ ---------------------+
| Tables_in_employees | + ---------------------+
| departments | | dept_manager | | employees | | titles | + ---------------------+
CREATE TABLE salaries (
    emp_no INT NOT NULL,
    salary INT NOT NULL,
    from_date DATE NOT NULL,
    to_date DATE NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
);
+ ---------------------+
| Tables_in_employees | + ---------------------+
| departments | | dept_manager | | employees | | salaries | | titles | + ---------------------+
CREATE OR REPLACE VIEW dept_emp_latest_date AS
SELECT emp_no,
    MAX(from_date) AS from_date,
    MAX(to_date) AS to_date
FROM dept_emp
GROUP BY emp_no;
--  shows only the current department for each employee
CREATE OR REPLACE VIEW current_dept_emp AS
SELECT l.emp_no,
    dept_no,
    l.from_date,
    l.to_date
FROM dept_emp d
    INNER JOIN dept_emp_latest_date l ON d.emp_no = l.emp_no
    AND d.from_date = l.from_date
    AND l.to_date = d.to_date;
-- Insert at least 15 new employees:
INSERT INTO employees (
        emp_no,
        birth_date,
        first_name,
        last_name,
        gender,
        hire_date
    )
values (
        1,
        '1986-12-23',
        'Jorge',
        'Garcia',
        'M',
        '2020-01-01'
    ),
    (
        2,
        '2000-06-15',
        'John',
        'Smith',
        'M',
        '2020-08-01'
    ),
    (
        3,
        '1997-03-19',
        'Jake',
        'Anderson',
        'M',
        '2018-12-12'
    ),
    (
        4,
        '1960-01-06',
        'Jacob',
        'Ford',
        'M',
        '1995-03-27'
    ),
    (
        5,
        '1955-11-30',
        'Emilia',
        'López',
        'F',
        '1995-03-27'
    ),
    (
        6,
        '1984-02-28',
        'Anne',
        'Brooks',
        'F',
        '2004-07-01'
    ),
    (
        7,
        '1970-04-22',
        'Mary',
        'Nichols',
        'F',
        '2000-02-01'
    ),
    (
        8,
        '1979-10-09',
        'Anne',
        'Biden',
        'F',
        '2010-09-01'
    ),
    (
        9,
        '1969-07-31',
        'Anthony',
        'Keyssar',
        'M',
        '2001-11-11'
    ),
    (
        10,
        '1990-08-12',
        'Diana',
        'Browning',
        'F',
        '2010-05-16'
    ),
    (
        11,
        '1989-09-11',
        'Vincent',
        'Waller',
        'M',
        '2014-10-20'
    ),
    (
        12,
        '1981-05-15',
        'Anne',
        'Wu',
        'F',
        '2008-04-22'
    ),
    (
        13,
        '1977-12-08',
        'Albert',
        'Kitroeff',
        'M',
        '1999-12-31'
    ),
    (
        14,
        '1995-07-03',
        'Jennifer',
        'Sánchez',
        'F',
        '2019-06-03'
    ),
    (
        15,
        '1982-09-23',
        'Charles',
        'Glueck',
        'M',
        '2007-09-29'
    );
--  With salaries that are between a range of 5,000 and 50,000 of different gender - 5 employees must have at least two salaries in different ranges of dates and different amounts
MariaDB [employees] >
INSERT INTO->salaries (emp_no, salary, from_date, to_date)->
values->(1, 25000, '2020-01-01', now()),
->(2, 42300, '2020-08-01', now()),
->(3, 19800.70, '2018-12-12', '2020-03-31'),
->(3, 33459.23, '2020-04-01', now()),
->(4, 28000, '1995-03-27', now()),
->(5, 9950, '1995-03-27', now()),
->(6, 8000, '2004-07-01', now()),
->(7, 18000, '2000-02-01', '2009-12-31'),
->(7, 28750.55, '2010-01-01', now()),
->(8, 35000, '2010-09-01', '2018-06-30'),
->(8, 39000, '2018-07-01', now()),
->(9, 44400, '2001-11-11', now()),
->(10, 21900, '2010-05-16', now()),
->(11, 38000, '2014-10-20', '2019-10-01'),
->(11, 49575, '2019-10-02', now()),
->(12, 15300, '2008-04-22', now()),
->(13, 6900, '1999-12-31', now()),
->(14, 12100, '2019-06-03', now()),
->(15, 32000, '2007-09-29', '2012-04-22'),
->(15, 40000, '2012-04-23', now());
Query OK,
20 rows affected,
15 warnings (0.005 sec) Records: 20 Duplicates: 0 Warnings: 15 -- Creating Table "departments" content:
INSERT INTO departments (dept_no, dept_name)
values ('01a', 'Finance'),
    ('01b', 'Administration'),
    ('02a', 'Sales'),
    ('02b', 'Procurement'),
    ('03', 'Logistics');
-- Update departments: change the name of all departments.
UPDATE departments
SET dept_name = CASE
        WHEN dept_no = '01a' THEN 'Finance & Administration'
        WHEN dept_no = '01b' THEN 'HR, Expats & Payroll'
        WHEN dept_no = '02a' THEN 'Sales & Customer Service'
        WHEN dept_no = '02b' THEN 'Procurement & Supplier Relationship'
        WHEN dept_no = '03' THEN 'Logistics & SCM'
    END;
-- Table "dept_manager" ,  5 employees are managers:
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
values (1, '01a', '2020-03-01', now()),
    (5, '01b', '2000-09-30', '2020-01-01'),
    (6, '01b', '2020-01-02', now()),
    (7, '02a', '2010-12-01', '2020-01-01'),
    (5, '02a', '2020-01-02', now()),
    (11, '02b', '2016-11-15', now()),
    (12, '03', '2012-05-25', now());
-- Table "dept_emp", 10 employees belong to more than one department:
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
values (1, '01b', '2020-01-01', '2020-02-29'),
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
-- Table "titles", All employees have a degree and at least 5 titles are from 2020
:
INSERT INTO titles (emp_no, title, from_date, to_date)
values (
        1,
        'Degree in Civil Engineering',
        '2011-09-25',
        null
    ),
    (
        2,
        'BA in Business Administration',
        '2020-06-13',
        null
    ),
    (3, 'BA in Law', '2016-10-28', null),
    (4, 'BA in Economics', '1985-12-03', null),
    (
        5,
        'Degree in Mechanical Engineering',
        '2020-02-02',
        null
    ),
    (6, 'BA in Architecture', '2006-08-30', null),
    (7, 'BA in Psychology', '1994-07-07', null),
    (
        8,
        'Degree in Computer Science',
        '2020-03-31',
        null
    ),
    (
        9,
        'Degree in Applied Mathematics',
        '1992-01-01',
        null
    ),
    (10, 'Degree in Physics', '2014-06-27', null),
    (
        11,
        'BA in English Philology',
        '2020-05-17',
        null
    ),
    (12, 'BA in Law', '2003-12-19', null),
    (
        13,
        'BA in Business Administration',
        '2000-09-24',
        null
    ),
    (14, 'BA in Psychology', '2020-01-10', null),
    (15, 'BA in Economics', '2005-04-23', null);
-- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
UPDATE employees
SET first_name = 'Marco'
WHERE (
        first_name = 'Charles'
        AND last_name LIKE 'G%'
        AND birth_date > '1980-09-23'
    );
-- Select all employees with a salary greater than 20,000
SELECT *
FROM employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    AND salaries.salary > 20000;
+ --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | emp_no | salary | from_date | to_date | + --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
| 1 | 1986 -12 -23 | Jorge | Garcia | M | 2020 -01 -01 | 1 | 25000 | 2020 -01 -01 | 2022 -01 -20 | | 2 | 2000 -06 -15 | John | Smith | M | 2020 -08 -01 | 2 | 42300 | 2020 -08 -01 | 2022 -01 -20 | | 3 | 1997 -03 -19 | Jake | Anderson | M | 2018 -12 -12 | 3 | 33459 | 2020 -04 -01 | 2022 -01 -20 | | 4 | 1960 -01 -06 | Jacob | Ford | M | 1995 -03 -27 | 4 | 28000 | 1995 -03 -27 | 2022 -01 -20 | | 7 | 1970 -04 -22 | Mary | Nichols | F | 2000 -02 -01 | 7 | 28751 | 2010 -01 -01 | 2022 -01 -20 | | 8 | 1979 -10 -09 | Anne | Biden | F | 2010 -09 -01 | 8 | 35000 | 2010 -09 -01 | 2018 -06 -30 | | 8 | 1979 -10 -09 | Anne | Biden | F | 2010 -09 -01 | 8 | 39000 | 2018 -07 -01 | 2022 -01 -20 | | 9 | 1969 -07 -31 | Anthony | Keyssar | M | 2001 -11 -11 | 9 | 44400 | 2001 -11 -11 | 2022 -01 -20 | | 10 | 1990 -08 -12 | Diana | Browning | F | 2010 -05 -16 | 10 | 21900 | 2010 -05 -16 | 2022 -01 -20 | | 11 | 1989 -09 -11 | Vincent | Waller | M | 2014 -10 -20 | 11 | 38000 | 2014 -10 -20 | 2019 -10 -01 | | 11 | 1989 -09 -11 | Vincent | Waller | M | 2014 -10 -20 | 11 | 49575 | 2019 -10 -02 | 2022 -01 -20 | | 15 | 1982 -09 -23 | Marco | Glueck | M | 2007 -09 -29 | 15 | 32000 | 2007 -09 -29 | 2012 -04 -22 | | 15 | 1982 -09 -23 | Marco | Glueck | M | 2007 -09 -29 | 15 | 40000 | 2012 -04 -23 | 2022 -01 -20 | + --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
-- Select all employees with a salary below 10,000
SELECT *
FROM employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    AND salaries.salary < 10000;
+ --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | emp_no | salary | from_date | to_date | + --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
| 5 | 1955 -11 -30 | Emilia | López | F | 1995 -03 -27 | 5 | 9950 | 1995 -03 -27 | 2022 -01 -20 | | 6 | 1984 -02 -28 | Anne | Brooks | F | 2004 -07 -01 | 6 | 8000 | 2004 -07 -01 | 2022 -01 -20 | | 13 | 1977 -12 -08 | Albert | Kitroeff | M | 1999 -12 -31 | 13 | 6900 | 1999 -12 -31 | 2022 -01 -20 | + --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
-- Select all employees who have a salary between 14.00 and 50,000
SELECT *
FROM employees
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    AND salaries.salary BETWEEN 14000 AND 50000;
+ --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date | emp_no | salary | from_date | to_date | + --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
| 1 | 1986 -12 -23 | Jorge | Garcia | M | 2020 -01 -01 | 1 | 25000 | 2020 -01 -01 | 2022 -01 -20 | | 2 | 2000 -06 -15 | John | Smith | M | 2020 -08 -01 | 2 | 42300 | 2020 -08 -01 | 2022 -01 -20 | | 3 | 1997 -03 -19 | Jake | Anderson | M | 2018 -12 -12 | 3 | 19801 | 2018 -12 -12 | 2020 -03 -31 | | 3 | 1997 -03 -19 | Jake | Anderson | M | 2018 -12 -12 | 3 | 33459 | 2020 -04 -01 | 2022 -01 -20 | | 4 | 1960 -01 -06 | Jacob | Ford | M | 1995 -03 -27 | 4 | 28000 | 1995 -03 -27 | 2022 -01 -20 | | 7 | 1970 -04 -22 | Mary | Nichols | F | 2000 -02 -01 | 7 | 18000 | 2000 -02 -01 | 2009 -12 -31 | | 7 | 1970 -04 -22 | Mary | Nichols | F | 2000 -02 -01 | 7 | 28751 | 2010 -01 -01 | 2022 -01 -20 | | 8 | 1979 -10 -09 | Anne | Biden | F | 2010 -09 -01 | 8 | 35000 | 2010 -09 -01 | 2018 -06 -30 | | 8 | 1979 -10 -09 | Anne | Biden | F | 2010 -09 -01 | 8 | 39000 | 2018 -07 -01 | 2022 -01 -20 | | 9 | 1969 -07 -31 | Anthony | Keyssar | M | 2001 -11 -11 | 9 | 44400 | 2001 -11 -11 | 2022 -01 -20 | | 10 | 1990 -08 -12 | Diana | Browning | F | 2010 -05 -16 | 10 | 21900 | 2010 -05 -16 | 2022 -01 -20 | | 11 | 1989 -09 -11 | Vincent | Waller | M | 2014 -10 -20 | 11 | 38000 | 2014 -10 -20 | 2019 -10 -01 | | 11 | 1989 -09 -11 | Vincent | Waller | M | 2014 -10 -20 | 11 | 49575 | 2019 -10 -02 | 2022 -01 -20 | | 12 | 1981 -05 -15 | Anne | Wu | F | 2008 -04 -22 | 12 | 15300 | 2008 -04 -22 | 2022 -01 -20 | | 15 | 1982 -09 -23 | Marco | Glueck | M | 2007 -09 -29 | 15 | 32000 | 2007 -09 -29 | 2012 -04 -22 | | 15 | 1982 -09 -23 | Marco | Glueck | M | 2007 -09 -29 | 15 | 40000 | 2012 -04 -23 | 2022 -01 -20 | + --------+------------+------------+-----------+--------+------------+--------+--------+------------+------------+
-- Select the total number of employees

SELECT COUNT(emp_no) FROM employees;
+---------------+
| COUNT(emp_no) |
+---------------+
|            15 |
+---------------+

-- Select the total number of employees who have worked in more than one department

SELECT COUNT(emp_no) 
  FROM (
    SELECT emp_no 
    FROM dept_emp 
    GROUP BY emp_no 
    HAVING COUNT(emp_no) > 1
  ) employees;

  +---------------+
| COUNT(emp_no) |
+---------------+
|            10 |
+---------------+

-- Select the titles of the year 2020

 SELECT * 
  FROM titles 
  WHERE from_date 
    BETWEEN '2019-01-01' AND '2019-12-31';

    +--------+----------------------------------+------------+---------+
| emp_no | title                            | from_date  | to_date |
+--------+----------------------------------+------------+---------+
|      2 | BA in Business Administration    | 2020-06-13 | NULL    |
|      5 | Degree in Mechanical Engineering | 2020-02-02 | NULL    |
|      8 | Degree in Computer Science       | 2020-03-31 | NULL    |
|     11 | BA in English Philology          | 2020-05-17 | NULL    |
|     14 | BA in Psychology                 | 2020-01-10 | NULL    |
+--------+----------------------------------+------------+---------+

-- Select only the name of the employees in capital letters

SELECT UCASE(first_name) FROM employees;

    +-------------------+
| UCASE(first_name) |
+-------------------+
| JORGE             |
| JOHN              |
| JAKE              |
| JACOB             |
| EMILIA            |
| ANNE              |
| MARY              |
| ANNE              |
| ANTHONY           |
| DIANA             |
| VINCENT           |
| ANNE              |
| ALBERT            |
| JENNIFER          |
| MARCO             |
+-------------------+

-- Select the name, surname and name of the current department of each employee

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

+------------+-----------+-------------------------------------+
| first_name | last_name | dept_name                           |
+------------+-----------+-------------------------------------+
| Jorge      | Garcia    | Finance & Administration            |
| John       | Smith     | Logistics & SCM                     |
| Jake       | Anderson  | Procurement & Supplier Relationship |
| Jacob      | Ford      | Procurement & Supplier Relationship |
| Emilia     | López     | Finance & Administration            |
| Anne       | Brooks    | HR, Expats & Payroll                |
| Mary       | Nichols   | Sales & Customer Service            |
| Anne       | Biden     | Sales & Customer Service            |
| Anthony    | Keyssar   | Logistics & SCM                     |
| Diana      | Browning  | Logistics & SCM                     |
| Vincent    | Waller    | Logistics & SCM                     |
| Anne       | Wu        | Procurement & Supplier Relationship |
| Albert     | Kitroeff  | Sales & Customer Service            |
| Jennifer   | Sánchez   | Logistics & SCM                     |
| Marco      | Glueck    | Logistics & SCM                     |
+------------+-----------+-------------------------------------+

-- Select the name, surname and number of times the employee has worked as a manager

 SELECT E.first_name, E.last_name, M.times_manager 
  FROM employees E 
  LEFT JOIN (
    SELECT emp_no, COUNT(*) AS times_manager 
    FROM dept_manager 
    GROUP BY emp_no
  ) M ON E.emp_no = M.emp_no;

  +------------+-----------+---------------+
| first_name | last_name | times_manager |
+------------+-----------+---------------+
| Jorge      | Garcia    |             1 |
| John       | Smith     |          NULL |
| Jake       | Anderson  |          NULL |
| Jacob      | Ford      |          NULL |
| Emilia     | López     |             2 |
| Anne       | Brooks    |             1 |
| Mary       | Nichols   |             1 |
| Anne       | Biden     |          NULL |
| Anthony    | Keyssar   |          NULL |
| Diana      | Browning  |          NULL |
| Vincent    | Waller    |             1 |
| Anne       | Wu        |             1 |
| Albert     | Kitroeff  |          NULL |
| Jennifer   | Sánchez   |          NULL |
| Marco      | Glueck    |          NULL |
+------------+-----------+---------------+

-- Select the name of employees without any being repeated

SELECT DISTINCT first_name FROM employees;

+------------+
| first_name |
+------------+
| Jorge      |
| John       |
| Jake       |
| Jacob      |
| Emilia     |
| Anne       |
| Mary       |
| Anthony    |
| Diana      |
| Vincent    |
| Albert     |
| Jennifer   |
| Marco      |
+------------+

-- Delete all employees with a salary greater than 20,000

 DELETE FROM employees 
    WHERE emp_no IN (
      SELECT E.emp_no 
      FROM employees E 
      JOIN salaries S ON E.emp_no = S.emp_no 
      WHERE S.salary > 20000 AND S.to_date >= CURDATE()
    );

-- SELECT * FROM employees,
-+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date  |
+--------+------------+------------+-----------+--------+------------+
|      5 | 1955-11-30 | Emilia     | López     | F      | 1995-03-27 |
|      6 | 1984-02-28 | Anne       | Brooks    | F      | 2004-07-01 |
|     12 | 1981-05-15 | Anne       | Wu        | F      | 2008-04-22 |
|     13 | 1977-12-08 | Albert     | Kitroeff  | M      | 1999-12-31 |
|     14 | 1995-07-03 | Jennifer   | Sánchez   | F      | 2019-06-03 |
+--------+------------+------------+-----------+--------+------------+

-- Remove the department that has more  employees

+---------+-------------------------------------+
| dept_no | dept_name                           |
+---------+-------------------------------------+
| 01b     | HR, Expats & Payroll                |
| 03      | Logistics & SCM                     |
| 02b     | Procurement & Supplier Relationship |
| 02a     | Sales & Customer Service            |
+---------+-------------------------------------+
