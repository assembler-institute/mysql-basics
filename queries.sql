--Enter mysql from the terminal:
--../bin/mysql -u root
--To exit mysql:
--exit;
--To create a back up of your database use this code in the terminal outside of mysql:
--../bin/mysqldump -u usuario -pPassword employees > /Users/jesusfvj/Documents/backup.sql;

--Once inside the console I had to open the database that we will use:
USE employees;

--Once opened I started with the exercises.

--FIRST EXERCISE: INSERT DATA. Insert at least 15 new employees:
    --Insert at least 15 new employees:
    --With salaries that are between a range of 5,000 and 50,000 of different gender
    --5 employees must have at least two salaries in different ranges of dates and different amounts
    --10 employees belong to more than one department
    --5 employees are managers
    --All employees have a degree and at least 5 titles are from 2020
    --At least 3 employees have the same name


--First I had to modify the emp_no column so the id would AUTO_INCREMENT. To do so I had to
--set the foreign_key_checks to 0 and restore it after the command to 1 due to this error
--"Cannot change column 'emp_no': used in a foreign key constraint 'dept_emp_ibfk_1' of table 'employees.dept_emp'"

SET FOREIGN_KEY_CHECKS = 0;
ALTER TABLE employees MODIFY COLUMN emp_no INT auto_increment;
SET FOREIGN_KEY_CHECKS = 1;

--In the case we would like to set AUTO INCREMENT to 1:
--ALTER TABLE employees AUTO_INCREMENT = 1;

--Then I created a list of invented data related to made-up people and insert them into the 'employees' table;
--Things to take into consideration: DATES must be YYYY-MM-DD and quoted. The max-length for first_name is 14 and for last_name 16 according to the specifications in the document.

INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1975-3-10', 'Eduardo', 'Gomez Rubico', 'M', '2000-7-21');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1968-8-1', 'Eduardo', 'Vazquez Froslan', 'M', '1998-3-10');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1982-10-19', 'Eduardo', 'Otaola Caro', 'M', '2010-2-5');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1985-12-25', 'Ana', 'Fernandez Perez', 'F', '2007-9-11');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1985-4-13', 'Gonzalo', 'Cordero Randon', 'M', '2012-12-13');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1993-8-5', 'Felipa', 'Orquidea Flores', 'F', '2021-2-18');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1998-2-16', 'Dolores', 'Fuertes Barriga', 'F', '2022-8-20');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('2000-7-21', 'Marciana', 'Orcha Antonelo', 'F', '2023-1-10');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1965-2-19', 'Isabel', 'Pantoja Roca', 'F', '2019-5-3');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1972-12-29', 'Rocio', 'Jurado Martinez', 'F', '2011-3-29');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1959-5-12', 'Encarna', 'Baptis Romano', 'F', '2010-8-12');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1970-5-8', 'Fuentes', 'Agua Clara', 'F', '2008-2-1');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1989-9-16', 'Hermenegildo', 'Coslado Fratero', 'M', '2018-5-19');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1972-10-3', 'Chusa', 'Sernoida Thomas', 'F', '2020-1-1');
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) VALUES ('1987-4-18', 'Amparo', 'Noche Dia', 'F', '2018-2-21');

--Let's set the values of the table departments:

INSERT INTO departments (dept_no, dept_name) VALUES ('MKTN', 'Marketing');
INSERT INTO departments (dept_no, dept_name) VALUES ('SLES', 'Sales');
INSERT INTO departments (dept_no, dept_name) VALUES ('CTSV', 'Customer Service');
INSERT INTO departments (dept_no, dept_name) VALUES ('INTE', 'IT');
INSERT INTO departments (dept_no, dept_name) VALUES ('DSGN', 'Design');
INSERT INTO departments (dept_no, dept_name) VALUES ('SOCL', 'Social');
INSERT INTO departments (dept_no, dept_name) VALUES ('QLTY', 'Quality');

