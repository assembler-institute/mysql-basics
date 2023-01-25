-- Adding 15 employees --
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('1', '2001-02-07', 'Kristian', 'Krasimirov', 'M', '2021-08-03');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('2', '1993-09-13', 'Berta', 'Garcia', 'F', '2022-12-21');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('3', '1995-01-17', 'Ynohe', 'Sandoval', 'M', '2023-01-18');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('4', '2000-03-08', 'Lucia', 'Del Cacho', 'F', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('5', '1995-08-03', 'Marta', 'Garcia', 'F', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('6', '1995-08-03', 'Paula', 'Sanchez', 'F', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('7', '1995-08-03', 'Alvaro', 'Lopez', 'M', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('8', '1995-08-03', 'Marcelo', 'Cruz', 'M', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('9', '1995-08-03', 'Laura', 'Nuñez', 'F', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('10', '1995-08-03', 'Marta', 'Perez', 'F', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('11', '1995-08-03', 'Adrian', 'Blanco', 'M', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('12', '1995-08-03', 'Luis', 'Feito', 'M', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('13', '1995-08-03', 'Marcelo', 'Parra', 'M', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('14', '1995-08-03', 'Diego', 'Blas', 'M', '2022-08-22');
INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) VALUES ('15', '1995-08-03', 'Adrian', 'Blasco', 'M', '2022-08-22');

-- Setting salaries --
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('1', '50000', '2020-03-23', '2031-04-08');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('2', '45000', '2017-01-10', '2025-01-16');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('3', '40000', '2017-01-16', '2023-01-31');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('4', '35000', '2017-01-16', '2023-01-31');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('5', '49000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('6', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('7', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('8', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('9', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('10', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('11', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('12', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('13', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('14', '24000', '2013-01-02', '2029-01-26');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('15', '24000', '2013-01-02', '2029-01-26');

-- Creating Departments --
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('1', 'Management');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('2', 'Marketing');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('3', 'HR');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('4', 'Social Media');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('5', 'Editors');

-- Setting Departments --
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '2', '2023-01-04', '2023-01-26');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('15', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('12', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('6', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('7', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('4', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('9', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('11', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('14', '2', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '2', '2023-01-03', '2023-01-31');

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '5', '2023-01-04', '2023-01-26');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('15', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('12', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('6', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('7', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('4', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('9', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('11', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('14', '5', '2023-01-03', '2023-01-31');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '5', '2023-01-03', '2023-01-31');

-- Setting Managers --
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '1', '2023-01-09', '2023-01-31');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('2', '2', '2023-01-09', '2023-01-31');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('3', '3', '2023-01-09', '2023-01-31');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('4', '4', '2023-01-09', '2023-01-31');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '5', '2023-01-09', '2023-01-31');

-- Setting Titles --
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('1', 'Bachillerato', '2020-01-01', '2020-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('2', 'Bachillerato', '2020-01-01', '2020-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('3', 'Bachillerato', '2020-01-01', '2020-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('4', 'Bachillerato', '2020-01-01', '2020-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('5', 'Bachillerato', '2020-01-01', '2020-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('6', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('7', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('8', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('9', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('10', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('11', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('12', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('13', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('14', 'Bachillerato', '2023-01-02', '2023-01-31');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('15', 'Bachillerato', '2023-01-02', '2023-01-31');

-- Update employees --
UPDATE `employees` SET `first_name` = 'Mario' WHERE `employees`.`emp_no` = 14;

-- Update departments --
UPDATE `departments` SET `dept_name` = 'Editors' WHERE `departments`.`dept_no` = '5';

-- Select all employees with a salary greater than 20,000 --
SELECT employees.*, salaries.salary FROM employees LEFT JOIN salaries on employees.emp_no = salaries.emp_no WHERE salary > 20000;

-- Select all employees with a salary below 10,000 --
SELECT employees.*, salaries.salary FROM employees LEFT JOIN salaries on employees.emp_no = salaries.emp_no WHERE salary < 10000;

-- Select all employees who have a salary between 14,000 and 50,000 --
SELECT employees.*, salaries.salary FROM employees LEFT JOIN salaries on employees.emp_no = salaries.emp_no WHERE salary > 14000 AND salary < 50000;

-- Select the total number of employees --
SELECT COUNT(emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department --
SELECT FOUND_ROWS() as total FROM dept_emp HAVING COUNT(emp_no) > 1;

-- Select the titles of the year 2020 --
SELECT title as total FROM titles WHERE DATE(to_date) BETWEEN '2020-01-01' AND DATE_ADD('2020-01-01', INTERVAL 1 YEAR);

-- Select the name of all employees with capital letters --
SELECT UCASE(first_name), UCASE(last_name) FROM employees;

-- Select the name, surname and name of the current department of each employee --
(SELECT employees.first_name, employees.last_name, dept_emp.dept_no as 'department' FROM employees JOIN dept_emp ON employees.emp_no  = dept_emp.emp_no) UNION (SELECT employees.first_name, employees.last_name, dept_manager.dept_no FROM employees JOIN dept_manager ON employees.emp_no  = dept_manager.emp_no) ORDER BY last_name;

-- Select the name, surname and number of times the employee has worked as a manager --
SELECT employees.first_name, employees.last_name, COUNT(*) as count FROM employees JOIN dept_manager ON employees.emp_no  = dept_manager.emp_no GROUP BY employees.emp_no;

-- Select the name of employees without any being repeated --
SELECT DISTINCT first_name FROM employees;

-- Delete all employees with a salary greater than 20,000 --
DELETE FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary > 20000);

-- Remove the department that has the most employees --
DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY count(dept_no) desc limit 1);

-- Create my own Database --
CREATE DATABASE IF NOT EXISTS gamingstore;

CREATE TABLE workers (
    work_no     INT             NOT NULL,
    birth_date  DATE            NOT NULL,
    first_name  VARCHAR(14)     NOT NULL,
    last_name   VARCHAR(16)     NOT NULL,
    gender      ENUM ('M','F')  NOT NULL,    
    hire_date   DATE            NOT NULL,
    PRIMARY KEY (work_no)
);

CREATE TABLE departments (
    dept_no     CHAR(4)         NOT NULL,
    dept_name   VARCHAR(40)     NOT NULL,
    PRIMARY KEY (dept_no),
    UNIQUE  KEY (dept_name)
);

CREATE TABLE dept_manager (
   work_no      INT             NOT NULL,
   dept_no      CHAR(4)         NOT NULL,
   from_date    DATE            NOT NULL,
   to_date      DATE            NOT NULL,
   FOREIGN KEY (work_no)  REFERENCES employees (work_no)    ON DELETE CASCADE,
   FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
   PRIMARY KEY (work_no,dept_no)
); 

CREATE TABLE dept_emp (
    work_no     INT             NOT NULL,
    dept_no     CHAR(4)         NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (work_no)  REFERENCES employees   (work_no)  ON DELETE CASCADE,
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no) ON DELETE CASCADE,
    PRIMARY KEY (work_no,dept_no)
);

CREATE TABLE titles (
    work_no     INT             NOT NULL,
    title       VARCHAR(50)     NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE,
    FOREIGN KEY (work_no) REFERENCES employees (work_no) ON DELETE CASCADE,
    PRIMARY KEY (work_no,title, from_date)
); 

CREATE TABLE salaries (
    work_no     INT             NOT NULL,
    salary      INT             NOT NULL,
    from_date   DATE            NOT NULL,
    to_date     DATE            NOT NULL,
    FOREIGN KEY (work_no) REFERENCES employees (work_no) ON DELETE CASCADE,
    PRIMARY KEY (work_no, from_date)
);