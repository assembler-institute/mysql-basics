-- INSERT DATA 

-- At least 15 employees (at least 3 with same name)

INSERT INTO employees VALUES 
    (1, "1990-12-03", "Laia", "Estruch", "F", "2015-07-14"),
    (2, "1985-08-20", "Guillem", "Sala", "M", "2015-07-14"),
    (3, "1980-03-23", "Laura", "Romià", "F", "2016-04-20"),
    (4, "1989-04-10", "Aleix", "Pons", "M", "2016-07-30"),
    (5, "1970-02-21", "Paula", "Gual", "F", "2017-01-24"),
    (6, "1973-03-30", "Laia", "Mas", "F", "2018-01-15"),
    (7, "1984-09-29", "Xavi", "Ros", "M", "2018-03-12"),
    (8, "1985-11-21", "Blai", "Vives", "M", "2018-07-15"),
    (9, "1983-12-12", "Laia", "Llach", "F", "2019-01-24"),
    (10, "1989-08-19", "Joan", "Soler", "M", "2020-05-05"),
    (11, "1985-07-25", "Ares", "Nadal", "F", "2020-05-05"),
    (12, "1990-06-28", "Arnau", "Roig", "M", "2021-07-02"),
    (13, "1994-07-12", "Rita", "Pitarch", "F", "2021-08-30"),
    (14, "1995-10-21", "Xavi", "Vidal", "M", "2021-09-20"),
    (15, "1984-12-11", "Marta", "Grau", "F", "2022-07-24");

-- Salaries between 5000 and 50000 of different gender
-- 5 employees must have at least two salaries in different ranges of dates and different amounts

INSERT INTO salaries VALUES
    (1, 15000, "2015-07-14", "2016-07-14"),
    (1, 45000, "2016-07-14", "2019-07-14"),
    (1, 37000, "2019-07-14", "2022-12-31"),
    (2, 25000, "2015-07-14", "2017-07-14"),
    (2, 35000, "2017-07-14", "2019-08-30"),
    (2, 35000, "2019-08-31", "2022-12-31"),
    (3, 45000, "2016-04-20", "2020-12-31"),
    (3, 50000, "2021-01-01", "2022-12-31"),
    (4, 37000, "2016-07-30", "2020-12-31"),
    (4, 39000, "2021-01-01", "2022-12-31"),
    (5, 37000, "2017-01-24", "2020-12-31"),
    (5, 39000, "2021-01-01", "2022-12-31"),
    (6, 26000, "2018-01-15", "2020-12-31"),
    (6, 32000, "2021-01-01", "2022-12-31"),
    (7, 27000, "2018-03-12", "2020-12-31"),
    (7, 29000, "2021-01-01", "2022-12-31"),
    (8, 50000, "2018-07-15", "2022-12-31"),
    (9, 42000, "2019-01-24", "2022-12-31"),
    (10, 36000, "2020-05-05", "2022-12-31"),
    (11, 36000, "2020-05-05", "2022-12-31"),
    (12, 24000, "2021-07-02", "2022-12-31"),
    (13, 22000, "2021-08-30", "2022-12-31"),
    (14, 19000, "2021-09-20", "2022-12-31"),
    (15, 8000, "2022-07-24", "2022-12-31");

-- 10 employees belong to more than one department

INSERT INTO departments VALUES 
    ("FNNC", "Finance"),
    ("CCNT", "Accounting"),
    ("MRKT", "Marketing"),
    ("RSRC", "Research"),
    ("DVLP", "Development"),
    ("HMNR", "Human Resources"),
    ("PRDC", "Production");

