USE employees;

-- FIRST WE INSERT 15 EMPLOYEES | 3 OF THEM WITH THE SAME NAME

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES 
(1, '1990-10-30', 'Lelia', 'Bukowsky', 'F', '2018-01-20'),
(2, '2001-04-22', 'Carlos', 'Smith', 'M', '2018-01-22'),
(3, '1997-12-21', 'Gonzalo', 'Hoffmann', 'M', '2018-03-05'),
(4, '2000-01-14', 'Lucas', 'Rodriguez', 'M', '2018-04-10'),
(5, '1987-06-24', 'Lionel', 'Messi', 'M', '2018-04-22'),
(6, '1999-09-12', 'Carlos', 'Perez', 'M', '2019-02-20'),
(7, '2003-05-05', 'Valentino', 'Traverso', 'M', '2019-03-01'),
(8, '2001-11-21', 'Myke', 'Tyson', 'M', '2019-05-22'),
(9, '1989-01-25', 'Miguel Angel', 'Di Maria', 'M', '2019-11-06'),
(10, '2001-05-05', 'Carlos', 'Ramirez', 'M', '2020-02-15'),
(11, '1993-09-21', 'Jack', 'Sparrow', 'M', '2020-05-17'),
(12, '2000-10-04', 'Dwayne', 'Johnson', 'M', '2020-05-20'),
(13, '1995-12-24', 'Marta', 'Carballo', 'F', '2021-11-20'),
(14, '2003-06-12', 'Javier', 'Milei', 'M', '2022-05-21'),
(15, '2003-08-30', 'Ezequiel', 'Zvirgsdinz', 'M', '2023-03-06');

-- NOW WE NEED TO INSERT THE DEPARTMENT OF THE ENTERPRISE

INSERT INTO departments (dept_no, dept_name) VALUES 
(1, 'Development Area'),
(2, 'Sales Area'),
(3, 'HR Area'),
(4, 'Customer Area'),
(5, 'Marketing Area');


-- INSERT THE MANAGER OF EVERY DEPARTMENT

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date) VALUES
(1, 10, '2020-04-20', 'CURRENT_DATE()'),
(2, 1, '2019-12-15', 'CURRENT_DATE()'),
(3, 13, '2022-09-02', 'CURRENT_DATE()'),
(4, 4, '2021-02-01', 'CURRENT_DATE()'),
(5, 9, '2022-05-01', 'CURRENT_DATE()');


-- ASSIGN A DEPARTMENT TO EVERY EMPLOYEE

INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) VALUES 
(1, 2, '2019-12-15', 'CURRENT_DATE()'),
(1, 4, '2020-12-10', '2021-15-20'),
(2, 3, '2018-01-2022', 'CURRENT_DATE()'),
(2, 5, '2022-05-20', 'CURRENT_DATE()'),
(3, 1, '2018-03-05', '2020-04-15'),
(3, 2, '2020-04-15', 'CURRENT_DATE()'),
(4, 4, '2018-04-10', 'CURRENT_DATE()'),
(5, 5, '2018-04-22', '2020-07-20'),
(5, 2, '2020-07-20', 'CURRENT_DATE()'),
(6, 4, '2019-02-20', 'CURRENT_DATE()'),
(6, 2, '2021-04-05', 'CURRENT_DATE()'),
(7, 1, '2019-03-01', 'current_date()'),
(8, 3, '2019-05-2022', 'CURRENT_DATE()'),
(8, 2, '2021-05-26', '2021-07-29'),
(9, 5, '2019-11-06', 'CURRENT_DATE()'),
(10, 1, '2020-02-15', 'CURRENT_DATE()'),
(11, 2, '2020-05-17', '2022-01-12'),
(11, 3, '2022-01-12', 'CURRENT_DATE()'),
(12, 4, '2020-05-20', 'CURRENT_DATE()'),
(12, 5, '2022-07-01', 'CURRENT_DATE()'),
(13, 3, '2021-11-20', 'CURRENT_DATE()'),
(14, 1, '2022-05-21', 'CURRENT_DATE()'),
(14, 5, '2022-09-10', '2022-12-12'),
(15, 1, '2023-03-06', 'CURRENT_DATE()'),
(15, 2, '2023-03-06', 'CURRENT_DATE()');

