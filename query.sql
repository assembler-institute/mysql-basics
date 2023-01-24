-- 1.INSERT DATA
    -- Insert at least 15 new employees:
    -- With salaries that are between a range of 5,000 and 50,000 of different gender
    -- 5 employees must have at least two salaries in different ranges of dates and different amounts
    -- 10 employees belong to more than one department
    -- 5 employees are managers
    -- All employees have a degree and at least 5 titles are from 2020
    -- At least 3 employees have the same name

-- 2.UPDATE DATA
    -- Update employees:
        -- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth. (This will likely throw an 1175 mysql error, mysql by default enables a safe mode for not updating or deleting a row without using a primary key in the where clause. You have to understand why this happens and investigate and disable safe mode temporarily in order to get this query executed)
    -- Update departments:
        -- Change the name of all departments.

-- 3.GET DATA
    -- Select all employees with a salary greater than 20,000, you must list all employees data and the salary.
    -- Select all employees with a salary below 10,000, you must list all employees data and the salary.
    -- Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary.
    -- Select the total number of employees
    -- Select the total number of employees who have worked in more than one department
    -- Select the titles of the year 2020
    -- Select the name of all employees with capital letters
    -- Select the name, surname and name of the current department of each employee
    -- Select the name, surname and number of times the employee has worked as a manager
    -- Select the name of employees without any being repeated

-- 4.DELETE DATA
    -- Delete all employees with a salary greater than 20,000
    -- Remove the department that has the most employees. (Let’s assume that only one department is returned in this query, as an extra you can try to write the query for deleting all departments in case there are more than one in the result)


-- SOLUTIONS --

-- 1. INSERT DATA

-- Insert at least 15 new employees:
Insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values
	(1,'1964-03-15','Michael','Scott','M','2000-01-20'),
    (2,'1970-01-20','Dwight','Schrute','M','2000-01-20'),
    (3,'1978-10-01','James','Harper','M','2000-01-20'),
    (4,'1979-03-25','Pamela','Beesly','F','2000-01-20'),
    (5,'1972-11-29','Kevin','Malone','M','2000-01-20'),
    (6,'1974-11-11','Angela','Martin','F','2000-01-20'),
    (7,'1972-11-15','Oscar','Martinez','M','2000-01-20'),
    (8,'1973-01-24','Andrew','Bernard','M','2000-01-20'),
    (9,'1951-07-14','Stanley','Hudson','M','2000-01-20'),
    (10,'1965-07-10','Phyllis','Vance','F','2000-01-20'),
    (11,'1959-11-12','Meredith','Palmer','F','2000-01-20'),
    (12,'1980-02-05','Kelly','Kapoor','F','2000-01-20'),
    (13,'1925-11-01','Creed','Bratton','M','2000-01-20'),
    (14,'1971-10-25','Darryl','Philbin','M','2000-01-20'),
    (15,'1963-02-22','Toby','Flenderson','M','2000-01-20'),
    (16,'1986-05-01','Kelly','"Erin" Hannon','F','2013-01-20'),
    (17,'1991-07-14','Dwight','"Clark" Green','M','2013-01-01'),
    (18,'1989-07-26','Jim','"Plop" Miller','M','2013-01-01');

-- With salaries that are between a range of 5,000 and 50,000 of different gender
-- 5 employees must have at least two salaries in different ranges of dates and different amounts
Insert into salaries (emp_no, salary, from_date, to_date)
values
	(1, 32000,'2000-01-20','2012-12-31'),
	(1, 36000,'2013-01-01','2022-12-31'),
	(2, 30000,'2000-01-20','2012-12-31'),
	(2, 34000,'2013-01-01','2022-12-31'),
	(3, 30000,'2000-01-20','2022-12-31'),
	(4, 23000,'2000-01-20','2012-12-31'),
	(4, 30000,'2013-01-20','2022-12-31'),
	(5, 24000,'2000-01-20','2022-12-31'),
	(6, 28000,'2000-01-20','2012-12-31'),
	(6, 30000,'2013-01-20','2022-12-31'),
	(7, 28000,'2000-01-20','2022-12-31'),
	(8, 30000,'2000-01-20','2022-12-31'),
	(9, 30000,'2000-01-20','2022-12-31'),
	(10, 30000,'2000-01-20','2022-12-31'),
	(11, 26000,'2000-01-20','2022-12-31'),
	(12, 26000,'2000-01-20','2022-12-31'),
	(13, 26000,'2000-01-20','2022-12-31'),
	(14, 18000,'2000-01-20','2012-12-31'),
	(14, 26000,'2013-01-20','2022-12-31'),
	(15, 28000,'2000-01-20','2022-12-31'),
	(16, 23000,'2013-01-01','2022-12-31'),
	(17, 15000,'2013-01-01','2022-12-31'),
	(18, 15000,'2013-01-01','2022-12-31');

-- Insert departments
Insert into departments (dept_no, dept_name)
values
    ('D-1','Manager'),
    ('D-2','Admin'),
    ('D-3','Recep'),
    ('D-4','sales'),
    ('D-5','F.Accounting'),
    ('D-6','S. relations'),
    ('D-7','Customer S.'),
    ('D-8','Q.G.'),
    ('D-9','warehouse'),
    ('D-10','H.R.');

