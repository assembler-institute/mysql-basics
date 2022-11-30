-- Insert at least 15 new employees:
-- * At least 3 employees have the same name
-- * Of different gender

-- FIRST TEST

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
    values (
    01, 15/08/1989, 'Jordi', 'Arnau', 'M', 08/02/2020)
    ;

-- Query OK, 1 row affected, 2 warnings (0.007 sec)

SHOW WARNINGS;
-- +---------+------+-------------------------------------------------+
-- | Level   | Code | Message                                         |
-- +---------+------+-------------------------------------------------+
-- | Warning | 1265 | Data truncated for column 'birth_date' at row 1 |
-- | Warning | 1265 | Data truncated for column 'hire_date' at row 1  |
-- +---------+------+-------------------------------------------------+
-- 2 rows in set (0.000 sec)

-- END OF FIRST TEST

DELETE FROM employees WHERE emp_no = 01;

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
    values (
    01, '1989-08-15', 'Jordi', 'Arnau', 'M', '2018-02-08');

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
    values
    (02, '1995-11-15', 'Placida', 'Sedillo', 'F', '2016-05-01'),
    (03, '1974-01-17', 'Jannifer', 'Vera', 'F', '1994-11-02'),
    (04, '1960-07-11', 'Arturo', 'Carmona', 'M', '2005-10-07'),
    (05, '1999-03-25', 'Jorge', 'Ramirez', 'M', '2019-10-04'),
    (06, '1974-01-05', 'Arturo', 'Salgado', 'M', '2012-02-23'),
    (07, '1975-05-25', 'Cleo', 'Alvarez', 'F', '2015-03-03'),
    (08, '1986-04-06', 'Cristina', 'Robles', 'F', '2014-07-01'),
    (09, '1991-06-20', 'Arturo', 'Ballesteros', 'M', '2018-04-15'),
    (10, '1965-12-02', 'Isabel', 'Alcaraz', 'F', '2002-01-01'),
    (11, '1993-08-04', 'Adalvino', 'Corral', 'M', '2020-02-07'),
    (12, '1957-02-06', 'Garcilaso', 'Salazar', 'M', '2006-05-03'),
    (13, '1975-04-09', 'Hedda', 'Velasquez', 'F', '2015-12-01'),
    (14, '1979-03-19', 'Calfu', 'Cordova', 'F', '2005-01-13'),
    (15, '1961-10-23', 'Maria', 'Tapia', 'F', '2014-08-04');

-- * 10 employees belong to more than one departmen

INSERT INTO departments (dept_no, dept_name)
    values
    (01, 'Direction'),
    (02, 'HR'),
    (03, 'Production'),
    (04, 'IT'),
    (05, 'Sales'),
    (06, 'Marketing');

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
    values
    (01, 04, '2020-01-01', now()),
    (01, 06, (SELECT hire_date FROM employees WHERE emp_no = 01), '2019-12-31'),
    (02, 02, (SELECT hire_date FROM employees WHERE emp_no = 02), now()),
    (02, 01, '2019-03-02', now()),
    (03, 03, (SELECT hire_date FROM employees WHERE emp_no = 03), now()),
    (04, 05, (SELECT hire_date FROM employees WHERE emp_no = 04), now()),
    (04, 01, '2010-07-01', now()),
    (05, 05, (SELECT hire_date FROM employees WHERE emp_no = 05), now()),
    (06, 05, (SELECT hire_date FROM employees WHERE emp_no = 06), now()),
    (06, 06, '2017-03-01', now()),
    (07, 01, (SELECT hire_date FROM employees WHERE emp_no = 07), now()),
    (08, 04, (SELECT hire_date FROM employees WHERE emp_no = 08), now()),
    (08, 03, (SELECT hire_date FROM employees WHERE emp_no = 08), now()),
    (09, 03, (SELECT hire_date FROM employees WHERE emp_no = 09), '2019-12-03'),
    (09, 02, '2019-12-04', now()),
    (10, 05, (SELECT hire_date FROM employees WHERE emp_no = 10), now()),
    (10, 04, '2009-05-28', now()),
    (11, 03, (SELECT hire_date FROM employees WHERE emp_no = 11), '2021-01-01'),
    (11, 04, '2021-01-02', now()),
    (12, 05, (SELECT hire_date FROM employees WHERE emp_no = 12), now()),
    (12, 06, '2009-01-01', now()),
    (13, 04, (SELECT hire_date FROM employees WHERE emp_no = 13), now()),
    (13, 01, '2019-08-20', now()),
    (14, 03, (SELECT hire_date FROM employees WHERE emp_no = 14), now()),
    (14, 01, '2013-04-01', now()),
    (15, 06, (SELECT hire_date FROM employees WHERE emp_no = 15), now());