-- NOW WE SAVE THE SALARIES OF THE EMPLOYEES

INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES
(1, 5000, '2019-03-15', '2019-15-06'),
(1, 15000, '2019-15-06', '2019-30-12'),
(2, 6000, '2019-08-10', '2019-09-08'),
(3, 49000, '2020-10-01', '2021-01-01'),
(4, 21000, '2019-05-01', '2019-12-01'),
(4, 19000, '2020-01-01', '2020-06-01'),
(5, 37500, '2018-05-01', '2018-09-01'),
(6, 12000, '2019-03-01', '2019-05-01'),
(7, 50000, '2019-03-01', '2019-05-01'),
(8, 30000, '2019-06-01', '2020-01-01'),
(8, 42700, '2020-01-01', '2020-12-01'),
(9, 7000, '2019-10-01', '2019-11-01'),
(9, 48000, '2019-11-01', '2020-11-01'),
(10, 28000, '2020-03-01', '2020-09-01'),
(11, 17600, '2020-06-01', '2020-12-01'),
(12, 34200, '2020-07-01', '2020-10-01'),
(13, 12000, '2021-11-01', '2022-01-01'),
(13, 22000, '2022-02-01', '2022-05-01'),
(14, 32000, '2022-06-01', '2022-08-01'),
(15, 27300, '2023-03-01', '2023-05-01');

-- TITLES OF EVERY EMPLOYEES

INSERT INTO titles (emp_no, title, from_date, to_date) VALUES
(1, 'MBA', '2019-05-01', '2022-03-01'),
(2, 'Human Resources', '2020-05-10', '2020-12-20'),
(3, 'Accountant', '2017-12-21', '2019-02-01'),
(4, 'Business Administration', '2020-01-01', '2021-03=15'),
(5, 'Engineer' , '2005-05-03', '2010-07-01'),
(6, 'Accountant', '2018-04-22', '2020-05-01'),
(7, 'Software Development', '2020-02-01', '2020-12-01'),
(8, 'Engineer', '2021-05-01', 'CURRENT_DATE()'),
(9, 'Digital Marketing', '2018-07-10', '2020-10-01'),
(10, 'Software Development', '2020-01-01', '2020-10-01'),
(11, 'Engineer', '2012-09-01', '2017-10-01'),
(12, 'Human Resources', '2020-05-01', '2020-12-01'),
(13, 'Human Resources', '2019-03-01', '2021-03-20'),
(14, 'Software Development', '2021-10-01', '2022-10-01'),
(15, 'Android Development', '2020-01-10', '2020-12-10');

-- IN THIS SECTION IM GOING TO UPDATE THE DATA
--

-- CHANGE THE NAME OF A EMPLOYEE BASED ON 
-- NAME, SURNAME, DATE OF BIRTH

UPDATE employees SET first_name = 'Marcus' WHERE first_name = 'Lucas' 
AND last_name = 'Rodriguez' AND hire_date = '2018-04-10';

-- CHANGE THE NAME OF THE DEPARTMENTS

UPDATE departments SET dept_name = 'Research and development' WHERE dept_no = 1;
UPDATE departments SET dept_name = 'Marketing and sales' WHERE dept_no = 2;
UPDATE departments SET dept_name = 'Accounting and finance' WHERE dept_no = 3;
UPDATE departments SET dept_name = 'Purchasing' WHERE dept_no = 4;
UPDATE departments SET dept_name = 'Strategic Initiatives & Programs' WHERE dept_no = 5;

-- GET DATA FROM THE DATABASE:
--

-- GET ALL THE DATA FROM EMPLOYEES AND SALARY WHERE SALARY GREATER THAN 20000

SELECT * FROM employees INNER JOIN salaries WHERE  salaries.salary > 20000;