-- 10 employees belong to more than one department
Insert into dept_emp (emp_no, dept_no, from_date, to_date)
values
    (1, 'D-1','2007-01-01','2021-12-31'),
    (1, 'D-4','2000-01-20','2021-12-31'),
    (2, 'D-1','2000-01-20','2021-12-31'),
    (2, 'D-2','2009-01-01','2021-12-31'),
    (2, 'D-4','2005-01-01','2021-12-31'),
    (3, 'D-4','2000-01-20','2021-12-31'),
    (3, 'D-7','2008-01-01','2021-12-31'),
    (4, 'D-2','2010-01-01','2021-12-31'),
    (4, 'D-3','2000-01-20','2021-12-31'),
    (4, 'D-4','2010-01-01','2021-12-31'),
    (5, 'D-5','2000-01-20','2021-12-31'),
    (6, 'D-1','2000-01-20','2021-12-31'),
    (6, 'D-5','2000-01-20','2021-12-31'),
    (7, 'D-5','2000-01-20','2021-12-31'),
    (8, 'D-4','2009-01-20','2021-12-31'),
    (9, 'D-4','2000-01-20','2021-12-31'),
    (10, 'D-4','2000-01-20','2021-12-31'),
    (10, 'D-9','2006-01-20','2021-12-31'),
    (11, 'D-4','2000-01-20','2021-12-31'),
    (11, 'D-6','2000-01-20','2021-12-31'),
    (12, 'D-7','2000-01-20','2021-12-31'),
    (13, 'D-6','2000-01-20','2021-12-31'),
    (13, 'D-8','2000-01-20','2021-12-31'),
    (14, 'D-1','2010-01-20','2021-12-31'),
    (14, 'D-9','2000-01-20','2021-12-31'),
    (15, 'D-10','2000-01-20','2021-12-31'),
    (16, 'D-3','2013-01-01','2021-12-31'),
    (17, 'D-7','2013-01-01','2021-12-31'),
    (17, 'D-4','2013-01-01','2021-12-31'),
    (18, 'D-7','2013-01-01','2021-12-31');

-- 5 employees are managers
Insert into dept_manager (emp_no, dept_no, from_date, to_date)
values
	(1, 'D-1','2000-01-20','2021-12-31'),
	(2, 'D-4','2000-01-20','2021-12-31'),
	(6, 'D-5','2000-01-20','2021-12-31'),
	(14, 'D-9','2000-01-20','2021-12-31'),
	(15, 'D-10','2000-01-20','2021-12-31');

-- All employees have a degree and at least 5 titles are from 2020
Insert into titles (emp_no, title, from_date, to_date)
values 
    (1, 'Business Administration', '2000-01-20','2021-12-31'),
    (2, 'Business Administration', '2000-01-20','2021-12-31'),
    (3, 'Business Administration', '2000-01-20','2021-12-31'),
    (4, 'Fine Arts', '2020-07-01','2021-12-31'),
    (5, 'Financial Accounting and Reporting', '2020-06-20','2021-12-31'),
    (6, 'Financial Accounting and Reporting', '2000-01-20','2021-12-31'),
    (7, 'Financial Accounting and Reporting', '2000-01-20','2021-12-31'),
    (8, 'Business Administration', '2000-01-20','2021-12-31'),
    (9, 'Marketing and Sales', '2000-01-20','2021-12-31'),
    (10, 'Marketing and Sales', '2000-01-20','2021-12-31'),
    (11, 'Social Work', '2000-01-01','2021-12-31'),
    (12, 'Social Work', '2020-06-15','2021-12-31'),
    (13, 'Musical Arts', '2000-01-20','2021-12-31'),
    (14, 'Supply Chain Management and Logistics', '2000-01-20','2021-12-31'),
    (15, 'Human Resources', '2000-01-20','2021-12-31'),
    (16, 'Social Work', '2020-07-01','2021-12-31'),
    (17, 'Marketing and Sales', '2013-01-01','2021-12-31'),
    (18, 'Marketing', '2020-07-01','2021-12-31');

-- 2. UPDATE DATA

-- Update employees:
    -- Change the name of an employee. (Safe mode disabled)
    UPDATE employees SET first_name = 'Jim' WHERE first_name = 'James';
-- Update departments:
    -- Change the name of all departments.
    UPDATE departments SET dept_name = 'Managerment' WHERE dept_no = 'D-1';
    UPDATE departments SET dept_name = 'Administration' WHERE dept_no = 'D-2';
    UPDATE departments SET dept_name = 'Reception' WHERE dept_no = 'D-3';
    UPDATE departments SET dept_name = 'Sales' WHERE dept_no = 'D-4';
    UPDATE departments SET dept_name = 'Accounting' WHERE dept_no = 'D-5';
    UPDATE departments SET dept_name = 'Supplier Relations' WHERE dept_no = 'D-6';
    UPDATE departments SET dept_name = 'Customer Service' WHERE dept_no = 'D-7';
    UPDATE departments SET dept_name = 'Quality Guarantee' WHERE dept_no = 'D-8';
    UPDATE departments SET dept_name = 'Warehouse' WHERE dept_no = 'D-9';
    UPDATE departments SET dept_name = 'Human Resources' WHERE dept_no = 'D-10';

