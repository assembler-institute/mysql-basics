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
-- With salaries that are between a range of 5,000 and 50,000 of different gender
-- 5 employees must have at least two salaries in different ranges of dates and different amounts
-- 10 employees belong to more than one department
-- 5 employees are managers
-- All employees have a degree and at least 5 titles are from 2020
-- At least 3 employees have the same name
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
-- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.

UPDATE employees
SET first_name = 'Marco'
WHERE (
        first_name = 'Charles'
        AND last_name LIKE 'G%'
        AND birth_date > '1980-09-23'
    );