-- GET ALL THE DATA FROM EMPLOYEES AND SALARY WHERE SALARY LOWER THAN 10000

 SELECT * FROM employees INNER JOIN salaries WHERE salaries.salary < 10000;
 
 -- GET ALL THE DATA FROM EMPLOYEES AND SALARY 
 -- WHERE SALARY BETWEEN 14000 AND 50000
 
 SELECT * FROM employees INNER JOIN salaries WHERE salaries.salary BETWEEN 14000 AND 50000;
 
 -- GET THE SUM OF EMPLOYEES
 
 SELECT count(*) FROM employees;
 
 -- GET NUMBER OF EMPLOYEES WHO WORK IN MORE THAN ONE DEPARTMENT
 
SELECT COUNT(*)
FROM
(
SELECT COUNT(*)
FROM dept_emp
GROUP BY emp_no 
HAVING count(emp_no) >= 2
) AS total;

-- GET ALL THE TITLES OF 2020

SELECT title FROM titles WHERE from_date >= '2020-01-01' AND to_date <= '2020-12-31'; 

-- SELECT NAME OF EMPLOYEES WITH CAPITAL LETTER

SELECT first_name FROM employees WHERE first_name = UPPER(first_name);

-- Select the name, surname and name of the current department of each employee

SELECT employees.first_name, employees.last_name, departments.dept_name 
FROM employees 
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no;

-- Select the name, surname and number of times the employee has worked as a manager

SELECT employees.first_name, employees.last_name, count(*)
FROM employees
JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
GROUP BY dept_manager.emp_no;

-- Select the name of employees without any being repeated

SELECT DISTINCT first_name FROM employees;

-- DELETE IN SQL
--

-- DELETE ALL EMPLOYEES WIT A SALARY GREATER THAN 20000

DELETE employees FROM employees 
JOIN salaries 
ON salaries.emp_no = employees.emp_no
WHERE salaries.salary > 20000;

-- Remove the department that has more employees

DELETE departments FROM
  departments
WHERE
  dept_no = (SELECT dept_no
          FROM dept_emp
      GROUP BY dept_no
      ORDER BY COUNT(*) DESC
         LIMIT 1
       );
       
-- My OWN DATABASE

DROP DATABASE IF EXISTS valentinotraverso;
CREATE DATABASE IF NOT EXISTS valentinotraverso;
USE valentinotraverso;

CREATE TABLE skills (
    skill_id      INT           NOT NULL,
    job_id		CHAR(4)         NOT NULL,
    title_id   CHAR(4)          NOT NULL,
    skill_name  VARCHAR(20)     NOT NULL,
    level_skill VARCHAR(14)     NOT NULL,
    FOREIGN KEY(job_id) REFERENCES jobs(jobs_id),
    FOREIGN KEY(title_id) REFERENCES titles(title_id),
    PRIMARY KEY (skill_id)
);

CREATE TABLE titles (
    title_id         INT        NOT NULL,
    title_name   VARCHAR(40)    NOT NULL,
    institute     VARCHAR(40)    NOT NULL,
    FOREIGN KEY(title_id) REFERENCES jobs(title_id),
    PRIMARY KEY (title_id)
);

CREATE TABLE jobs (
   job_id       INT             NOT NULL,
   title_id     CHAR(4)			NOT NULL,
   job_name     VARCHAR(10)     NOT NULL,
   anual_salarie VARCHAR(10)    NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY(title_id) REFERENCES titles(title_id),
   PRIMARY KEY (job_id)
); 

CREATE TABLE partners (
    part_id     INT             NOT NULL,
    job_id      CHAR(4)         NOT NULL,
    first_name  VARCHAR(20)     NOT NULL,
    last_name   VARCHAR(20)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY(job_id) REFERENCES jobs(job_id),
    PRIMARY KEY (part_id,job_id)
);

CREATE TABLE hobbies (
    hob_id      INT             NOT NULL,
    hob_name    VARCHAR(50)     NOT NULL,
    difficulty  VARCHAR(10)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    PRIMARY KEY (hob_id,hob_name)
) 
; 