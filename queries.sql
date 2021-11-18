-- INSERT DATA
    -- INSERT 15 Employees
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(2,'1992-04-20', 'Llucia', 'Gomez', 'F', '2020-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(3,'1982-04-26', 'Pepe', 'Gomez', 'M', '2015-04-26');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(4,'1990-06-20', 'Pepe', 'Alvarez', 'M', '2020-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(5,'1980-06-20', 'Pepe', 'Rodriguez', 'M', '2018-11-17')
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(6,'1981-06-20', 'Pepa', 'Rodriguez', 'F', '2015-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(7,'1975-06-20', 'Antonio', 'Rodriguez', 'F', '2012-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(8,'1976-06-20', 'Antonio', 'Copete', 'M', '2013-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(9,'1978-06-20', 'Pepa', 'Pig', 'F', '2014-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(10,'1979-06-20', 'Antonio', 'Molina', 'M', '2015-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(11,'1981-06-20', 'Jesucristo', 'Diosito', 'M', '2018-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(12,'1984-06-20', 'John', 'Cobra', 'M', '2020-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(13,'1985-06-20', 'Lola', 'Flores', 'F', '2019-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(14,'1986-06-20', 'Maria', 'Gomez', 'F', '2018-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(15,'1979-06-20', 'Maria', 'Alvarez', 'F', '2016-11-17');
    INSERT INTO employees(emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES(16,'1970-06-20', 'Maria', 'Jimenez', 'F', '2014-11-17');


    -- INSERT 20 salaries (5 employees have upgraded their salaries over the time)
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (2, 5000, '2020-11-17', '2021-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (3, 10000, '2015-04-26', '2015-10-26');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (4, 15000, '2020-11-17', '2021-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (5, 20000, '2018-11-17', '2019-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (6, 25000, '2015-11-17', '2018-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (7, 30000, '2012-11-17', '2018-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (8, 30000, '2015-11-17', '2018-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (9, 40000, '2018-11-17', '2020-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (10, 45000, '2015-11-17', '2017-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (11, 50000, '2018-11-17', '2020-05-17');

    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (12, 5000, '2020-11-17', '2021-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (12, 10000, '2021-05-17', '2021-11-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (13, 15000, '2019-05-17', '2020-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (13, 20000, '2020-05-17', '2021-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (14, 25000, '2018-05-17', '2019-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (14, 30000, '2019-05-17', '2020-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (15, 35000, '2016-05-17', '2018-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (15, 40000, '2018-05-17', '2020-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (16, 45000, '2015-05-17', '2017-05-17');
    INSERT INTO salaries (emp_no, salary, from_date, to_date) VALUES (16, 50000, '2017-05-17', '2020-05-17');


    -- INSERT 7 different departments
    INSERT INTO departments (dept_no, dept_name) VALUES 
    ('S', 'Sales'), 
    ('D', 'Development'), 
    ('M', 'Marketing'), 
    ('C', 'Communication'), 
    ('P', 'Publishment'), 
    ('HR', 'Human Resources'),
    ('A', 'Administration');


    -- INSERT employee's departments (10 employees work in 2 different departments)
    INSERT INTO dept_emp (emp_no, dept_no) VALUES 
    (2, 'S'),
    (2, 'D'),
    (3, 'S'),
    (3, 'D'),
    (4, 'S'),
    (4, 'D'),
    (5, 'S'),
    (5, 'D'),
    (6, 'S'),
    (6, 'D'),
    (7, 'S'),
    (7, 'C'),
    (8, 'S'),
    (8, 'C'),
    (9, 'S'),
    (9, 'C'),
    (10, 'S'),
    (10, 'C'),
    (11, 'S'),
    (11, 'C'),
    (12, 'P'),
    (13, 'HR'),
    (14, 'A'),
    (15, 'M'),
    (16, 'A');


    -- INSERT a manager for 5 departments
    INSERT INTO dept_manager (emp_no, dept_no) VALUES (2, 'S'), (12, 'P'), (13, 'HR'), (14, 'A'), (15, 'M');


    -- INSERT Degree titles for every employee (5 titles are from 2020)
    INSERT INTO titles (emp_no, title, from_date) VALUES 
    (2, 'Associate Degree in Administration of Justice', '2020-02-10'),
    (3, 'Associate Degree in Animal Management', '2020-03-02'),
    (4, 'Associate Degree in Architectural Building Engineering Technology', '2020-04-11'),
    (5, 'Associate Degree in Architecture and Career Options', '2020-05-12'),
    (6, 'Associate Degree in Art', '2020-06-04'),
    (7, 'Associate Degree in Automotive Maintenance Technology', '2018-04-14'),
    (8, 'Associate Degree in Aviation Mechanics', '2018-02-05'),
    (9, 'Associate Degree in Behavioral Science', '2018-03-07'),
    (10, 'Associate Degree in Boat Mechanics', '2018-08-07'),
    (11, 'Associate Degree in Boat Repair and Maintenance', '2015-11-08'),
    (12, 'Associate Degree in Cabinet Design Technology', '2015-12-01'),
    (13, 'Associate Degree in Child Development: Program Summary', '2015-11-02'),
    (14, 'Associate Degree in Christian Ministry', '2016-10-05'),
    (15, 'Associate Degree in Cosmetology Business', '2016-04-12'),
    (16, 'Associate Degree in Digital Media', '2016-02-14');


-- UPDATE DATA
    -- Update the name of a certain employee based on their name, surname and date of birth.
    UPDATE employees SET first_name = 'Lucia' WHERE (first_name = 'Llucia' AND last_name = 'Gomez' AND birth_date = '1992-04-20');


    -- Update the name of every department
    UPDATE departments SET dept_name = 'Admin' WHERE (dept_name = 'Administration');
    UPDATE departments SET dept_name = 'Comm' WHERE (dept_name = 'Communication');
    UPDATE departments SET dept_name = 'Dev' WHERE (dept_name = 'Development');
    UPDATE departments SET dept_name = 'HR' WHERE (dept_name = 'Human Resources');
    UPDATE departments SET dept_name = 'Mkt' WHERE (dept_name = 'Marketing');
    UPDATE departments SET dept_name = 'Publish' WHERE (dept_name = 'Publishment');
    UPDATE departments SET dept_name = 'Sal' WHERE (dept_name = 'Sales');


-- GET DATA
    -- Select all employees with a salary greater than 20,000
    SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary 
    FROM employees 
    INNER JOIN salaries 
    ON employees.emp_no = salaries.emp_no 
    AND salaries.salary >20000;

    -- Select all employees with a salary below 10,000
    SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary 
    FROM employees 
    INNER JOIN salaries 
    ON employees.emp_no = salaries.emp_no 
    AND salaries.salary <10000;

    -- Select all employees who have a salary between 14.00 and 50,000
    SELECT * FROM salaries WHERE salary BETWEEN 14000 AND 50000;

    -- Select the total number of employees
    SELECT employees.emp_no, employees.first_name, employees.last_name, salaries.salary 
    FROM employees 
    INNER JOIN salaries 
    ON employees.emp_no = salaries.emp_no 
    WHERE salaries.salary 
    BETWEEN 14000 
    AND 50000;

    -- Select the total number of employees who have worked in more than one department
    SELECT count(emp_no)-15 FROM dept_emp;

    -- Select the titles of the year 2019
    SELECT * FROM titles WHERE from_date BETWEEN '2019-01-01' AND '2019-12-31';

    -- Select only the name of the employees in capital letters
    SELECT UCASE(first_name) from employees;

    -- Select the name, surname and name of the current department of each employee
    SELECT first_name, last_name, departments.dept_name 
    FROM employees 
    JOIN current_dept_emp 
    ON employees.emp_no = current_dept_emp.emp_no 
    JOIN departments 
    ON current_dept_emp.dept_no = departments.dept_no 
    ORDER BY first_name, last_name DESC;

    -- Select the name, surname and number of times the employee has worked as a manager
    SELECT E.first_name, E.last_name, M.times_manager 
    FROM employees E 
    LEFT JOIN (
    SELECT emp_no, COUNT(*) AS times_manager 
    FROM dept_manager 
    GROUP BY emp_no
    ) M ON E.emp_no = M.emp_no
    WHERE times_manager IS NOT NULL;

    -- Select the name of employees without any being repeated
    SELECT DISTINCT first_name  FROM employees;



--DELETE DATA
    -- Eliminate all employees with a salary greater than 20,000
    DELETE FROM employees 
    WHERE emp_no IN 
    (SELECT employees.emp_no 
    FROM employees JOIN salaries 
    ON employees.emp_no = salaries.emp_no 
    WHERE salaries.salary > 20000);

    -- Remove the department that has more employees
    DELETE FROM departments 
    WHERE dept_no = (
    SELECT dept_no 
    FROM dept_emp 
    WHERE to_date >= CURDATE() 
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC 
    LIMIT 1
  );