INSERT INTO dept_emp VALUES
    (5, "HMNR", "2017-01-24", "2023-01-20"),
    (5, "FNNC", "2017-01-24", "2023-01-20"),
    (7, "FNNC", "2018-03-12", "2023-01-20"),
    (7, "CCNT", "2018-03-12", "2023-01-20"),
    (8, "PRDC", "2018-07-15", "2023-01-20"),
    (9, "PRDC", "2019-01-24", "2023-01-20"),
    (9, "MRKT", "2019-01-24", "2023-01-20"),
    (10, "HMNR", "2020-05-05", "2023-01-20"),
    (10, "MRKT", "2022-05-01", "2023-01-20"),
    (11, "DVLP", "2020-05-05", "2023-01-20"),
    (11, "RSRC", "2021-01-01", "2023-01-20"),
    (12, "PRDC", "2021-07-02", "2023-01-20"),
    (12, "RSRC", "2022-01-01", "2023-01-20"),
    (13, "PRDC", "2021-08-30", "2023-01-20"),
    (14, "PRDC", "2021-09-20", "2023-01-20"),
    (15, "CCNT", "2022-07-24", "2023-01-20"),
    (15, "PRDC", "2022-07-24", "2023-01-20");

-- 5 employees are managers

INSERT INTO dept_manager VALUES 
    (1, "FNNC", "2020-01-01", "2023-01-20"),
    (1, "CCNT", "2020-01-01", "2023-01-20"),
    (3, "MRKT", "2018-05-15", "2023-01-20"),
    (2, "RSRC", "2018-12-14", "2023-01-20"),
    (2, "DVLP", "2018-12-14", "2023-01-20"),
    (4, "HMNR", "2018-07-30", "2023-01-20"),
    (6, "PRDC", "2019-03-24", "2023-01-20");

-- All employees have a degree and at least 5 titles are from 2020

INSERT INTO titles VALUES
    (1, "Finance and Accounting Degree", "2010-02-15", "2015-02-15"),
    (2, "Research and Development Degree", "2010-09-15", "2015-06-15"),
    (3, "Marketing Degree", "2010-09-15", "2015-06-15"),
    (4, "Human Resources Degree", "2011-02-15", "2016-02-15"),
    (5, "Finance and Accounting Degree", "2011-09-15", "2016-06-15"),
    (6, "Production Degree", "2012-09-15", "2017-06-15"),
    (7, "Finance and Accounting Degree", "2012-09-15", "2017-06-15"),
    (8, "Production Degree", "2013-09-15", "2018-06-15"),
    (9, "Marketing Degree", "2013-02-15", "2018-02-15"),
    (10, "Human Resources Degree", "2015-02-15", "2020-02-15"),
    (11, "Research and Development Degree", "2015-02-15", "2020-02-15"),
    (12, "Production Degree", "2015-09-15", "2020-06-15"),
    (13, "Production Degree", "2015-09-15", "2020-06-15"),
    (14, "Production Degree", "2015-09-15", "2020-06-15"),
    (15, "Accounting Degree", "2015-09-15", "2020-06-15");

-- UPDATE DATA

-- UPDATE EMPLOYEES _ Change name of an employee (query based on name, surname and date of birth)

UPDATE employees 
    SET first_name = "Lara" 
    WHERE first_name = "Laura" AND last_name = "Romi?" AND birth_date = "1980-03-23";

-- UPDATE DEPARTMENTS _ Change the name of all departments

UPDATE departments SET dept_name = CONCAT(dept_name, " Dpt");

-- GET DATA
-- Select all employees with a salary greater than 20,000, you must list all employees data and the salary.

SELECT employees.*, salaries.salary FROM employees 
    LEFT JOIN salaries ON employees.emp_no = salaries.emp_no 
    WHERE salaries.salary > 20000; 

-- Select all employees with a salary below 10,000, you must list all employees data and the salary.

SELECT employees.*, salaries.salary FROM employees 
    LEFT JOIN salaries ON employees.emp_no = salaries.emp_no 
    WHERE salaries.salary < 10000; 

-- Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary.

SELECT employees.*, salaries.salary FROM employees 
    LEFT JOIN salaries ON employees.emp_no = salaries.emp_no 
    WHERE salaries.salary > 14000 AND salaries.salary < 50000; 

-- Select the total number of employees

SELECT COUNT(emp_no) FROM employees; 

-- Select the total number of employees who have worked in more than one department

