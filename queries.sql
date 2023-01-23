
-- Insert Data

INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('1', '1980-01-1', 'David', 'Sanchez', 'M', '2020-12-21');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('2', '1981-02-2', 'David', 'Gomez', 'M', '2022-11-21');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('3', '1982-03-3', 'David', 'Martinez', 'M', '2019-10-10');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('4', '1983-04-4', 'Jana', 'Rovira', 'F', '2018-09-22');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('5', '1984-05-5', 'Nil', 'Masana', 'M', '2020-08-04');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('6', '1985-06-6', 'Abril', 'Reverté', 'F', '2022-07-03');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('7', '1986-07-7', 'Aleix', 'Romero', 'M', '2019-12-20');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('8', '1987-08-8', 'Eloi', 'Vicente', 'M', '2018-11-14');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('9', '1988-09-9', 'Carla', 'Casabayó', 'F', '2017-10-24');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('10', '1989-10-10', 'Asia', 'Madorell', 'F', '2021-08-07');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('11', '1990-11-11', 'Monica', 'Riatós', 'F', '2021-06-05');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('12', '1981-12-12', 'Sergi', 'Mosquera', 'M', '2022-04-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('13', '1992-01-13', 'Siena', 'Manuel', 'F', '2022-02-12');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('14', '1993-02-14', 'Cris', 'Moreno', 'F', '2019-01-17');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('15', '1994-03-15', 'Marti', 'Palomas', 'M', '2018-07-21');

-- Salaries

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('1', '5000', '2020-12-21', '2021-12-21');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('2', '10000', '2022-11-21', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('3', '12000', '2019-10-10', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('4', '5000', '2018-09-22', '2020-09-22');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('5', '5000', '2020-08-04', '2021-08-04');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('6', '5000', '2022-07-03', '2022-12-03');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('7', '5000', '2019-12-20', '2020-12-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('8', '10000', '2018-11-14', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('9', '10000', '2017-10-24', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('10', '15000', '2021-08-07', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('11', '15000', '2021-06-05', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('12', '10000', '2022-04-01', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('13', '15000', '2022-02-12', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('14', '12000', '2019-01-17', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('15', '7000', '2018-07-21', '2023-01-20');

-- Two Salaries

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('1', '10000', '2021-12-21', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('4', '10000', '2020-09-22', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('5', '10000', '2021-08-04', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('6', '10000', '2022-12-03', '2023-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('7', '10000', '2020-12-20', '2023-01-20');

-- Department

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('1', 'Comercial');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('2', 'Admin');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('3', 'Manager');
INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('4', 'Jefatura');

-- Departaments Employee

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '1', '2020-12-21', '2023-01-20'), ('1', '4', '2020-12-21', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('2', '2', '2022-11-21', '2023-01-20'), ('2', '4', '2022-11-21', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('3', '3', '2019-10-10', '2023-01-20'), ('3', '4', '2019-10-10', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('4', '1', '2018-09-22', '2023-01-20'), ('4', '4', '2018-09-22', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '2', '2020-08-04', '2023-01-20'), ('5', '4', '2020-08-04', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('6', '3', '2022-07-03', '2023-01-20'), ('6', '1', '2022-07-03', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('7', '3', '2019-12-20', '2023-01-20'), ('7', '1', '2019-12-20', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('8', '1', '2018-11-14', '2023-01-20'), ('8', '2', '2018-11-14', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('9', '1', '2017-10-24', '2023-01-20'), ('9', '2', '2017-10-24', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('10', '1', '2021-08-07', '2023-01-20'), ('10', '2', '2021-08-07', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('11', '3', '2021-06-05', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('12', '3', '2022-04-01', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('13', '3', '2022-02-12', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('14', '3', '2019-01-17', '2023-01-20');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('15', '1', '2018-07-21', '2023-01-20');

--Managers

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('6', '3', '2022-07-03', '2023-01-20');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('11', '3', '2021-06-05', '2023-01-20');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('7', '3', '2019-12-20', '2023-01-20');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '4', '2020-08-04', '2023-01-20');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('9', '2', '2017-10-24', '2023-01-20');

--Title

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('1', 'Comunicació Audiovisual', '2016-12-21', '2020-12-21');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('2', 'Comunicació Audiovisual', '2018-11-21', '2022-11-21');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('3', 'Comunicació Audiovisual', '2015-10-10', '2019-10-10');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('4', 'Comunicació Audiovisual', '2012-09-22', '2018-09-22');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('5', 'Comunicació Audiovisual', '2016-08-04', '2020-08-04');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('6', 'Comunicació Audiovisual', '2018-07-03', '2022-07-03');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('7', 'Comunicació Audiovisual', '2015-12-20', '2019-12-20');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('8', 'Comunicació Audiovisual', '2014-06-01', '2018-11-14');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('9', 'Comunicació Audiovisual', '2013-11-14', '2017-10-24');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('10', 'Comunicació Audiovisual', '2017-08-07', '2021-08-07');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('11', 'Comunicació Audiovisual', '2020-06-01', '2023-01-20');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('12', 'Comunicació Audiovisual', '2020-06-01', '2023-01-20');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('13', 'Comunicació Audiovisual', '2020-06-01', '2023-01-20');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('14', 'Comunicació Audiovisual', '2020-06-01', '2023-01-20');
INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('15', 'Comunicació Audiovisual', '2020-06-01', '2023-01-20');


--Update change a name

UPDATE employees SET first_name = 'Joan' WHERE emp_no = 1;

UPDATE employees SET first_name = 'Aran', last_name = 'Sil', birth_date = '2022-11-22' WHERE emp_no = 2;

--Update department

UPDATE departments SET dept_name = 'Limpieza' WHERE dept_no = 1;
UPDATE departments SET dept_name = 'Recepcion' WHERE dept_no = 2;
UPDATE departments SET dept_name = 'Oficinas' WHERE dept_no = 3;
UPDATE departments SET dept_name = 'Control' WHERE dept_no = 4;

--Get data

    -- more than 20000

SELECT salary > 20000, from_date FROM salaries;

    -- less than 10000

SELECT salary < 10000, from_date FROM salaries;

    -- Between 14000 and 50000

SELECT salary, from_date FROM salaries WHERE (salary > 14000) OR (salary < 50000);

    -- Number of employees

SELECT emp_no FROM employees;

    -- Empoyees more than one department

SELECT emp_no, dept_no FROM dept_emp WHERE dept_no = 1 AND 2;

    -- Titles from 2020

SELECT * FROM titles WHERE from_date LIKE '2020%';

    -- Capital Letters

SELECT UCASE (first_name) FROM employees;


    -- Employees department

SELECT employees.first_name, employees.last_name, dept_emp.dept_no FROM employees LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no;

    -- Manager employees

SELECT employees.first_name, employees.last_name, dept_manager.dept_no FROM employees LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

    -- Select the name of employees without any being repeated

SELECT DISTINCT first_name from employees;


--Delete data

DELETE FROM salaries WHERE salary > 20000;

-- Delete more employees

DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp WHERE to_date >= CURDATE() GROUP BY dept_no ORDER BY COUNT(DISTINCT emp_no) DESC LIMIT 1);