-- 3. GET DATA

-- Select all employees with a salary greater than 20,000, you must list all employees data and the salary.
SELECT e.emp_no, e.birth_date, e.first_name, e.last_name, e.gender, e.hire_date, s.salary FROM employees e
INNER JOIN salaries s on e.emp_no = s.emp_no WHERE s.salary >= 20000;

-- Select all employees with a salary below 10,000, you must list all employees data and the salary.
SELECT e.emp_no, e.birth_date, e.first_name, e.last_name, e.gender, e.hire_date, s.salary FROM employees e
INNER JOIN salaries s on e.emp_no = s.emp_no WHERE s.salary <= 10000;

-- Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary.
SELECT e.emp_no, e.birth_date, e.first_name, e.last_name, e.gender, e.hire_date, s.salary FROM employees e
INNER JOIN salaries s on e.emp_no = s.emp_no WHERE s.salary BETWEEN 14000 AND 50000;

-- Select the total number of employees
SELECT count(emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT COUNT(emp_no)
FROM (SELECT emp_no,COUNT(*) AS recount_depts
FROM dept_emp GROUP BY emp_no) AS empno_rd
WHERE recount_depts > 1;

-- Select the titles of the year 2020
SELECT * FROM titles WHERE from_date between '2020-01-01' and '2020-12-31';

-- Select the name of all employees with capital letters
SELECT UPPER(first_name) FROM employees;

-- Select the name, surname and name of the current department of each employee
SELECT e.emp_no, e.first_name, e.last_name, d.dept_name FROM employees e 
INNER JOIN (SELECT emp_no, dept_no, from_date FROM dept_emp WHERE from_date IN (SELECT MAX(from_date) FROM dept_emp GROUP BY emp_no)) currentD 
ON e.emp_no = currentD.emp_no
INNER JOIN departments d ON currentD.dept_no = d.dept_no ORDER BY e.emp_no;

-- Select the name, surname and number of times the employee has worked as a manager
SELECT e.emp_no, e.first_name, e.last_name, m.manager_time FROM employees e
LEFT JOIN (SELECT emp_no, COUNT(emp_no) AS manager_time FROM dept_manager GROUP BY emp_no) m 
ON e.emp_no = m.emp_no;

-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;

-- 4. DELETE DATA

-- Delete all employees with a salary greater than 20,000
DELETE e FROM employees e JOIN salaries s ON e.emp_no = s.emp_no WHERE S.salary > 20000;

-- Remove the department that has more employees. (Let’s assume that only one department is returned in this query, as an extra you can try to write the query for deleting all departments in case there are more than one in the result)
DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY count(dept_no) limit 1);



-- CREATE NEW DATABASE--

DROP DATABASE IF EXISTS store;
CREATE DATABASE IF NOT EXISTS store;
USE store;

CREATE TABLE clients(
    id_client INT NOT NULL AUTO_INCREMENT,
    name_client TEXT(20) NOT NULL,
    email_client VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_client)
);

CREATE TABLE client_card(
    id_card INT NOT NULL AUTO_INCREMENT,
    id_client INT NOT NULL,
    PRIMARY KEY (id_card),
    FOREIGN KEY (id_client) REFERENCES clients(id_client) ON DELETE CASCADE
);

CREATE TABLE products(
    id_product INT NOT NULL AUTO_INCREMENT,
    name_product VARCHAR(30) NOT NULL,
    price_produc INT NOT NULL,
    PRIMARY KEY (id_product)
);

CREATE TABLE employees(
    id_emp INT NOT NULL AUTO_INCREMENT,
    name_emp VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_emp)
);

CREATE TABLE stores(
    id_store INT NOT NULL AUTO_INCREMENT,
    id_product INT NOT NULL,
    id_emp INT NOT NULL,
    name_store VARCHAR(30) NOT NULL,
    city_store VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_store),
    FOREIGN KEY (id_product) REFERENCES products(id_product) ON DELETE CASCADE,
    FOREIGN KEY (id_emp) REFERENCES employees(id_emp) ON DELETE CASCADE
);


CREATE TABLE orders(
    id_order INT NOT NULL AUTO_INCREMENT,
    id_client INT NOT NULL,
    id_store INT NOT NULL,
    id_product INT NOT NULL,
    id_emp INT NOT NULL,
    totalprice_order INT NOT NULL,
    PRIMARY KEY (id_order),
    FOREIGN KEY (id_client) REFERENCES clients(id_client) ON DELETE CASCADE,
    FOREIGN KEY (id_store) REFERENCES stores(id_store) ON DELETE CASCADE,
    FOREIGN KEY (id_product) REFERENCES products(id_product) ON DELETE CASCADE,
    FOREIGN KEY (id_emp) REFERENCES employees(id_emp) ON DELETE CASCADE
);

