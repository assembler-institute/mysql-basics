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

--Insert data

--ALTER TABLE employees AUTO_INCREMENT = 1;
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)

VALUES
(1,'1992-09-10','Sergi', 'Roca', 'M','2020-10-20'),
(2,'1995-09-11','Andres', 'Arboleda', 'M','2021-10-11'),
(3,'1975-09-12','Elon', 'Musk', 'M','2019-10-10'),
(4,'1988-09-03','Bill', 'Gates', 'M','2018-10-20'),
(5,'1969-09-05','Kim', 'Khardasian', 'F','2017-11-20'),
(6,'1969-09-06','Mercè', 'Rodoreda', 'F','2016-10-23'),
(7,'1969-10-04','Jennifer', 'López', 'F','2010-10-10'),
(8,'1969-12-07','Li', 'Qiaochu', 'M','2015-10-13'),
(9,'1969-09-08','Jack', 'Ma', 'M','2020-10-11'),
(10,'1969-09-09','Pony', 'Ma', 'M','2013-10-13'),
(11,'1969-09-10','Vitali', 'Bulgarin', 'M','2017-10-12'),
(12,'1969-09-11','Ivan', 'Drago', 'M','2020-12-17'),
(13,'1969-11-12','Pilar', 'Rubio', 'F','2020-10-13'),
(14,'1969-07-01','Adrián', 'Sánchez', 'M','2020-10-17'),
(15,'1969-05-02','Sergi', 'Vidal', 'M','2020-10-23');


INSERT INTO departments (dept_no, dept_name)
VALUES
(1,'IT'),
(2,'Marketing'),
(3,'Finance');


INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)

VALUES
(1,1,'2020-11-10', '2020-12-13'),
(1,2,'2020-11-11','2020-12-14'),
(2,3,'2020-11-10','2020-12-13' ),
(2,1,'2020-11-10', '2020-12-14'),
(3,2,'2020-11-10','2020-12-13'),
(3,3,'2020-11-10','2020-12-14' ),
(4,1,'2020-11-10', '2020-12-13'),
(4,2,'2020-11-10','2020-12-14'),
(10,3,'2020-11-10','2020-12-13' ),
(10,1,'2020-11-10', '2020-12-14'),
(11,2,'2020-11-10','2020-12-13'),
(11,3,'2020-11-10','2020-12-14' ),
(12,2,'2020-11-10', '2020-12-13'),
(12,1,'2020-11-10','2020-12-14'),
(15,3,'2020-11-10','2020-12-13' ),
(15,2,'2020-11-10','2020-12-14' ),
(13,2,'2020-11-10','2020-12-13' ),
(13,3,'2020-11-10','2020-12-14' ),
(5,2,'2020-11-10','2020-12-13' ),
(5,3,'2020-11-10','2020-12-14' );




INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)

VALUES
(1,1,'2020-11-10', '2020-12-10'),
(2,2,'2020-12-06','2020-12-31'),
(3,2,'2020-12-08','2020-12-31'),
(1,4,'2020-12-10', '2020-12-15'),
(2,5,'2020-11-10', '2020-12-10');

INSERT INTO salaries(emp_no, salary, from_date, to_date)

VALUES
 (1,5000, '2020-12-10','2020-12-15'),
 (2, 10000,'2020-12-10', '2020-12-15'),
 (3,50000,'2020-12-10', '2020-12-15'),
 (4,35000,'2020-12-10', '2020-12-15'),
 (5,45000,'2020-12-10', '2020-12-15'),
 (6,5000, '2020-12-10','2020-12-15'),
 (7, 10000,'2020-12-10', '2020-12-15'),
 (8,50000,'2020-12-10', '2020-12-15'),
 (9,10000,'2020-12-10', '2020-12-15'),
 (10,50000,'2020-12-10', '2020-12-15'),
 (11,5500, '2020-12-10','2020-12-15'),
 (12, 24000,'2020-12-10', '2020-12-15'),
 (13,40000,'2020-12-10', '2020-12-15'),
 (14,30000,'2020-12-10', '2020-12-15'),
 (15,50000,'2020-12-10', '2020-12-15');