SELECT COUNT(*) FROM
    (   SELECT emp_no, COUNT(*) AS CNT
        FROM dept_emp
        GROUP BY emp_no
    ) AS T
    WHERE CNT > 1;

-- Select the titles of the year 2020

SELECT title FROM titles WHERE to_date LIKE "2020%"; 

-- Select the name of all employees with capital letters

SELECT UPPER(first_name) FROM employees;

-- Select the name, surname and name of the current department of each employee

SELECT T.first_name, T.last_name, departments.dept_name FROM 
    (SELECT first_name, last_name, dept_no FROM employees 
    INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no) AS T
        INNER JOIN departments ON T.dept_no = departments.dept_no; 

-- Select the name, surname and number of times the employee has worked as a manager

SELECT first_name, last_name, COUNT(*) AS CNT FROM employees
    INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
    GROUP BY employees.emp_no;
    
-- Select the name of employees without any being repeated

SELECT DISTINCT first_name FROM employees;

-- DELETE DATA

-- Delete all employees with a salary greater than 20,000

DELETE employees FROM employees 
    INNER JOIN salaries ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary > 20000;

-- Remove the department that has more employees. 

DELETE FROM departments 
    WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY COUNT(dept_no) DESC LIMIT 1);

-- Case more than one department to delete.

DELETE FROM departments
    WHERE dept_no IN (SELECT T.dept_no FROM
        (SELECT dept_no, COUNT(dept_no) AS num_limit FROM dept_emp 
        GROUP BY dept_no) AS T 
        WHERE T.num_limit = (SELECT COUNT(dept_no) AS num_limit FROM dept_emp 
        GROUP BY dept_no ORDER BY num_limit DESC LIMIT 1));
           

-- DESIGN AND CREATE A DATABASE

DROP DATABASE IF EXISTS gym;
CREATE DATABASE IF NOT EXISTS gym;
USE gym;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS rates,
                     users,
                     user_bracelet,
                     trainers, 
                     activities, 
                     activity_room;

CREATE TABLE rates (
   id_rate      CHAR(4)         NOT NULL,
   name_rate    TEXT(15)        NOT NULL,
   price        FLOAT(4)        NOT NULL,
   PRIMARY KEY (id_rate)
); 

CREATE TABLE users (
    id_user     INT             NOT NULL AUTO_INCREMENT,
    full_name   TEXT(50)        NOT NULL,
    phone       VARCHAR(12)     NOT NULL,    
    email       VARCHAR(30)     NOT NULL,
    id_rate     CHAR(4)         NOT NULL,
    PRIMARY KEY (id_user),
    FOREIGN KEY (id_rate) REFERENCES rates (id_rate) ON DELETE CASCADE
);

CREATE TABLE user_bracelet (
    bracelet_num   INT(10)      NOT NULL AUTO_INCREMENT,
    id_user        INT          NOT NULL,
    PRIMARY KEY (bracelet_num),
    FOREIGN KEY (id_user) REFERENCES users (id_user) ON DELETE CASCADE
);

CREATE TABLE trainers (
    id_trainer  INT(2)          NOT NULL AUTO_INCREMENT,
    full_name   TEXT(50)        NOT NULL,
    PRIMARY KEY (id_trainer)
);

CREATE TABLE activity_room (
    id_room     VARCHAR(5)      NOT NULL,
    name_room   VARCHAR(20)     NOT NULL,
    PRIMARY KEY (id_room)
); 

CREATE TABLE activities (
    id_activity     CHAR(4)         NOT NULL,
    name_activity   VARCHAR(40)     NOT NULL,
    id_room         VARCHAR(5)      NOT NULL,
    id_trainer      INT(2)          NOT NULL,
    id_user         INT             NOT NULL, 
    PRIMARY KEY (id_activity),
    FOREIGN KEY (id_room) REFERENCES activity_room (id_room) ON DELETE CASCADE,
    FOREIGN KEY (id_trainer) REFERENCES trainers (id_trainer) ON DELETE CASCADE,
    FOREIGN KEY (id_user) REFERENCES users (id_user) ON DELETE CASCADE
);