--Let's set the values of the table dept_emp. MAKE SURE to have change correctly the name of the table to change.

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (1, 'MKTN', '2000-7-21', '2022-8-10');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (1, 'SLES', '2022-11-1', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (2, 'CTSV', '1998-3-10', '2019-5-13');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (2, 'MKTN', '2019-5-14', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (3, 'INTE', '2010-2-5', '2020-8-9');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (4, 'MKTN', '2007-9-11', '2013-4-8');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (4, 'SLES', '2013-4-9', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (5, 'INTE', '2012-12-13', '2018-6-23');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (5, 'SLES', '2018-6-24', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (6, 'DSGN', '2021-2-18', '2022-1-24');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (6, 'MKTN', '2022-1-25', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (7, 'SOCL', '2022-8-20', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (8, 'CTSV', '2023-1-10', '2023-1-19');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (8, 'QLTY', '2023-1-20', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (9, 'SLES', '2019-5-3', '2019-8-14');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (9, 'SOCL', '2019-8-15', '2022-12-8');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (10, 'SOCL', '2011-3-29', '2017-6-1');
--Line 83 should go in here.
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (11, 'MKTN', '2010-8-12', '2015-6-2');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (11, 'DSGN', '2015-6-3', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (12, 'SOCL', '2008-2-1', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (13, 'DSGN', '2018-5-19', '2020-5-12');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (13, 'SOCL', '2020-5-13', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (14, 'SLES', '2020-1-1', '2022-9-8');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (14, 'MKTN', '2022-9-9', '2023-1-20');
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (15, 'CTSV', '2018-2-21', '2019-5-13');

--I forgot to add a value for number 10, so I went and did it and later updated the dates:
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES (10, 'MKTN', '2017-6-2', '2023-1-20');
UPDATE dept_emp SET from_date = '2011-3-29', to_date = '2017-6-1' WHERE emp_no = 10 AND  dept_no = 'SOCL';

--Let's set the values of the table dept_manager. MAKE SURE to have change correctly the name of the table to change.

INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (1, 'SLES', '2022-11-1', '2023-1-20');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (5, 'INTE', '2014-5-24', '2018-6-23');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (7, 'SOCL', '2022-8-20', '2023-1-20');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (10, 'MKTN', '2017-6-2', '2023-1-20');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (11, 'DSGN', '2015-6-3', '2023-1-20');
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) VALUES (11, 'WHTE', '2018-2-21', '2019-5-13');

--Let's set the values of the table salaries. MAKE SURE to have change correctly the name of the table to change.
--And make sure not to use any commas in the salary field.

INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1, 6500, '2002-5-12', '2022-8-10');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (1, 10600, '2022-11-1', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (2, 12800, '1998-3-10', '2019-5-13');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (2, 18500, '2019-5-14', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (3, 19800, '2010-2-5', '2020-8-9');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (4, 13750, '2007-9-11', '2013-4-8');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (4, 20000, '2013-4-9', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (5, 22750, '2012-12-13', '2018-6-23');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (5, 25000, '2018-6-24', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (6, 17500, '2021-2-18', '2022-1-24');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (6, 22750, '2022-1-25', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (7, 30000, '2022-8-20', '2023-1-1');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (7, 48000, '2023-1-1', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (8, 30000, '2023-1-10', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (9, 47000, '2019-5-3', '2019-8-14');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (9, 48000, '2019-8-15', '2022-12-8');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (10, 50000, '2011-3-29', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (11, 27500, '2010-8-12', '2015-6-2');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (11, 32000, '2015-6-3', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (12, 15250, '2008-2-1', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (13, 12000, '2018-5-19', '2020-5-12');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (13, 23700, '2020-5-13', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (14, 10300, '2020-1-1', '2022-9-8');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (14, 20000, '2022-9-9', '2023-1-20');
INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (15, 17200, '2018-2-21', '2019-5-13');

--Let's set the values of the table salaries. MAKE SURE to have change correctly the name of the table to change.
--To make it quicker the data can be set as follows.

INSERT INTO titles (emp_no, title, from_date, to_date) VALUES (1, 'Marketing', '1995-1-1', '2000-1-1'),
(2, 'Bussiness Administration', '1992-1-1', '1997-1-1'),
(3, 'Computer engineering', '2015-1-1', '2020-1-1'),
(4, 'Accounting and finances', '1999-1-1', '2003-1-1'),
(5, 'Accounting and finances', '1999-1-1', '2003-1-1'),
(6, 'Masters in Graphic design', '2018-1-1', '2020-1-1'),
(6, 'Marketing', '2014-1-1', '2018-1-1'),
(7, 'Events and Protocol', '2014-1-1', '2018-1-1'),
(8, 'Quality management', '2003-1-1', '2008-1-1'),
(9, 'Quality management', '2016-1-1', '2020-1-1'),
(10, 'Quality management', '2016-1-1', '2020-1-1'),
(11, 'Masters in Graphic design', '2008-1-1', '2010-1-1'),
(11, 'Marketing', '2003-1-1', '2008-1-1'),
(12, 'Events and Protocol', '2015-1-1', '2020-1-1'),
(13, 'Masters in Events and Protocol', '2000-1-1', '2002-1-1'),
(13, 'Graphic design', '1996-1-1', '2000-1-1'),
(14, 'Marketing', '2016-1-1', '2020-1-1'),
(15, 'Accounting and finances', '1994-1-1', '1999-1-1');

--SECOND EXERCISE: UPDATE DATA.
--Update employees:
    --Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
    --(This will likely throw an 1175 mysql error, mysql by default enables a safe mode for not updating or deleting a row without using a primary key in the where clause. 
    --You have to understand why this happens and investigate and disable safe mode temporarily in order to get this query executed)

--When you do action queries such as update or delete in MySQL Workbench (or any other MySQL client),
--if you are not able to update or delete records in a table, it could be caused by the default safe mode in MySQL.
--Here is the error code:
    --Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.
--To fix the problem, turn off the safe mode by using following code for current connected session.

SET SQL_SAFE_UPDATES=0;

--To turn safe mode back on, use the following code.

UPDATE employees SET first_name = 'Miquel', last_name = 'Crack Geostatic' WHERE first_name = 'Eduardo' AND last_name = 'Otaola Caro' AND  birth_date = '1982-10-19';

SET SQL_SAFE_UPDATES=1;

--Update departments:
    --Change the name of all departments.

SET FOREIGN_KEY_CHECKS = 0;

UPDATE departments SET dept_no = 'BLUE', dept_name = 'Blue' WHERE dept_no = 'MKTN';
UPDATE departments SET dept_no = 'YLLW', dept_name = 'Yellow' WHERE dept_no = 'SLES';
UPDATE departments SET dept_no = 'GRNN', dept_name = 'Green' WHERE dept_no = 'CTSV';
UPDATE departments SET dept_no = 'BRWN', dept_name = 'Brown' WHERE dept_no = 'INTE';
UPDATE departments SET dept_no = 'PRPL', dept_name = 'Purple' WHERE dept_no = 'DSGN';
UPDATE departments SET dept_no = 'ORNG', dept_name = 'Orange' WHERE dept_no = 'SOCL';
UPDATE departments SET dept_no = 'WHTE', dept_name = 'White' WHERE dept_no = 'QLTY';

    --Change the name of the departments in the other tables.

UPDATE dept_emp SET dept_no = 'BLUE' WHERE dept_no = 'MKTN';
UPDATE dept_emp SET dept_no = 'YLLW' WHERE dept_no = 'SLES';
UPDATE dept_emp SET dept_no = 'GRNN' WHERE dept_no = 'CTSV';
UPDATE dept_emp SET dept_no = 'BRWN' WHERE dept_no = 'INTE';
UPDATE dept_emp SET dept_no = 'PRPL' WHERE dept_no = 'DSGN';
UPDATE dept_emp SET dept_no = 'ORNG' WHERE dept_no = 'SOCL';
UPDATE dept_emp SET dept_no = 'WHTE' WHERE dept_no = 'QLTY';

UPDATE dept_manager SET dept_no = 'BLUE' WHERE dept_no = 'MKTN';
UPDATE dept_manager SET dept_no = 'YLLW' WHERE dept_no = 'SLES';
UPDATE dept_manager SET dept_no = 'GRNN' WHERE dept_no = 'CTSV';
UPDATE dept_manager SET dept_no = 'BRWN' WHERE dept_no = 'INTE';
UPDATE dept_manager SET dept_no = 'PRPL' WHERE dept_no = 'DSGN';
UPDATE dept_manager SET dept_no = 'ORNG' WHERE dept_no = 'SOCL';
UPDATE dept_manager SET dept_no = 'WHTE' WHERE dept_no = 'QLTY';

SET FOREIGN_KEY_CHECKS = 1;

--THIRD EXERCISE. GET DATA:
--Select all employees with a salary greater than 20,000, you must list all employees data and the salary.

SELECT employees.*, salaries.salary FROM employees LEFT JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary > 20000;

--Select all employees with a salary below 10,000, you must list all employees data and the salary.

SELECT employees.*, salaries.salary FROM employees LEFT JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary < 10000;

--Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary.
--BETWEEN AND return a value in between edges, those included.

SELECT employees.*, salaries.salary FROM employees LEFT JOIN salaries ON salaries.emp_no = employees.emp_no WHERE salaries.salary BETWEEN 14000 AND 50000;

--Select the total number of employees.
--I used to built-in functions to do so. COUNT returns a count of the fields. MAX returns the maximun number in a selection.

SELECT COUNT(emp_no) AS employees_number FROM employees.employees;
SELECT MAX(emp_no) AS employees_number FROM employees.employees;

--Select the total number of employees who have worked in more than one department.
--Next code to return the number of times each element is duplicated greater than 1;
--SELECT dept_emp.emp_no, COUNT(dept_emp.emp_no) FROM dept_emp GROUP BY dept_emp.emp_no HAVING COUNT(dept_emp.emp_no) > 1;

SELECT count(*) AS no_emp_2_or_more_dept
FROM (
 SELECT dept_emp.emp_no FROM dept_emp
 GROUP BY dept_emp.emp_no HAVING COUNT(dept_emp.emp_no) > 1
) AS t;

--Select the titles of the year 2020.

SELECT titles.title FROM titles WHERE titles.to_date BETWEEN '2020-1-1' AND '2020-12-31';

--Select the name of all employees with capital letters

SELECT UPPER(first_name) AS upper_case FROM employees.employees;

--Select the name, surname and name of the current department of each employee
--Triple join. Same order of join as the tables are linked.

SELECT employees.first_name, employees.last_name, departments.dept_name FROM employees JOIN dept_emp ON employees.emp_no = dept_emp.emp_no JOIN departments ON dept_emp.dept_no = departments.dept_no;

--Select the name, surname and number of times the employee has worked as a manager

SELECT employees.first_name, employees.last_name, dept_manager.emp_no, COUNT(dept_manager.emp_no) FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no GROUP BY dept_manager.emp_no HAVING COUNT(dept_manager.emp_no);

--Select the name of employees without any being repeated

SELECT DISTINCT(first_name) FROM employees;

--FOURTH EXERCISE. DELETE DATA:
--Delete all employees with a salary greater than 20,000
--In this code we can observe the use of alias for the tables and columns.
--The interesting this is that we don't need to clarify the different tables we want to delete 
--the data from due to a property set in the establishment of the data base:

DELETE E FROM employees E
JOIN salaries S ON E.emp_no = S.emp_no
WHERE S.salary > 20000;

--CREATE TABLE dept_manager (
   --emp_no       INT             NOT NULL,
   --dept_no      CHAR(4)         NOT NULL,
   --from_date    DATE            NOT NULL,
   --to_date      DATE            NOT NULL,
   --FOREIGN KEY (emp_no)  REFERENCES employees (emp_no)    ON DELETE CASCADE,
   --FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   --PRIMARY KEY (emp_no,dept_no)
--);

--As we can see where it says FOREIGN KEY at the end ON DELETE CASCADE is set. This will
--automatically delete the data connected to the main key as if a JOIN was made.

--Remove the department that has the most employees. (Let’s assume that only one department is returned in this query, as an extra you can try to write the query for deleting all departments in case there are more than one in the result)
--With the following 

SELECT dept_emp.dept_no, COUNT(dept_emp.dept_no)
FROM dept_emp GROUP BY dept_emp.dept_no ORDER BY COUNT(dept_emp.dept_no) DESC LIMIT 1;

DELETE
FROM dept_emp
WHERE dept_no =
(SELECT dept_emp.dept_no
FROM dept_emp GROUP BY dept_emp.dept_no ORDER BY COUNT(dept_emp.dept_no) DESC LIMIT 1);

--FIFTH EXERCISE. DESIGN YOUR OWN DATABASE
--You will have to design and create your own database following this requirements:
--The database must have at least 5 tables
--Each table must have a unique ID
--There must be at least a table with a One-To-One (1:1) Database Relationship.
--There must be at least a table with a One-To-Many (1:M) Database Relationship.
--There must be at least a table with a Many-To-Many (M:M) Database Relationship.

DROP DATABASE IF EXISTS company;
CREATE DATABASE IF NOT EXISTS company;
USE company;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS company_artists,
                     plays,
                     current_play,
                     characters,
                     artist_prizes;

CREATE TABLE company_artists (
	artist_id           INT             NOT NULL AUTO_INCREMENT,
	first_name          varchar(15)     NOT NULL,
	last_name           varchar(15)     NOT NULL,
	date_in_company     DATE(15)        NOT NULL,
	PRIMARY KEY (artist_id)
);

CREATE TABLE plays (
	play_id           INT             NOT NULL AUTO_INCREMENT,
	artist_id         INT             NOT NULL,
	play_name         varchar(15)     NOT NULL,
	creation_date     DATE(15)        NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES company (artist_id) ON DELETE CASCADE,
	PRIMARY KEY (play_id)
);

CREATE TABLE current_play (
	current_play_id   INT             NOT NULL AUTO_INCREMENT,
	artist_id         INT             NOT NULL,
	character_id      varchar(20)     NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES company (artist_id) ON DELETE CASCADE,
	PRIMARY KEY (current_play_id)
);

CREATE TABLE characters (
	character_id      INT             NOT NULL AUTO_INCREMENT,
	character_name    varchar(20)     NOT NULL,
	character_height  varchar(20)     NOT NULL,
    FOREIGN KEY (character_id) REFERENCES company (character_id) ON DELETE CASCADE,
	PRIMARY KEY (character_id)
);

CREATE TABLE artist_prizes (
	prize_id          INT             NOT NULL AUTO_INCREMENT,
	artist_id         INT             NOT NULL,
	prize_name        varchar(20)     NOT NULL,
	date_of_prize     DATE            NOT NULL,
    FOREIGN KEY (artist_id) REFERENCES company (artist_id) ON DELETE CASCADE,
	PRIMARY KEY (prize_id)
);