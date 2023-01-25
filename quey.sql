-- create the DB

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


-- enter employees

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES
(1, "1990-01-01", "John", "Doe", "M", "2021-01-01"),
(2, "1991-02-01", "Mary", "Smith", "F", "2022-01-01"),
(3, "1992-03-01", "John", "Johnson", "M", "2023-01-01"),
(4, "1993-04-01", "Emma", "Williams", "F", "2021-02-01"),
(5, "1994-05-01", "John", "Jones", "M", "2022-02-01"),
(6, "1995-06-01", "Sarah", "Brown", "F", "2023-02-01"),
(7, "1996-07-01", "Michael", "Davis", "M", "2021-03-01"),
(8, "1997-08-01", "Jessica", "Miller", "F", "2022-03-01"),
(9, "1998-09-01", "Jacob", "Moore", "M", "2023-03-01"),
(10, "1999-10-01", "Emily", "Anderson", "F", "2021-04-01"),
(11, "2000-11-01", "Joshua", "Thomas", "M", "2022-04-01"),
(12, "2001-12-01", "Amanda", "Jackson", "F", "2023-04-01"),
(13, "2002-01-01", "John", "White", "M", "2021-05-01"),
(14, "2003-02-01", "Ashley", "Harris", "F", "2022-05-01"),
(15, "2004-03-01", "John", "Martin", "M", "2023-05-01")

-- create departments

INSERT INTO departments (dept_no, dept_name) 
VALUES
("D001", "IT"),
("D002", "Marketing"),
("D003", "Finance"),
("D004", "HR"),
("D005", "Sales")

-- insert salaries

INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES
(1, 46000, "2021-01-01", "2021-06-30"),
(1, 48000, "2021-06-30", "2022-06-30"),
(2, 10000, "2021-07-01", "2021-12-31"),
(2, 25000, "2021-12-31", "2022-12-31"),
(3, 8000, "2022-01-01", "2022-06-30"),
(3, 18000, "2022-06-30", "2022-10-31"),
(4, 23000, "2021-01-01", "2021-06-30"),
(4, 35000, "2021-06-30", "2022-06-30"),
(5, 20000, "2021-07-01", "2021-12-31"),
(5, 28000, "2021-12-31", "2022-12-31"),
(6, 40000, "2022-01-01", "2022-06-30"),
(7, 46000, "2021-01-01", "2021-06-30"),
(8, 7000, "2021-07-01", "2021-12-31"),
(9, 6000, "2022-01-01", "2022-06-30"),
(10, 6000, "2021-01-01", "2021-06-30"),
(11, 17000, "2021-07-01", "2021-12-31"),
(12, 26000, "2022-01-01", "2022-06-30"),
(13, 36000, "2021-01-01", "2021-06-30"),
(14, 27000, "2021-07-01", "2021-12-31"),
(15, 16000, "2022-01-01", "2022-06-30")

-- insert titles

INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES 
(1, 'Manager', '2022-01-01', '2022-12-31'),
(2, 'Engineer', '2022-01-01', '2022-12-31'),
(3, 'Developer', '2022-01-01', '2022-12-31'),
(4, 'Analyst', '2022-01-01', '2022-12-31'),
(5, 'Consultant', '2022-01-01', '2022-12-31'),
(6, 'Manager', '2022-01-01', '2022-12-31'),
(7, 'Engineer', '2022-01-01', '2022-12-31'),
(8, 'Developer', '2022-01-01', '2022-12-31'),
(9, 'Analyst', '2022-01-01', '2022-12-31'),
(10, 'Consultant', '2022-01-01', '2022-12-31'),
(11, 'Manager', '2022-01-01', '2022-12-31'),
(12, 'Engineer', '2022-01-01', '2022-12-31'),
(13, 'Developer', '2022-01-01', '2022-12-31'),
(14, 'Analyst', '2022-01-01', '2022-12-31'),
(15, 'Consultant', '2022-01-01', '2022-12-31');

-- insert departments

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES 
(1, 'D001', '2022-01-01', '2022-12-31'),
(2, 'D001', '2022-01-01', '2022-12-31'),
(3, 'D001', '2022-01-01', '2022-12-31'),
(4, 'D002', '2022-01-01', '2022-12-31'),
(5, 'D002', '2022-01-01', '2022-12-31'),
(6, 'D002', '2022-01-01', '2022-12-31'),
(7, 'D003', '2022-01-01', '2022-12-31'),
(8, 'D003', '2022-01-01', '2022-12-31'),
(9, 'D003', '2022-01-01', '2022-12-31'),
(10, 'D004', '2022-01-01', '2022-12-31'),
(11, 'D004', '2022-01-01', '2022-12-31'),
(12, 'D004', '2022-01-01', '2022-12-31'),
(13, 'D005', '2022-01-01', '2022-12-31'),
(14, 'D005', '2022-01-01', '2022-12-31'),
(15, 'D005', '2022-01-01', '2022-12-31');


