--////////////// INSERT DATA ///////////////--
-- With salaries that are between a range of 5,000 and 50,000 of different gender
INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES (1,  '2019-08-01', 'Miquel',  'Abella',     'M', '2019-12-31'),
    (2,  '2019-08-01', 'Wilson',  'Wolson',     'M', '2019-12-31'),
    (3,  '2019-08-01', 'Jesus',   'Quintero',   'M', '2019-12-31'),
    (4,  '2019-08-01', 'Anthony', 'Abella',     'M', '2019-12-31'),
    (5,  '2019-08-01', 'Miquel',  'Tarantino',  'M', '2019-12-31'),
    (6,  '2019-08-01', 'David',   'Pizarro',    'M', '2019-12-31'),
    (7,  '2019-08-01', 'Iñaki',   'Romero',     'M', '2019-12-31'),
    (8,  '2019-08-01', 'Victor',  'García',     'M', '2019-12-31'),
    (9,  '2019-08-01', 'Sofia',   'Daconte',    'F', '2019-12-31'),
    (10, '2019-08-01', 'Berta',   'Villanueva', 'F', '2019-12-31'),
    (11, '2019-08-01', 'Lucía',   'Igarziburu', 'F', '2019-12-31'),
    (12, '2019-08-01', 'Javier',  'Melancho',   'M', '2019-12-31'),
    (13, '2019-08-01', 'Pepón',   'Pastenagas', 'M', '2019-12-31'),
    (14, '2019-08-01', 'Antonio', 'Ciruelo',    'M', '2019-12-31'),
    (15, '2019-08-01', 'Pablo',   'Escobar',    'M', '2019-12-31'),
    (16, '2019-08-01', 'David',   'Pizarro',    'M', '2019-12-31'),
    (17, '2019-08-01', 'David',   'Pizarro',    'M', '2019-12-31'),
    (18, '2019-08-01', 'David',   'Pizarro',    'M', '2019-12-31'),
    (19, '2019-08-01', 'David',   'Pizarro',    'M', '2019-12-31'),
    (20, '2019-08-01', 'David',   'Pizarro',    'M', '2019-12-31');

-- 5 employees must have at least two salaries in different ranges of dates and different amounts
INSERT INTO salaries(emp_no, salary, from_date, to_date)
VALUES (1,   5800, '2019-10-31', '2019-12-31'),
    (2,   5000, '2019-10-31', '2019-12-31'),
    (3,   6000, '2020-10-31', '2021-12-31'),
    (4,   7000, '2021-10-31', '2022-12-31'),
    (5,   8000, '2018-10-31', '2018-12-31'),
    (6,   9000, '2017-10-31', '2017-12-31'),
    (7,  14000, '2016-10-31', '2016-12-31'),
    (8,  15000, '2015-10-31', '2015-12-31'),
    (9,  16000, '2014-10-31', '2014-12-31'),
    (10, 17000, '2013-10-31', '2013-12-31'),
    (11, 18000, '2012-10-31', '2012-12-31'),
    (12, 19000, '2011-10-31', '2011-12-31'),
    (13, 20000, '2010-10-31', '2010-12-31'),
    (14, 21000, '2009-10-31', '2009-12-31'),
    (15, 22000, '2008-10-31', '2008-12-31'),
    (16, 22000, '2008-10-31', '2008-12-31'),
    (17, 32000, '2008-10-31', '2008-12-31'),
    (18, 32000, '2008-10-31', '2008-12-31'),
    (19, 32000, '2008-10-31', '2008-12-31'),
    (20, 32000, '2008-10-31', '2008-12-31'),
    (1,  43000, '2007-10-31', '2007-12-31'),
    (2,  44000, '2006-10-31', '2006-12-31'),
    (3,  45000, '2005-10-31', '2005-12-31'),
    (4,  46000, '2004-10-31', '2004-12-31'),
    (5,  47000, '2003-10-31', '2003-12-31');

-- Create departments
INSERT INTO departments(dept_no, dept_name)
VALUES ('DP1', 'Employees'),
    ('DP2', 'Managers'),
    ('DP3', 'Cappos');