-- * 5 employees are managers

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
    values
    (02, 02, '2019-03-02', now()),
    (05, 04, '2010-07-01', now()),
    (01, 07, (SELECT hire_date FROM employees WHERE emp_no = 07), now()),
    (04, 13, '2019-08-20', now()),
    (03, 14, '2013-04-01', now());

-- * With salaries that are between a range of 5,000 and 50,000 of different gender
-- * 5 employees must have at least two salaries in different ranges of dates and different amounts

INSERT INTO salaries (emp_no, salary, from_date, to_date)
    values
    (02, 13000, (SELECT hire_date FROM employees WHERE emp_no = 02), '2019-03-01'),
    (02, 23000, '2019-03-02', now()),
    (04, 7000, (SELECT hire_date FROM employees WHERE emp_no = 04), '2010-06-30'),
    (04, 15000, '2010-07-01', now()),
    (07, 37000, (SELECT hire_date FROM employees WHERE emp_no = 07), '2019-12-31'),
    (07, 47000, '2020-01-01', now()),
    (13, 25000, (SELECT hire_date FROM employees WHERE emp_no = 13), '2019-08-19'),
    (13, 35000, '2019-08-20', now()),
    (14, 6000, (SELECT hire_date FROM employees WHERE emp_no = 14), '2013-04-01'),
    (14, 10000, '2013-04-01', now()),
    (01, 30000, (SELECT hire_date FROM employees WHERE emp_no = 01), now()),
    (03, 12000, (SELECT hire_date FROM employees WHERE emp_no = 03), now()),
    (05, 9000, (SELECT hire_date FROM employees WHERE emp_no = 05), now()),
    (06, 14000, (SELECT hire_date FROM employees WHERE emp_no = 06), now()),
    (08, 27000, (SELECT hire_date FROM employees WHERE emp_no = 08), now()),
    (09, 32000, (SELECT hire_date FROM employees WHERE emp_no = 09), now()),
    (10, 28000, (SELECT hire_date FROM employees WHERE emp_no = 10), now()),
    (11, 43000, (SELECT hire_date FROM employees WHERE emp_no = 11), now()),
    (12, 17000, (SELECT hire_date FROM employees WHERE emp_no = 12), now()),
    (15, 33000, (SELECT hire_date FROM employees WHERE emp_no = 15), now());

-- * All employees have a degree and at least 5 titles are from 2020

INSERT INTO titles (emp_no, title, from_date, to_date)
    values
    (01, 'Advertisement and Public Relations', '2015-06-23', now()),
    (01, 'Fullstack Developer', '2020-10-25', now()),
    (02, 'Pedagogy', '2015-09-13', now()),
    (03, 'ADE', '1996-06-25', now()),
    (04, 'Economy', '1986-09-20', now()),
    (05, 'ADE', '2020-04-13', now()),
    (06, 'Marketing', '2000-06-03', now()),
    (07, 'MBA', '2007-11-05', now()),
    (08, 'IT Engineer', '2020-10-15', now()),
    (09, 'Mechanical Engineer', '2020-03-02', now()),
    (10, 'IT', '1999-02-10', now()),
    (11, 'ADE', '2015-03-10', now()),
    (12, 'Administration', '2020-06-30', now()),
    (13, 'Biology', '2015-08-15', now()),
    (14, 'Psychology', '2009-04-22', now()),
    (15, 'Parapsychology', '2013-06-13', now());