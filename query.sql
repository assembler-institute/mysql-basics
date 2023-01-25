
-- INSERT DATA
    -- Insert at least 15 new employees:
    -- With salaries that are between a range of 5,000 and 50,000 of different gender
    -- 5 employees must have at least two salaries in different ranges of dates and different amounts
    -- 10 employees belong to more than one department
    -- 5 employees are managers
    -- All employees have a degree and at least 5 titles are from 2020
    -- At least 3 employees have the same name

-- UPDATE DATA
    -- Update employees:
        -- Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth. (This will likely throw an 1175 mysql error, mysql by default enables a safe mode for not updating or deleting a row without using a primary key in the where clause. You have to understand why this happens and investigate and disable safe mode temporarily in order to get this query executed)
    -- Update departments:
        -- Change the name of all departments.

-- GET DATA
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

-- DELETE DATA
    -- Delete all employees with a salary greater than 20,000
    -- Remove the department that has the most employees. (Let’s assume that only one department is returned in this query, as an extra you can try to write the query for deleting all departments in case there are more than one in the result)


--employees
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)

 VALUES 
 ('1', '1998-01-16', 'Dylan', 'oConnell', 'M', '2023-01-11'), 
 ('2', '1998-01-18', 'Yno', 'Chunli', 'M', '2023-01-19');
 ('3', '1995-01-12', 'Berta', 'Garcia', 'M', '2023-01-04'), 
 ('4', '1998-01-18', 'Kriss', 'Zoltan', 'M', '2023-01-03');
 ('5', '1999-01-13', 'Charlie', 'dct', 'F', '2023-01-02'), 
 ('6', '1994-01-12', 'Sophie', 'dct', 'F', '2023-01-12');
 ('7', '1995-01-12', 'Daniel', 'Westhern', 'M', '2023-01-04'), 
 ('8', '1994-01-12', 'Anne', 'Villary', 'M', '2023-01-05');
 ('9', '1997-01-03', 'Chris', 'Lesley', 'F', '2023-01-11'),
 ('10', '1998-01-18', 'Maria', 'Martinez', 'F', '2023-01-05');
 ('11', '1997-01-03', 'Julen', 'Vadillo', 'M', '2023-01-03'), 
 ('12', '1994-01-17', 'Marthi', 'Ambrus', 'M', '2023-01-04');
 ('13', '1997-01-01', 'Facu', 'Gonzalez', 'M', '2023-01-04'),
 ('14', '1994-01-25', 'Tobias', 'Andreade', 'M', '2022-12-22');
('15', '1994-01-25', 'Tobias', 'Andreade', 'M', '2022-12-22');


INSERT INTO departments (dept_no, dept_name)
VALUES
(1,'IT'),
(2,'Marketing'),
(3,'HR');


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
(8,3,'2020-12-06','2020-12-31'),
(3,2,'2020-12-08','2020-12-31'),
(1,4,'2020-12-10', '2020-12-15'),
(2,5,'2020-11-10', '2020-12-10');

--Salaries INSERT INTO salaries(emp_no, salary, from_date, to_date)

VALUES
 ('8', '12000', '2018-01-11', '2023-01-19'), 
 ('3', '50000', '2023-01-04', '2023-01-12');
 ('5', '28000', '2020-01-15', '2023-01-18'), 
 ('9', '19000', '2022-01-05', '2023-01-12');
 ('7', '40000', '2023-01-01', '2027-01-14'),
 ('1', '49000', '2022-01-05', '2023-01-26');
 ('12', '43000', '2023-01-04', '2025-01-16'), 
 ('13', '50000', '2022-01-05', '2023-01-19');
 ('14', '20000', '2023-01-12', '2026-01-08'), 
 ('15', '17000', '2020-01-08', '2023-01-04');
 ('11', '12000', '2022-01-19', '2023-01-11'), 
 ('4', '5000', '2023-01-01', '2023-01-31');
 ('10', '38000', '2023-01-12', '2027-01-21'), 
 ('6', '25000', '2023-01-11', '2027-01-06');
 ('2', '40000', '2023-01-12', '2027-01-21');

--INSERT INTO titles (emp_no, title, from_date, to_date)