-- 10 employees belong to more than one department
INSERT INTO dept_emp(emp_no, dept_no, from_date, to_date)
VALUES (1, 'DP1', '2019-10-31', '2019-12-31'),
    (2,  'DP1', '2019-10-31', '2019-12-31'),
    (3,  'DP1', '2020-10-31', '2021-12-31'),
    (4,  'DP1', '2021-10-31', '2022-12-31'),
    (5,  'DP1', '2018-10-31', '2018-12-31'),
    (6,  'DP1', '2017-10-31', '2017-12-31'),
    (7,  'DP1', '2016-10-31', '2016-12-31'),
    (8,  'DP1', '2015-10-31', '2015-12-31'),
    (9,  'DP1', '2014-10-31', '2014-12-31'),
    (10, 'DP1', '2013-10-31', '2013-12-31'),
    (11, 'DP1', '2012-10-31', '2012-12-31'),
    (12, 'DP1', '2011-10-31', '2011-12-31'),
    (13, 'DP1', '2010-10-31', '2010-12-31'),
    (14, 'DP1', '2009-10-31', '2009-12-31'),
    (15, 'DP1', '2009-10-31', '2009-12-31'),
    (16, 'DP1', '2009-10-31', '2009-12-31'),
    (17, 'DP1', '2009-10-31', '2009-12-31'),
    (18, 'DP1', '2009-10-31', '2009-12-31'),
    (19, 'DP1', '2009-10-31', '2009-12-31'),
    (20, 'DP1', '2008-10-31', '2008-12-31'),
    (6,  'DP3', '2019-10-31', '2019-12-31'),
    (7,  'DP3', '2019-10-31', '2019-12-31'),
    (8,  'DP3', '2019-10-31', '2019-12-31'),
    (9,  'DP3', '2019-10-31', '2019-12-31'),
    (10, 'DP3', '2019-10-31', '2019-12-31');

-- 5 employees are managers
INSERT INTO dept_manager(emp_no, dept_no, from_date, to_date)
VALUES (1, 'DP2', '2019-10-31', '2019-12-31'),
    (2, 'DP2', '2019-10-31', '2019-12-31'),
    (3, 'DP2', '2020-10-31', '2021-12-31'),
    (4, 'DP2', '2021-10-31', '2022-12-31'),
    (5, 'DP2', '2018-10-31', '2018-12-31');

-- All employees have a degree and at least 5 titles are from 2020
INSERT INTO titles(emp_no, title, from_date, to_date)
VALUES (1, 'Title title', '2019-10-31', '2019-12-31'),
    (2,  'Title title', '2019-10-31', '2019-12-31'),
    (3,  'Title title', '2020-10-31', '2021-12-31'),
    (4,  'Title title', '2021-10-31', '2022-12-31'),
    (5,  'Title title', '2018-10-31', '2018-12-31'),
    (6,  'Title title', '2017-10-31', '2017-12-31'),
    (7,  'Title title', '2016-10-31', '2016-12-31'),
    (8,  'Title title', '2015-10-31', '2015-12-31'),
    (9,  'Title title', '2014-10-31', '2014-12-31'),
    (10, 'Title title', '2013-10-31', '2013-12-31'),
    (11, 'Title title', '2012-10-31', '2012-12-31'),
    (12, 'Title title', '2011-10-31', '2011-12-31'),
    (13, 'Title title', '2010-10-31', '2010-12-31'),
    (14, 'Title title', '2020-10-31', '2020-12-31'),
    (15, 'Title title', '2020-10-31', '2020-12-31'),
    (16, 'Title title', '2020-10-31', '2020-12-31'),
    (17, 'Title title', '2020-10-31', '2020-12-31'),
    (18, 'Title title', '2020-10-31', '2020-12-31'),
    (19, 'Title title', '2020-10-31', '2020-12-31'),
    (20, 'Title title', '2008-10-31', '2008-12-31');

--////////////// UPDATE DATA ///////////////--
-- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth
UPDATE employees SET first_name = 'Pepón'
WHERE first_name = 'Pepín'
    AND last_name = 'Pastenagas'
    AND birth_date = '2019-08-01';

-- Change the name of all departments
UPDATE departments SET dept_name = 'New employees'
WHERE dept_no = 'DP1';

UPDATE departments SET dept_name = 'New managers'
WHERE dept_no = 'DP2';

UPDATE departments SET dept_name = 'New cappos'
WHERE dept_no = 'DP3';


--////////////// GET DATA ///////////////--
--Select all employees with a salary greater than 20,000, you must list all employees data and the salary
SELECT employees.*, salaries.salary FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary > 20000;

-- Select all employees with a salary below 10,000, you must list all employees data and the salary
SELECT employees.*, salaries.salary FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary < 10000;

-- Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary
SELECT employees.*, salaries.salary FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary BETWEEN 14000 AND 50000;

-- Select the total number of employees
SELECT COUNT(emp_no) FROM employees;

