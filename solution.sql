
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
        
ALTER TABLE contacts AUTO_INCREMENT = 50;
ALTER TABLE ALLITEMS CHANGE itemid itemid INT(10)AUTO_INCREMENT PRIMARY KEY;
-- CREATION 15 EMPLOYEES


INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1992-02-25", "Manuel", "García", 1, "2019-02-01");
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1989-10-02", "Marina", "Carmona", 2, "2018-11-22");
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1990-02-26", "Laura", "Rivas", 2, "2019-12-09");
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1986-01-06", "Manuel", "García", 1, "2020-12-01");
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1991-11-19", "Noelia", "González", 2, "2019-12-09");
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1994-07-15", "Ángela", "Ruiz", 2, "2020-02-09");
INSERT INTO employees (birth_date, first_name, last_name, gender, hire_date) values ("1993-06-14", "Manuel", "García", 1, "2020-03-01");

select * from employees;
-- Insert salaries
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (1, 18000, "2014-11-22", "2018-09-01");
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (1, 19000, "2018-09-01", "2018-10-01");
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (2, 23200, "2019-09-12", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (3, 24700, "2016-10-21", "2020-01-01");
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (3, 24700, "2020-01-01", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (4, 22400, "2019-09-02", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (5, 24400, "2020-08-21", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (6, 22400, "2022-09-25", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (7, 24700, "2015-06-15", "2019-10-01");
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (7, 24700, "2019-10-01", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (8, 21700, "2021-09-12", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (9, 5000, "2014-12-20", "2017-09-01");
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (9, 12500, "2017-09-01", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (10, 50000, "2020-05-21", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (11, 50000, "2020-05-08", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (12, 35700, "2014-09-01", "2017-06-01");
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (12, 48700, "2017-06-01", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (13, 50000, "2018-03-26", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (14, 5000, "2019-10-05", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (15, 12700, "2018-10-09", CURDATE());

INSERT INTO salaries (emp_no, salary, from_date,to_date) values (16, 43150, "2019-02-01", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (17, 7500, "2018-11-22", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (18, 8200, "2019-12-09'", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (19, 38120, "2020-12-01", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (20, 5600, "2019-12-09", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (21, 49800, "2020-02-09", CURDATE());
INSERT INTO salaries (emp_no, salary, from_date,to_date) values (22, 38750, "2020-03-01", CURDATE());

select * from salaries;
-- Departaments
-- Change data type of dept_no
ALTER TABLE departments MODIFY dept_no INT (11) NOT NULL;
 ALTER TABLE departments MODIFY dept_no INT (11) NOT NULL;



-- Insert departaments
INSERT INTO departments (dept_no, dept_name) values ("MKT", "Marketing");
INSERT INTO departments (dept_no, dept_name) values ("PMO", "Project Management Office");
INSERT INTO departments (dept_no, dept_name) values ("IT", "Information Technology");
INSERT INTO departments (dept_no, dept_name) values ("HHRR", "Human Resources");
INSERT INTO departments (dept_no, dept_name) values ("PM", "Product Manager");
INSERT INTO departments (dept_no, dept_name) values ("BD", "Business Development");
INSERT INTO departments (dept_no, dept_name) values ("CS", "Costumer Services");
INSERT INTO departments (dept_no, dept_name) values ("SAL", "Sales");
INSERT INTO departments (dept_no, dept_name) values ("PUCH", "Purchase");
INSERT INTO departments (dept_no, dept_name) values ("OP", "Operations");
INSERT INTO departments (dept_no, dept_name) values ("FIN", "Finances");


-- Insert dep_emp
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (1, "BD", "2014-11-22", CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (1, "MKT", "2018-05-02", CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (2, "FIN", "2019-09-12", CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (2, "OP", "2019-09-12", CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (3, "SAL", '2016-10-21', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (4, "PMO", '2019-09-02', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (5, "PUCH", '2020-08-21', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (6, "HHRR", '2022-10-25', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (7, "IT", '2015-06-15', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (7, "CS", '2018-02-01', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (8, "PM", '2021-09-12', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (9, "MKT", '2014-12-20', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (9, "CS", '2018-05-18', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (10, "SAL", '2020-05-21', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (10, "OP", '2020-05-21', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (11, "FIN", '2020-05-08', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (11, "BD", '2020-05-08', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (12, "BD", '2016-10-21', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (12, "OP", '2020-02-11', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (13, "CS", '2018-03-26', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (14, "MKT", '2019-10-05', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (15, "PMO", '2018-10-09', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (15, "CS", '2018-10-09', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (16, "IT", '2019-02-01', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (17, "PM", '2018-11-22', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (17, "CS", '2018-11-22', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (18, "CS", '2019-12-09', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (19, "PUCH", '2020-12-01', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (20, "OP", '2019-12-09', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (20, "SAL", '2019-12-09', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (21, "FIN", '2020-02-09', CURDATE());
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) values (22, "BD", '2020-03-01', CURDATE());

select * from dept_emp;

-- Insert dept_manager
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) values (1, "BD", "2014-11-22", CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) values (3, "SAL", '2016-10-21', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) values (7, "CS", '2018-02-01', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) values (9, "MKT", '2014-12-20', CURDATE());
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) values (12, "OP", '2020-02-11', CURDATE());

select * from dept_manager;

-- Insert titles
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (1, "Degree in Business Administration", '2008-09-15', "2011-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (2, "Degree in Marketing", '2008-09-15', "2011-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (3, "Degree in Economics", '2012-09-15', "2016-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (4, "Degree in Economics", '2015-09-15', "2019-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (5, "Degree in Business Administration", '2007-09-15', "2012-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (6, "Degree in Psychology", '2018-09-15', "2022-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (7, "Degree in Information Engineering", '2009-09-15', "2014-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (8, "Degree in Marketing ", '2018-09-15', "2022-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (9, "Degree in Marketing", '2016-09-15', "2020-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (10, "Degree in Business Administration", '2018-09-18', "2022-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (11, "Degree in Business Administration", '2015-09-15', "2020-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (12, "Degree in Business Administration", '2005-09-15', "2010-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (13, "Degree in Business Administration", '2011-09-15', "2015-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (14, "Degree in Marketing", '2010-09-15', "2014-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (15, "Degree in Marketing", '2004-09-15', "2009-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (16, "Degree in Marketing", '2012-09-15', "2016-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (17, "Degree in Information Engineering", '2007-09-15', "2012-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (18, "Degree in Economics", '2005-09-15', "2010-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (19, "Degree in Economics", '2008-09-15', "2012-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (20, "Degree in Business Administration", '2010-09-15', "2014-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (21, "Degree in Finance", '2012-09-15', "2016-07-15");
INSERT INTO employees.titles (emp_no, title, from_date, to_date) values (22, "Degree in Business Administration", '2016-09-15', "2020-07-15");

select * from titles;


-- Change the name of one employee based on therir name, surname anda date of birth
UPDATE employees SET first_name = "Rafa" where emp_no = 1 and first_name = "Rafael" and last_name = "González" and birth_date = "1984-10-25";

-- Change the name of department
UPDATE departments SET dept_name = "Business Dev" where dept_no = "BD";
UPDATE departments SET dept_name = "Cust S" where dept_no = "CS";
UPDATE departments SET dept_name = "Finances Dev" where dept_no = "FIN";
UPDATE departments SET dept_name = "Human Resources Dev" where dept_no = "HHRR";
UPDATE departments SET dept_name = "Infomation Tec Dev" where dept_no = "IT";
UPDATE departments SET dept_name = "Marketing Dev" where dept_no = "MKT";
UPDATE departments SET dept_name = "Operation Dev" where dept_no = "OP";
UPDATE departments SET dept_name = "Product Manager Dev" where dept_no = "PM";
UPDATE departments SET dept_name = "Project Managment Dev" where dept_no = "PMO";
UPDATE departments SET dept_name = "Purchases" where dept_no = "PUCH";
UPDATE departments SET dept_name = "Sales Product" where dept_no = "SAL";

select * from departments;

-- Select all employees with a salary greater than 20,000
select * from salaries where salary> 20000;

-- Select all employees with a salary below 10,000
select * from salaries where salary < 10000;

-- Select all employees who have a salary between 14.00 and 50,000
select * from salaries where salary between 14000 and 50000;

-- Select the total number of employees
SELECT COUNT(*) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT dept_no FROM dept_emp
     GROUP BY dept_no
     HAVING COUNT(*)>1;
     
-- Select the titles of the year 2020
select  emp_no,
        sum(case when year(to_date) = 2020 then 1 else 0 end) as count_20
from titles
group by emp_no;

-- Select only the name of the employees in capital letters
-- First Captital letter
SELECT * FROM employees WHERE first_name REGEXP '^[A-Z]+$';
-- All letters are Uppercase
select *from employees where first_name = BINARY UPPER(first_name);
-- writre in uppercase
SELECT UPPER(first_name) FROM employees;

select * from dept_emp;
select * from titles where to_date like '2020%';

-- Select the name, surname and name of the current department of each employee
select  emp.first_name, emp.last_name, dep.dept_name
from dept_emp as de
inner join employees as emp on de.emp_no = emp.emp_no
inner join departments as dep on de.dept_no = dep.dept_no;


-- Select the name, surname and number of times the employee has worked as a manager
select dept_manager.emp_no, employees.first_name, employees.last_name, COUNT(dept_manager.emp_no)
 FROM dept_manager
 INNER JOIN employees
 ON employees.emp_no = dept_manager.emp_no
 GROUP BY emp_no
 HAVING COUNT(dept_manager.emp_no);


-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;

-- Delete all employees with a salary greater than 20,000
DELETE employees 
FROM employees JOIN salaries
 ON employees.emp_no = salaries.emp_no
  where salaries.salary > 20000;



-- Remove the department that has more employees		
DELETE FROM departments
	where dept_no = (
		SELECT dept_no
        FROM dept_emp
        GROUP BY dept_no
        ORDER BY COUNT(DISTINCT emp_no) DESC
        LIMIT 1);
        SET SQL_SAFE_UDATES = 1;