VALUES 
('8', 'HR manager ', '2017-01-04', '2023-01-25'),
('3', 'IT manager', '2017-01-11', '2023-01-05');
('5', 'External consultor ', '2020-01-09', '2023-01-26'), 
('9', 'Manager Tender analyst ', '2020-03-19', '2023-02-15');
('7', 'Local IT ', '2021-01-06', '2023-01-25'), 
('1', 'Team leader HR ', '2020-01-08', '2023-01-19');
('12', 'Access management TL', '2021-01-20', '2023-01-19'),
('13', 'Marketing agent ', '2019-01-15', '2023-01-26');
('14', 'Digital marjeting Agent', '2020-01-15', '2023-01-19'), 
('15', 'Manager core team ', '2022-01-06', '2023-01-25');
('11', 'servide desk agent ', '2022-01-18', '2023-01-18'), 
('4', 'jouralist', '2021-01-13', '2023-01-19');
('10', 'Director Core Team', '2023-01-05', '2026-01-09'), 
('6', 'Actress', '2022-01-19', '2025-01-09');
('2', 'Brand manager ', '2020-01-15', '2023-05-18');

--Updates

UPDATE `employees` SET `first_name` = 'Facu', `last_name` = 'Gonzalez' WHERE `employees`.`emp_no` = 14;
UPDATE employees
SET first_name = 'Daniel'
WHERE (first_name = 'Charlie'AND last_name='dct' AND birth_date='1999-01-13');
UPDATE departments SET dept_name ='Tendersystem' WHERE dept_no = 2;
UPDATE departments SET dept_name ='IT' WHERE dept_no = 1;
UPDATE departments SET dept_name ='Human-Resources' WHERE dept_no = 3;

--GET DATA
-- Salary greater than 20000
SELECT *
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salary >20000;
Select all employees with a salary below 10,000


-- Salary below 10000
SELECT *
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salary < 10000;

-- Salary between 14000 and 50000
SELECT *
FROM employees
LEFT JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE salary BETWEEN 14 AND 50000;

-- Select the total employees
SELECT COUNT(*)
FROM employees;

-- Select employees who worked in more than one department
SELECT COUNT(*)
FROM (
    SELECT emp_no, COUNT(*)
    FROM dept_emp
    GROUP BY emp_no
    HAVING COUNT(*) > 1
) employees;

-- Select the titles  2019

SELECT * FROM titles
WHERE from_date >= '2019-01-01' AND from_date <= '2019-12-31';

--Name of the employees in capital letters

SELECT UPPER(first_name)
FROM employees;

--Select the name, surname and name of the current department of each employee

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
-- Name of employees without any being repeated

SELECT DISTINCT first_name
FROM employees;


-- Delete all employees- salary greater than 20000
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
--------------------------------------------------------------------------
-- DESIGN YOUR OWN DATABASE

DROP DATABASE IF EXISTS New_database;
CREATE DATABASE IF NOT EXISTS USE New_database;
USE New_database;

--  Tables
CREATE TABLE New_Database.user(
    id_user INT NOT NULL AUTO_INCREMENT,
    name_user TEXT(20) NOT NULL,
    email_user VARCHAR(30) NOT NULL,
    PRIMARY KEY (id_user)
);

CREATE TABLE New_Database.user (
  contact_id INT NOT NULL AUTO_INCREMENT,
     user_id INT NULL DEFAULT NULL,
     country VARCHAR(20) NULL DEFAULT NULL,
     city VARCHAR(40) NULL DEFAULT NULL,
     adress VARCHAR(20) NULL DEFAULT NULL,
     phone_number VARCHAR(15) NULL,
     email VARCHAR(50) NULL,


CREATE TABLE New_Database.orders 
(quantity INT NOT NULL , 
PRIMARY KEY (no_order), 
no_order INT NOT NULL AUTO_INCREMENT, 
user_id INT NOT NULL, 
FOREIGN KEY (user_id) REFERENCES user(user_id);
ON DELETE CASCADE, id_article INT NOT NULL, 
FOREIGN KEY (id_article) 
REFERENCES article(id_article) 
ON DELETE CASCADE);

PRIMARY KEY (od_id),
FOREIGN KEY (user_id)
    REFERENCES user (user_id)
);


CREATE TABLE New_Database.items (
  item_id INT NOT NULL AUTO_INCREMENT,
   name_product VARCHAR(75) NOT NULL,
   supplier VARCHAR(100) NOT NULL,
   price FLOAT NOT NULL DEFAULT 0,
   quantity SMALLINT(6) NOT NULL DEFAULT 0,
   published DATETIME NULL DEFAULT NULL,
   order_id INT NULL DEFAULT NULL,

PRIMARY KEY (item_id),
FOREIGN KEY (order_id)
    REFERENCES New_Database (order_id)
);