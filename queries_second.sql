--  Sample employee database 
--  See changelog table for details
--  Copyright (C) 2007,2008, MySQL AB
--  
--  Original data created by Fusheng Wang and Carlo Zaniolo
--  http://www.cs.aau.dk/TimeCenter/software.htm
--  http://www.cs.aau.dk/TimeCenter/Data/employeeTemporalDataSet.zip
-- 
--  Current schema by Giuseppe Maxia 
--  Data conversion from XML to relational by Patrick Crews
-- 
-- This work is licensed under the 
-- Creative Commons Attribution-Share Alike 3.0 Unported License. 
-- To view a copy of this license, visit 
-- http://creativecommons.org/licenses/by-sa/3.0/ or send a letter to 
-- Creative Commons, 171 Second Street, Suite 300, San Francisco, 
-- California, 94105, USA.
-- 
--  DISCLAIMER
--  To the best of our knowledge, this data is fabricated, and
--  it does not correspond to real people. 
--  Any similarity to existing people is purely coincidental.
-- 

DROP DATABASE IF EXISTS employees;
CREATE DATABASE IF NOT EXISTS employees;
USE employees;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS dept_emp,
                     dept_manager,
                     titles,
                     salaries, 
                     employees, 
                     departments;

/*!50503 set default_storage_engine = InnoDB */;
/*!50503 select CONCAT('storage engine: ', @@default_storage_engine) as INFO */;

CREATE TABLE employees (
    emp_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (emp_no)
);

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

CREATE TABLE dept_manager (
   emp_no       INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (emp_no,dept_no)
); 

CREATE TABLE dept_emp (
    emp_no      INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no)  REFERENCES employees   (emp_no)  ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,dept_no)
);

CREATE TABLE titles (
    emp_no      INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no,title, from_date)
) 
; 

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
) 
; 

CREATE OR REPLACE VIEW dept_emp_latest_date AS
    SELECT emp_no, MAX(from_date) AS from_date, MAX(to_date) AS to_date
    FROM dept_emp
    GROUP BY emp_no;

# shows only the current department for each employee
CREATE OR REPLACE VIEW current_dept_emp AS
    SELECT l.emp_no, dept_no, l.from_date, l.to_date
    FROM dept_emp d
        INNER JOIN dept_emp_latest_date l
        ON d.emp_no=l.emp_no AND d.from_date=l.from_date AND l.to_date = d.to_date;
        
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (1, '1995-01-01', 'John', 'Doe', 'M', '2020-01-01'),
       (2, '1995-02-01', 'Jane', 'Doe', 'F', '2020-02-01'),
       (3, '1995-03-01', 'John', 'Smith', 'M', '2020-03-01'),
       (4, '1995-04-01', 'Jane', 'Smith', 'F', '2020-04-01'),
       (5, '1995-05-01', 'John', 'Johnson', 'M', '2020-05-01'),
       (6, '1995-06-01', 'Jane', 'Johnson', 'F', '2020-06-01'),
       (7, '1995-07-01', 'John', 'Williams', 'M', '2020-07-01'),
       (8, '1995-08-01', 'Jane', 'Williams', 'F', '2020-08-01'),
       (9, '1995-09-01', 'John', 'Jones', 'M', '2020-09-01'),
       (10, '1995-10-01', 'Jane', 'Jones', 'F', '2020-10-01'),
       (11, '1995-11-01', 'John', 'Brown', 'M', '2020-11-01'),
       (12, '1995-12-01', 'Jane', 'Brown', 'F', '2020-12-01'),
       (13, '1995-12-01', 'John', 'Miller', 'M', '2020-12-01'),
       (14, '1995-12-01', 'Jane', 'Miller', 'F', '2020-12-01'),
       (15, '1995-12-01', 'John', 'Moore', 'M', '2020-12-01');
       
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (4, 'd002', '2022-04-02', '2024-04-01'),
       (5, 'd001', '2020-05-01', '2022-05-01'),
       (5, 'd002', '2022-05-02', '2024-05-01'),
       (6, 'd001', '2020-06-01', '2022-06-01'),
       (6, 'd002', '2022-06-02', '2024-06-01'),
       (7, 'd001', '2020-07-01', '2022-07-01'),
       (7, 'd002', '2022-07-02', '2024-07-01'),
       (8, 'd001', '2020-08-01', '2022-08-01'),
       (8, 'd002', '2022-08-02', '2024-08-01'),
       (9, 'd001', '2020-09-01', '2022-09-01'),
       (9, 'd002', '2022-09-02', '2024-09-01'),
       (10, 'd001', '2020-10-01', '2022-10-01'),
       (10, 'd002', '2022-10-02', '2024-10-01');

INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (1, 'd001', '2020-01-01', '2022-01-01'),
       (2, 'd002', '2020-02-01', '2022-02-01'),
       (3, 'd003', '2020-03-01', '2022-03-01'),
       (4, 'd004', '2020-04-01', '2022-04-01'),
       (5, 'd001', '2020-05-01', '2022-05-01');
       
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (5, 'Engineer', '2022-05-02', '2024-05-01'),
       (6, 'Manager', '2020-06-01', '2022-06-01'),
       (6, 'Engineer', '2022-06-02', '2024-06-01'),
       (7, 'Manager', '2020-07-01', '2022-07-01'),
       (7, 'Engineer', '2022-07-02', '2024-07-01'),
       (8, 'Manager', '2020-08-01', '2022-08-01'),
       (8, 'Engineer', '2022-08-02', '2024-08-01'),
       (9, 'Manager', '2020-09-01', '2022-09-01'),
       (9, 'Engineer', '2022-09-02', '2024-09-01'),
       (10, 'Manager', '2020-10-01', '2022-10-01'),
       (10, 'Engineer', '2022-10-02', '2024-10-01');
       
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (1, 10000, '2020-01-01', '2022-01-01'),
       (2, 15000, '2022-01-02', '2024-01-01'),
       (3, 20000, '2020-02-01', '2022-02-01'),
       (4, 25000, '2022-02-02', '2024-02-01'),
       (5, 30000, '2020-03-01', '2022-03-01'),
       (6, 35000, '2022-03-02', '2024-03-01'),
       (7, 40000, '2020-04-01', '2022-04-01'),
       (8, 45000, '2022-04-02', '2024-04-01'),
       (9, 5000, '2020-05-01', '2022-05-01'),
       (10, 5000, '2022-05-02', '2024-05-01'),
       (11, 3000, '2022-03-01', '2024-06-01'),
	   (12, 1500, '2020-05-01', '2024-06-03'),
	   (13, 3600, '2020-03-03', '2024-07-06'),
	   (14, 2200, '2020-12-02', '2024-07-18'),
	   (15, 1300, '2020-02-05', '2024-08-05');
       
UPDATE employees
SET first_name = 'Albert', last_name = 'Jhonson'
WHERE first_name = 'John' AND last_name = 'Doe' AND birth_date = '1995-01-01';

UPDATE departments
SET dept_name = 'Development'
WHERE dept_no = 'd002';

SELECT employees.*, salaries.salary
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salaries.salary > 20000;

SELECT employees.*, salaries.salary 
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.salary < 10000;

SELECT employees.*, salaries.salary 
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.salary BETWEEN 14000 AND 50000;

SELECT COUNT(*) as 'Total Employees' FROM employees;

SELECT COUNT(DISTINCT dept_emp.emp_no) as 'Total Employees' FROM dept_emp
GROUP BY emp_no
HAVING COUNT(*) > 1;

SELECT title
FROM titles
WHERE YEAR(from_date) = 2020;

SELECT first_name FROM employees WHERE first_name REGEXP '[[:upper:]]';

SELECT e.first_name, e.last_name, d.dept_name
FROM employees e
JOIN current_dept_emp cde ON e.emp_no = cde.emp_no
JOIN departments d ON cde.dept_no = d.dept_no;

SELECT first_name, last_name, COUNT(title) AS 'Number of Manager Positions'
FROM employees
JOIN titles ON employees.emp_no = titles.emp_no
WHERE title = 'Manager'
GROUP BY first_name, last_name
ORDER BY COUNT(title) DESC;

SELECT DISTINCT first_name FROM employees;

DELETE FROM employees
WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary > 20000);


DELETE FROM departments WHERE dept_no = (
    SELECT dept_no
    FROM dept_emp
    JOIN employees ON dept_emp.emp_no = employees.emp_no
    GROUP BY dept_no
    ORDER BY COUNT(dept_emp.emp_no) DESC
    LIMIT 1
);