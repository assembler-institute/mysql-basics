
--INSERT DATA------------------------------------------------------------------------------------------------------------------------------------------

    --Insert at least 15 new employees:

    INSERT INTO `employees`(`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`)
    VALUES 
        ('1', '1991-12-12', 'David', 'Lopez', 1,'2021-12-21'),
        ('2', '1993-08-07', 'Dias', 'Obraador', 1,'2006-10-22'),
        ('3', '1971-09-07', 'Beatriz', 'Martinez', 2,'2000-09-12'),
        ('4', '1956-09-12', 'Antonio', 'Cid', 1, '1986-09-09'),
        ('5', '1976-07-09', 'Ilda', 'Moralez', 1, '2021-12-11'),
        ('6', '1987-03-12', 'Lucia', 'Pizarro', 2, '1996-12-32'),
        ('7', '1980-12-01', 'Fernando', 'Martinez', 1, '1999-01-30'),
        ('8', '1969-04-02', 'Sergio', 'Izada', 1, '2001-05-12'),
        ('9', '1999-04-12', 'Ruben', 'Zafra', 1, '2003-07-12'),
        ('10', '1945-02-45', 'Kristian', 'Kasir', 1, '2021-07-21'),
        ('11', '1976-05-13', 'Berta', 'Romero', 2, '1995-06-11'),
        ('12', '1945-10-28', 'Javier', 'Pascual', 1, '1986-12-22'),
        ('13', '1978-12-22', 'Antonio', 'Rufino', 1, '2021-03-11'),
        ('14', '1999-05-12', 'Isaura', 'Torres', 2, '2001-08-11'),
        ('15', '1995-08-30', 'Kenny', 'Naranjo', 1, '2000-12-12');


    --With salaries that are between a range of 5,000 and 50,000 of different gender
    -- 5 employees must have at least two salaries in different ranges of dates and different amounts

    INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) 
    VALUES 
    ('1', '5000', '2021-12-21', '2026-12-21'), 
    ('2', '10000', '2006-10-22', '2016-10-22'), 
    ('3', '30000', '2000-09-12', '2024-09-12'), 
    ('4', '15000', '1986-09-09', '1999-09-09'), 
    ('5', '50000', '2021-12-11', '2030-12-11'), 
    ('6', '40000', '1999-06-11', '2030-06-11'), 
    ('7', '45000', '1999-01-30', '2030-01-30'), 
    ('8', '38000', '2001-05-12', '2050-05-12'), 
    ('9', '50000', '2003-07-12', '2050-07-12'), 
    ('10', '30000', '2021-07-21', '2045-07-21'),
    ('11', '33000', '1995-06-11', '2040-06-11'), 
    ('12', '30000', '1986-12-22', '2002-12-22'), 
    ('13', '27000', '2021-03-11', '2040-03-11'), 
    ('14', '23000', '2001-08-11', '2050-08-11'), 
    ('15', '50000', '2000-12-12', '2040-12-12'), 
    ('15', '16000', '2040-12-12', '2050-12-12'), 
    ('14', '34000', '2050-08-11', '2060-08-11'), 
    ('13', '45000', '2040-03-11', '2050-03-11'), 
    ('12', '36000', '2002-12-22', '2004-12-22'), 
    ('11', '46000', '2040-06-11', '2050-06-11');


    --Creating departaments

    INSERT INTO `departments` (`dept_no`, `dept_name`)
    VALUES 
    ('1', 'human_resources'), 
    ('2', 'administration'), 
    ('3', 'facturation');



    --10 employees belong to more than one department

    INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`)
    VALUES 
    ('1', '2', '2021-12-21', '2024-12-21'), 
    ('2', '1', '2006-10-22', '2012-10-22'), 
    ('3', '1', '2000-09-12', '2022-09-12'), 
    ('4', '3', '1986-09-09', '2000-09-09'), 
    ('5', '1', '2021-12-11', '2022-12-11'), 
    ('6', '1', '1999-06-11', '2015-06-11'), 
    ('7', '2', '1999-01-30', '2020-01-30'), 
    ('8', '1', '2001-05-12', '2018-05-12'), 
    ('9', '1', '2003-07-12', '2015-07-12'), 
    ('10', '1', '2021-07-21', '2045-07-21'), 
    ('11', '1', '1995-06-11', '2030-06-11'), 
    ('12', '1', '1986-12-22', '2032-12-22'), 
    ('13', '3', '2021-03-11', '2027-03-11'), 
    ('14', '1', '2001-08-11', '2030-08-11'), 
    ('15', '1', '2000-12-12', '2015-12-12'), 
    ('1', '1', '2022-12-21', '2030-12-21'), 
    ('2', '2', '2007-10-22', '2017-10-22'), 
    ('3', '2', '2003-09-12', '2021-09-12'), 
    ('4', '1', '1987-09-09', '2014-09-09'), 
    ('5', '2', '2022-12-11', '2026-12-11'), 
    ('6', '2', '2012-06-11', '2018-06-11'), 
    ('7', '1', '2013-01-30', '2019-01-30'), 
    ('8', '2', '2011-05-12', '2021-05-12'), 
    ('9', '3', '2003-07-12', '2019-07-12'), 
    ('10', '3', '2022-07-21', '2030-07-21');

    -- 5 employees are managers

        INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) 
        VALUES 
        ('14', '1', '2022-12-11', '2030-12-11'), 
        ('12', '2', '1987-12-22', '2000-12-22'), 
        ('15', '3', '2000-12-12', '2019-12-12'), 
        ('13', '1', '2022-03-11', '2038-03-11'), 
        ('11', '2', '2022-12-11', '2037-12-11');


    -- All employees have a degree and at least 5 titles are from 2020

        INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES 
        ('1', 'Data science', '2020-06-05', NULL), 
        ('2', 'Data science', '2020-07-07', NULL), 
        ('3', 'Data science', '2020-07-07', NULL), 
        ('4', 'Data science', '2020-03-07', NULL), 
        ('5', 'Machine learning', '2020-03-07', NULL), 
        ('6', 'Machine learning', '2020-08-07', NULL), 
        ('7', 'Machine learning', '1985-03-12', NULL), 
        ('8', 'Machine learning', '1996-08-24', NULL), 
        ('9', 'Machine learning', '2001-10-02', NULL), 
        ('10', 'Data science', '2004-11-03', NULL), 
        ('11', 'Business Management', '2007-02-02', NULL), 
        ('12', 'Business Management', '2016-07-05', NULL), 
        ('13', 'Business Management', '2019-01-15', NULL), 
        ('14', 'Business Management', '2002-04-08', NULL), 
        ('15', 'Business Management', '1985-03-05', NULL);


    -- At least 3 employees have the same name 

        --(I had already created 2 employees with the same name so I have updated one so that there are a total of 3)

        UPDATE `employees` SET `first_name` = 'Antonio' WHERE `employees`.`emp_no` = 1;






-- UPDATE DATA------------------------------------------------------------------------------------------------------------------------------------------

    --Change the name of an employee. To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.

        UPDATE employees 
        SET first_name='Pedro' 
        WHERE first_name='Paco' ,last_name='Gonzalez', birth_date='1993-06-02';


    -- Change the name of all departments.

        UPDATE departments SET dept_name ='administration-dept' WHERE dept_no = 2;
        UPDATE departments SET dept_name ='facturation-dept' WHERE dept_no = 1;
        UPDATE departments SET dept_name ='human-resources-dept' WHERE dept_no = 3;






-- GET DATA------------------------------------------------------------------------------------------------------------------------------------------

    -- Select all employees with a salary greater than 20,000, you must list all employees data and the salary.

        SELECT *
        FROM employees
        INNER JOIN salaries
        ON employees.emp_no = salaries.emp_no
        WHERE salary > 20000;



    -- Select all employees with a salary below 10,000, you must list all employees data and the salary.

        SELECT *
        FROM employees
        INNER JOIN salaries
        ON employees.emp_no = salaries.emp_no
        WHERE salary < 10000;



    -- Select all employees who have a salary between 14,000 and 50,000, you must list all employees data and the salary.

        SELECT *
        FROM employees
        INNER JOIN salaries
        ON employees.emp_no = salaries.emp_no
        WHERE salary BETWEEN 14000 AND 50000;



    -- Select the total number of employees

        SELECT COUNT(*) as total_employees FROM employees;



    -- Select the total number of employees who have worked in more than one department

        SELECT emp_no, COUNT(*) AS Number_of_departments_worked FROM dept_emp GROUP BY emp_no HAVING COUNT(*) > 1;



    -- Select the titles of the year 2020

        SELECT * FROM `titles` WHERE from_date > '2019-12-31';



    --Select the name of all employees with capital letters

        SELECT UPPER(first_name) FROM `employees`;



    -- Select the name, surname and name of the current department of each employee

        SELECT first_name, last_name, departments.dept_name 
        FROM employees 
        INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no 
        INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;



    -- Select the name, surname and number of times the employee has worked as a manager

        SELECT first_name, last_name, dept_manager.from_date, dept_manager.to_date 
        FROM employees 
        INNER JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;



    -- Select the name of employees without any being repeated

        SELECT DISTINCT first_name FROM employees;






-- DELETE DATA------------------------------------------------------------------------------------------------------------------------------------------

    -- Delete all employees with a salary greater than 20,000

        DELETE FROM salaries WHERE salary > 20000;



    --Remove the department that has more employees. (Let’s assume that only one department is returned in this query, as an extra you can try to write the query for deleting all departments in case there are more than one in the result)

        -- View num of employees for department
            
            SELECT dept_no, COUNT(*) AS employees_for_departments FROM dept_emp GROUP BY dept_no HAVING COUNT(*) > 1;

        -- Since we already know which department has the most employees, we delete it

            DELETE FROM departments WHERE dept_no = 1; 




-- DESIGN YOUR OWN DATABASE

    -- Create and use database

        CREATE DATABASE `shopping_cart` USE shopping_cart;
        
        
    -- Create tables
        CREATE TABLE `shopping_cart`.customers 
        (first_name VARCHAR(20) NOT NULL , 
        PRIMARY KEY (customer_id), 
        last_name VARCHAR(20) NOT NULL , 
        birth_day DATE NOT NULL , 
        email VARCHAR(40) NOT NULL , 
        gender ENUM('M','F') NOT NULL , 
        customer_id INT NOT NULL AUTO_INCREMENT);


        CREATE TABLE shopping_cart.orders 
        (quantity INT NOT NULL , 
        PRIMARY KEY (no_order), 
        no_order INT NOT NULL AUTO_INCREMENT, 
        customer_id INT NOT NULL, 
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
        ON DELETE CASCADE, id_article INT NOT NULL, 
        FOREIGN KEY (id_article) 
        REFERENCES article(id_article) 
        ON DELETE CASCADE);


        CREATE TABLE shopping_cart.article 
        (article_name VARCHAR(50) NOT NULL , 
        PRIMARY KEY (id_article), 
        id_article INT NOT NULL AUTO_INCREMENT);


        CREATE TABLE shopping_cart.pay_methods 
        (paypal VARCHAR(40) NOT NULL , 
        cards INT(50) NOT NULL , 
        id_pay_methods INT NOT NULL AUTO_INCREMENT, 
        PRIMARY KEY (id_pay_methods), 
        FOREIGN KEY (no_order) REFERENCES orders(no_order) ON DELETE CASCADE, 
        no_order INT NOT NULL, 
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id) ON DELETE CASCADE, 
        customer_id INT NOT NULL);


        CREATE TABLE shopping_cart.invoices 
        (PRIMARY KEY (invoice_no), invoice_no INT NOT NULL AUTO_INCREMENT, 
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id) 
        ON DELETE CASCADE, customer_id INT NOT NULL, 
        FOREIGN KEY (id_pay_methods) 
        REFERENCES pay_methods(id_pay_methods) 
        ON DELETE CASCADE, 
        id_pay_methods INT NOT NULL);