-- change the name of a employee

UPDATE employees SET first_name="Maria" WHERE first_name="Amanda" AND last_name="Jackson" AND birth_date="2001-12-01";

-- change name of departments

UPDATE departments SET dept_name="New Finance" WHERE dept_name="Finance";
UPDATE departments SET dept_name="New Sales" WHERE dept_name="Sales";
UPDATE departments SET dept_name="MKT" WHERE dept_name="Marketing";
UPDATE departments SET dept_name="Human Resources" WHERE dept_name="HR";
UPDATE departments SET dept_name="IT" WHERE dept_name="New IT";

-- get data

SELECT * FROM employees, salaries where employees.emp_no= salaries.emp_no AND salary > 20000;

SELECT * FROM employees, salaries where employees.emp_no= salaries.emp_no AND salary < 10000;

SELECT * FROM employees, salaries where employees.emp_no= salaries.emp_no AND salary between 14000 AND 50000;

SELECT * FROM employees; or SELECT COUNT(emp_no) AS total_employees FROM employees;

SELECT emp_no, COUNT(dept_no) AS department_count FROM dept_emp GROUP BY emp_no HAVING COUNT(dept_no) >= 2; -- total

SELECT COUNT(*) FROM (
    SELECT emp_no, COUNT(dept_no) AS department_count FROM dept_emp 
    GROUP BY emp_no 
    HAVING COUNT(dept_no) >= 2
) AS total;  -- contar el total

SELECT from_date, title FROM titles WHERE INSTR(from_date, '2020') > 0; -- select titles from 2020

SELECT first_name FROM employees WHERE first_name REGEXP '^[A-Z][A-Za-z\s]*$'; -- select names with Uppercase

SELECT first_name, last_name, dept_name FROM employees, departments; -- select name, surname and department from each employee

SELECT first_name, last_name, COUNT(dept_no) FROM employees JOIN dept_manager on employees.emp_no = dept_manager.emp_no; --  Select the name, 
    -- surname and number of times the employee has worked as a manager

SELECT DISTINCT first_name from employees; -- names without any being repeated

--delete data

DELETE employees, salaries
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no
WHERE salaries.salary > 20000; -- delete employees with salary greater than 20000

-- FALTA DELETE 2
-- repassar
DELETE FROM departments 
WHERE dept_no IN (
SELECT dept_no
    FROM (
        SELECT dept_no, COUNT(*) as c 
        FROM dept_emp 
        GROUP BY dept_no 
        ORDER BY c DESC
        LIMIT 1
    )AS T);


-- DELETE ALL EMPLOYEES WIT A SALARY GREATER THAN 20000

DELETE employees FROM employees 
JOIN salaries 
ON salaries.emp_no = employees.emp_no
WHERE salaries.salary > 20000;

-- Remove the department that has more employees

DELETE departments FROM
  departments
WHERE
  dept_no = (
        SELECT dept_no
        FROM dept_emp
        GROUP BY dept_no
        ORDER BY COUNT(*) DESC
        LIMIT 1
       );


-- Create DATABASE

CREATE DATABASE albertSA;

-- create TABLES

CREATE TABLE players (
    player_no      INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (player_no)
);

-- 1:1 table

CREATE TABLE numbers (
	number_ID INT NOT NULL AUTO_INCREMENT,
    number  INT NOT NULL,
    player_no  int     NOT NULL,
    FOREIGN KEY (player_no) REFERENCES players (player_no) ON DELETE CASCADE,
	PRIMARY KEY (number_ID)
    );

-- 1:M table

CREATE TABLE goal (
	goal_ID INT NOT NULL AUTO_INCREMENT,
    opponent_team  VARCHAR(16) NOT NULL,
    game_minute int NOT NULL,
    type_goal VARCHAR(16),
    player_no  int     NOT NULL,
    FOREIGN KEY (player_no) REFERENCES players (player_no) ON DELETE CASCADE,
	PRIMARY KEY (goal_ID)
    );


-- M:M

CREATE TABLE positions (
	position_ID INT NOT NULL AUTO_INCREMENT,
    position  VARCHAR(16) NOT NULL,
    player_no  int     NOT NULL,
    FOREIGN KEY (player_no) REFERENCES players (player_no) ON DELETE CASCADE,
	PRIMARY KEY (position_ID)
    );

CREATE TABLE player_positions (
    pla_pos_ID int NOT NULL,
	position_ID INT NOT NULL,
	player_no int NOT NULL,
    FOREIGN KEY (player_no) REFERENCES players (player_no) ON DELETE CASCADE,
    FOREIGN KEY (position_ID) REFERENCES positions (position_ID) ON DELETE CASCADE,
	PRIMARY KEY (pla_pos_ID)
    );
