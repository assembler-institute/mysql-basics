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

DROP DATABASE IF EXISTS employees;
CREATE DATABASE IF NOT EXISTS employees;
SET FOREIGN_KEY_CHECKS=0;
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
);

CREATE TABLE salaries (
    emp_no      INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no) ON DELETE CASCADE,
    PRIMARY KEY (emp_no, from_date)
);

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


-- INSERT DEPARTMENTS
INSERT INTO departments (dept_no, dept_name)
VALUES (1,'Marketing');
INSERT INTO departments (dept_no, dept_name)
VALUES (2,'Ventas');
INSERT INTO departments (dept_no, dept_name)
VALUES (3,'Recursos Humanos');
INSERT INTO departments (dept_no, dept_name)
VALUES (4,'Administración');
INSERT INTO departments (dept_no, dept_name)
VALUES (5,'I+D');

-- // INSERT EMPLOYEES // --

-- Insert at least 15 new employees:
    -- With salaries that are between a range of 5,000 and 50,000 of different gender
    -- 5 employees must have at least two salaries in different ranges of dates and different amounts
    -- 10 employees belong to more than one department
    -- 5 employees are managers
    -- All employees have a degree and at least 5 titles are from 2020
    -- At least 3 employees have the same name

-- JOSE MANUEL
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender,hire_date) 
VALUES (1,'1996-12-29' , 'Jose', 'Manuel','M','2020-06-14');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (1, 21000, '2020-06-14', '2043-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (1,1, '2020-06-14', '2043-06-14');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (1,1, '2021-02-14', '2043-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (1,'SQL Certificate', '2020-01-14', '2020-08-14');

-- JOSE MIGUEL
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (2,'1984-03-12' , 'Jose', 'Miguel','M','2014-05-07');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (2, 35000, '2014-05-07', '2034-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (2,2 , '2014-05-07', '2034-06-09');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (2,2, '2014-05-07', '2034-06-30');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (2,'Master in Phisycs', '2020-02-12', '2020-05-06');

-- JOSE MARIA
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (3,'1976-06-03' , 'Jose', 'Maria','M','2017-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (3, 27000, '2017-03-11', '2025-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (3, 3, '2017-03-11', '2025-06-14');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (3,3, '2021-02-08', '2043-06-16');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (3,'English C2 Certificate', '2019-01-14', '2020-01-20');

-- LAURA FERNANDEZ
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (4,'1995-06-03' , 'Laura', 'Fernandez','F','2015-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (4, 24000, '2015-03-11', '2056-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (4, 4, '2015-03-11', '2056-06-14');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (4,4, '2019-02-08', '2056-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (4,'PhD in Quantum Mechanics', '2018-01-14', '2020-05-20');

-- SARA OLMOS
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (5,'1967-06-03' , 'Sara', 'Olmos','F','2019-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (5, 32000, '2019-03-11', '2033-06-12');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (5, 5, '2019-03-11', '2021-04-14');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (5,5, '2012-02-08', '2021-05-14');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES (5,3, '2021-05-14', '2033-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (5,'PHP Certificate', '2019-01-14', '2020-05-20');

-- PAULA MARTINEZ
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (6,'1996-12-29' , 'Paula', 'Martinez','F','2020-06-14');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (6, 21000, '2020-06-14', '2043-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (6,1, '2020-06-14', '2043-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (6,'Italian B2 Certificate', '2020-01-14', '2020-08-14');

-- SOFIA LEYVA
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (7,'1984-03-12' , 'Sofia', 'Leyva','F','2014-05-07');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (7, 35000, '2014-05-07', '2034-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (7,2 , '2014-05-07', '2034-06-09');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (2,'Adobe Certificate', '2020-02-12', '2020-05-06');

-- MAR CASTAÑO
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (8,'1976-06-03' , 'Mat', 'Castaño','F','2017-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (8, 27000, '2017-03-11', '2025-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (8, 3, '2017-03-11', '2025-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (3,'MYSQl Certificate', '2019-01-14', '2020-01-20');

-- ARTURO PEREZ
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (9,'1995-06-03' , 'Arturo', 'Perez','M','2015-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (9, 24000, '2015-03-11', '2056-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (9, 4, '2015-03-11', '2056-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (9,'PhD in Medicine', '2018-01-14', '2020-05-20');

-- MIQUEL MARTI
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (10,'1967-06-03' , 'Miquel', 'Martí','M','2019-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (10, 19000, '2019-03-11', '2033-06-12');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (10, 5, '2019-03-11', '2033-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (10,'PHP Certificate', '2019-01-14', '2020-05-20');

-- JAVIER MIEL
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (11,'1967-06-03' , 'Javier', 'Miel','M','2019-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (11, 32000, '2019-03-11', '2033-06-12');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (11, 1, '2019-03-11', '2033-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (11,'JAVA Certificate', '2019-01-14', '2020-05-20');

-- MARC LLOPIS
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (12,'1996-12-29' , 'Marc', 'Llopis','M','2020-06-14');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (12,14000, '2020-06-14', '2043-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (12,2, '2020-06-14', '2043-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (12,'French B1 Certificate', '2020-01-14', '2020-08-14');

-- LOLA VELA
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (13,'1984-03-12' , 'Lola', 'Vela','F','2014-05-07');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (13,20000, '2014-05-07', '2034-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (13, 3, '2014-05-07', '2034-06-09');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (13,'Excel Certificate', '2020-02-12', '2020-05-06');

-- RUTH LARA
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (14,'1976-06-03' , 'Ruth', 'Lara','F','2017-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (14,17000, '2017-03-11', '2025-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (14, 4, '2017-03-11', '2025-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (14, 3, '2019-03-11', '2025-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (14,'Polish C2 Level Certificate', '2019-01-14', '2020-01-20');

-- JORGE MARTIN
INSERT INTO employees (emp_no, birth_date, first_name, last_name,gender,hire_date) 
VALUES (15,'1995-06-03' , 'Jorge', 'Martin','M','2015-03-11');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES (15,16000, '2015-03-11', '2056-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (15, 5, '2015-03-11', '2056-06-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES (15, 3, '2016-03-11', '2026-06-14');
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES (15,'PhD in Bioquimics', '2018-01-14', '2020-05-20');

-- // UPDATE DATA // --

-- Update employees:

-- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
UPDATE employees
 SET  first_name = 'MARCOS', last_name = 'COSMICO', birth_date = NOW()
 WHERE first_name LIKE 'J%' AND last_name LIKE 'M%' AND birth_date >= '1990-01-01';

-- Update departments:
    
-- Change the name of all departments.
UPDATE departments SET  dept_name = 'Retail' WHERE dept_no = 1;
UPDATE departments SET  dept_name = 'Painting' WHERE dept_no = 2;
UPDATE departments SET  dept_name = 'Accounting' WHERE dept_no = 3;
UPDATE departments SET  dept_name = 'Travel Agency' WHERE dept_no = 4;
UPDATE departments SET  dept_name = 'IT' WHERE dept_no = 5;

-- // GET DATA // --
    
-- Select all employees with a salary greater than 20,000
SELECT CONCAT (first_name, ' ', last_name) AS employee, salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no WHERE s.salary > 20000;

-- Select all employees with a salary below 10,000
SELECT first_name, salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no WHERE s.salary < 10000;

-- Select all employees who have a salary between 14.00 and 50,000
SELECT CONCAT (first_name, ' ', last_name) AS employee, salary
FROM employees AS e
INNER JOIN salaries AS s ON e.emp_no = s.emp_no WHERE s.salary BETWEEN 14 AND 50000;

-- Select the total number of employees
SELECT COUNT(*) AS `Employess Number` FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT COUNT(*) FROM (

SELECT first_name, COUNT(*) AS cnt FROM employees AS e 
INNER JOIN dept_emp AS d ON e.emp_no = d.emp_no GROUP BY first_name
HAVING cnt > 1

) AS result;

-- Select the titles of the year 2019
SELECT title, CONCAT (first_name, ' ', last_name) AS employee, from_date FROM titles INNER JOIN employees ON employees.emp_no = titles.emp_no WHERE titles.from_date BETWEEN '2019-1-1' AND '2019-12-31';

-- Select only the name of the employees in capital letters
SELECT first_name FROM employees WHERE first_name LIKE '%[A-Z]%';

-- Select the name, surname and name of the current department of each employee
SELECT CONCAT (first_name, ' ', last_name) AS employee, d.dept_no, dept_name
FROM employees AS e
INNER JOIN dept_emp AS d ON e.emp_no = d.emp_no
INNER JOIN departments AS dep ON d.dept_no = dep.dept_no;

-- Select the name, surname and number of times the employee has worked as a manager
SELECT COUNT(d.emp_no), CONCAT (first_name, ' ', last_name) AS employee
FROM employees AS e
INNER JOIN dept_manager AS d ON e.emp_no = d.emp_no GROUP BY d.emp_no;

-- Select the name of employees without any being repeated
SELECT MIN(first_name) AS `Employess Name` FROM employees GROUP BY first_name;

-- // DELETE DATA // --

-- Eliminate all employees with a salary greater than 20,000
DELETE e FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no WHERE s.salary > 20000;

-- Remove the department that has more employees
DELETE FROM departments
WHERE dept_no IN
(
SELECT d.dept_no FROM (
SELECT dept_no, COUNT(dept_no) AS value_occurrence
FROM dept_emp
GROUP BY dept_no
ORDER BY value_occurrence DESC
LIMIT 1) d
)