INSERT INTO titles (emp_no, title, from_date, to_date)

VALUES
(1,'Bachelors Degree', '2020-12-10', '2021-12-31'),
(2,'Masters Degree', '2020-12-10', '2021-12-31'),
(3,'Bachelors Degree', '2019-12-11', '2021-12-31'),
(4,'Masters Degree', '2018-12-11', '2021-12-31'),
(5,'Masters Degree', '2019-12-10', '2021-12-31'),
(6,'School Diploma', '2017-12-11', '2021-12-31'),
(7,'School Diploma', '2018-11-08', '2021-12-31'),
(8,'School Diploma', '2018-11-01', '2021-12-31'),
(9,'School Diploma', '2018-11-02', '2021-12-31'),
(10,'School Diploma', '2018-11-03', '2021-12-31'),
(11,'School Diploma', '2018-11-10', '2021-12-31'),
(12,'School Diploma', '2018-11-04', '2021-12-31'),
(13,'School Diploma', '2018-11-05', '2021-12-31'),
(14,'School Diploma', '2018-11-06', '2021-12-31'),
(15,'School Diploma', '2018-11-07', '2021-12-31');

--Update Data

UPDATE employees
SET first_name = 'John'
WHERE (first_name = 'Sergi'AND last_name='Roca' AND birth_date='1992-09-10');

UPDATE departments
SET dept_name = 'Sales'
WHERE (dept_no = '1');

UPDATE departments
SET dept_name = 'Purchasing'
WHERE (dept_no = '2');

UPDATE departments
SET dept_name = 'Pentesting'
WHERE (dept_no = '3');


--Get Data

-- Select all employees with a salary greater than 20,000
SELECT *
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salary >20000;
Select all employees with a salary below 10,000


-- Select all employees with a salary below 10,000
SELECT *
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salary < 10000;

-- Select all employees who have a salary between 14.00 and 50,000
SELECT *
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salary BETWEEN 14 AND 50000;

-- Select the total number of employees
SELECT COUNT(*)
FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT COUNT(*)
FROM (
    SELECT emp_no, COUNT(*)
      FROM dept_emp
      GROUP BY emp_no
      HAVING COUNT(*) > 1
) employees;

-- Select the titles of the year 2019

SELECT * FROM titles
WHERE from_date >= '2019-01-01' AND from_date <= '2019-12-31';

-- Select only the name of the employees in capital letters

SELECT UPPER(first_name)
FROM employees;

-- Select the name, surname and name of the current department of each employee

SELECT first_name, last_name, dept_name, to_date
FROM (    
    SELECT first_name, last_name, emp_no
    FROM employees
) employeesData
 JOIN (
    -- Select the current department of each employee
    SELECT dept_emp.emp_no, dept_name, to_date
    FROM dept_emp
    JOIN departments
    ON dept_emp.dept_no = departments.dept_no
    WHERE to_date = (SELECT MAX(to_date) FROM dept_emp)
 ) departmentsData
 ON employeesData.emp_no = departmentsData.emp_no;

-- Select the name, surname and number of times the employee has worked as a manager

SELECT employeesData.first_name, employeesData.last_name, managersData.times_manager 
FROM (
    SELECT first_name, last_name, emp_no 
    FROM employees
    ) employeesData
    JOIN (
      SELECT dept_manager.emp_no, COUNT(dept_no) AS times_manager
      FROM dept_manager
      GROUP BY emp_no
) managersData
ON employeesData.emp_no = managersData.emp_no
-- Select the name of employees without any being repeated

SELECT DISTINCT first_name
FROM employees;


-- Eliminate all employees with a salary greater than 20,000
DELETE FROM salaries
WHERE emp_no IN 
(
    SELECT emp_no
    FROM salaries
    WHERE salary > 20000
)
-- Remove the department that has more employees
DELETE dept_no, COUNT(*) 
WHERE dept_no IN (
    SELECT dept_no
    FROM dept_emp
    GROUP BY dept_no
    HAVING MAx(COUNT(*) > 1)
);




--Delete Data