-- Select the total number of employees who have worked in more than one department
SELECT COUNT(*)
FROM (
        SELECT emp_no,
            COUNT(*) AS CNT
        FROM dept_emp
        GROUP BY emp_no
    ) AS T
WHERE CNT > 1;

-- Select the titles of the year 2020
SELECT titles.* FROM titles
WHERE from_date > '2020/01/01';

-- Select the name of all employees with capital letters
SELECT * FROM employees
WHERE ASCII(LEFT(first_name, 1)) BETWEEN 65 AND 90;

-- Select the name, surname and name of the current department of each employee
SELECT E.first_name, E.last_name, DS.dept_name FROM employees E
JOIN dept_emp D ON E.emp_no = D.emp_no
JOIN departments DS ON D.dept_no = DS.dept_no;

-- Select the name, surname and number of times the employee has worked as a manager
SELECT E.first_name, E.last_name, count(*) 
FROM employees E, dept_manager DM
WHERE E.emp_no = DM.emp_no
GROUP BY E.first_name, E.last_name;

-- Select the name of employees without any being repeated
SELECT DISTINCT first_name FROM employees;

--////////////// DELETE DATA ///////////////--
-- Delete all employees with a salary greater than 20,000
DELETE E FROM employees E
JOIN salaries S ON E.emp_no = S.emp_no
WHERE S.salary > 20000; 

-- Remove the department that has more employees
DELETE FROM departments
    WHERE dept_no = (
        SELECT dept_no FROM dept_emp
        GROUP BY dept_no
        ORDER BY count(dept_no) desc
        limit 1
    );

--////////////// SALES DATABASE ///////////////
DROP DATABASE IF EXISTS sales;
CREATE DATABASE IF NOT EXISTS sales;
USE sales;

SELECT 'CREATING DATABASE STRUCTURE' as 'INFO';

DROP TABLE IF EXISTS stores,
                     staffs,
                     customers,
                     orders, 
                     order_items;

/*!50503 set default_storage_engine = InnoDB */;
/*!50503 select CONCAT('storage engine: ', @@default_storage_engine) as INFO */;

CREATE TABLE stores (
    store_id   INT AUTO_INCREMENT  NOT NULL,
	store_name VARCHAR (255)       NOT NULL,
	phone      VARCHAR (25)        NOT NULL,
	email      VARCHAR (255)       NOT NULL,
	street     VARCHAR (255)       NOT NULL,
	city       VARCHAR (255)       NOT NULL,
	state      VARCHAR (10)        NOT NULL,
	zip_code   VARCHAR (5)         NOT NULL,
    PRIMARY KEY (store_id)
);

CREATE TABLE staffs (
    staff_id   INT AUTO_INCREMENT NOT NULL,
	first_name VARCHAR (50)       NOT NULL,
	last_name  VARCHAR (50)       NOT NULL,
	email      VARCHAR (255)      NOT NULL UNIQUE,
	phone      VARCHAR (25),
	active     tinyint            NOT NULL,
	store_id   INT                NOT NULL,
	manager_id INT,
    PRIMARY KEY (staff_id),
	FOREIGN KEY (store_id) 
        REFERENCES sales.stores (store_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (manager_id) 
        REFERENCES sales.staffs (staff_id) 
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
	first_name VARCHAR (255) NOT NULL,
	last_name VARCHAR (255) NOT NULL,
	phone VARCHAR (25),
	email VARCHAR (255) NOT NULL,
	street VARCHAR (255),
	city VARCHAR (50),
	state VARCHAR (25),
	zip_code VARCHAR (5),
    PRIMARY KEY (customer_id)
); 

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT,
	customer_id INT,
	order_status tinyint NOT NULL,
	order_date DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE,
	store_id INT NOT NULL,
	staff_id INT NOT NULL,
    PRIMARY KEY (order_id),
	FOREIGN KEY (customer_id) 
        REFERENCES sales.customers (customer_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (store_id) 
        REFERENCES sales.stores (store_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (staff_id) 
        REFERENCES sales.staffs (staff_id) 
        ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE order_items (
    order_id INT,
	item_id INT,
	product_id INT NOT NULL,
	quantity INT NOT NULL,
	list_price DECIMAL (10, 2) NOT NULL,
	discount DECIMAL (4, 2) NOT NULL DEFAULT 0,
	PRIMARY KEY (order_id, item_id),
	FOREIGN KEY (order_id) 
        REFERENCES sales.orders (order_id) 
        ON DELETE CASCADE ON UPDATE CASCADE
	
);