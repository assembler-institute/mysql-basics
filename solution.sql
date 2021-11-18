--INSERTS

--Insert at least 15 employees into the employees table.

INSERT INTO `employees`(`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) 
VALUES (1, '1993-09-06','Pedro','Jimenez','M','2014-12-08'), 
      (2, '1995-10-06','Juan','Perez','M','2010-12-08'), 
      (3, '1998-10-06','Guillermo','Avila','M','2018-12-08'), 
      (4, '1990-10-06','Juan','Gonzalez','M','2010-12-08'), 
      (5, '1995-10-06','Juan','Gutierrez','M','2010-12-08'), 
      (6, '1996-04-06','Tomás','Guazon','M','2019-12-08'), 
      (7, '1988-10-06','Santiago','Gutierrez','M','2000-12-08'), 
      (8, '1988-10-06','Eva','Peña','F','2008-12-08'), 
      (9, '1985-10-06','Luna','Gimenez','F','2001-05-08'), 
      (10, '1987-04-06','Ximena','Coral','F','2010-12-08'), 
      (11, '1980-04-06','Joaquina','Mirabal','F','2000-05-12'), 
      (12, '1997-04-06','Mary','Smith','F','2020-10-10'), 
      (13, '1999-04-06','Azucena','Mercado','F','2019-11-07'), 
      (14, '1991-02-06','Freya','Lund','F','2018-11-08'), 
      (15, '1993-07-03','Anders','Kvanheden','M','2013-12-08');


--Insert 15 salaries into the salaries table.

INSERT INTO `salaries`(`emp_no`, `salary`, `from_date`, `to_date`) VALUES 
(1, '5000','2014-12-08','2021-11-17'), 
(2, '35000','2010-12-08','2021-11-17'), 
(3, '40000','2018-12-08','2021-11-17'), 
(4, '10000','2010-12-08','2021-11-17'), 
(5, '22000','2010-12-08','2021-11-17'), 
(6, '10000','2019-12-08','2021-11-17'), 
(7, '5000','2000-12-08','2021-11-17'), 
(8, '10000','2008-12-08','2021-11-17'), 
(9, '10000','2001-05-08','2021-11-17'), 
(10, '44000','2010-12-08','2021-11-17'), 
(11, '10000','2000-05-12','2021-11-17'), 
(12, '10000','2020-10-10','2020-10-10'), 
(13, '5000','2019-11-07','2021-11-17'), 
(14, '50000','2018-11-08','2021-11-17'), 
(15, '7000','2013-12-08','2021-11-17');

--Insert 6 departments into the departments table.
INSERT INTO `departments`(`dept_no`, `dept_name`) VALUES 
(1,'Sales'), 
(2,'Marketing'), 
(3,'Human Resources'), 
(4,'Finance'), 
(5,'Production'), 
(6,'Research');

--Insert 15 employees into the dept_emp table where 10 employees belong to more than one department.
INSERT INTO `dept_emp`(`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES 
(1,1,'2014-12-08','2021-11-17'), 
(2,1,'2010-12-08','2021-11-17'), 
(3,1,'2018-12-08','2021-11-17'), 
(4,1,'2010-12-08','2021-11-17'), 
(5,1,'2010-12-08','2021-11-17'), 
(6,1,'2019-12-08','2021-11-17'), 
(7,1,'2000-12-08','2021-11-17'), 
(8,1,'2008-12-08','2021-11-17'), 
(9,1,'2001-05-08','2021-11-17'), 
(10,1,'2010-12-08','2021-11-17'), 
(11,1,'2000-05-12','2021-11-17'), 
(12,1,'2020-10-10','2020-10-10'), 
(13,1,'2019-11-07','2021-11-17'), 
(14,1,'2018-11-08','2021-11-17'), 
(15,1,'2013-12-08','2021-11-17'),
(6,4,'2019-12-08','2021-11-17'), 
(7,4,'2000-12-08','2021-11-17'), 
(8,4,'2008-12-08','2021-11-17'), 
(9,4,'2001-05-08','2021-11-17'), 
(10,4,'2010-12-08','2021-11-17'), 
(11,4,'2000-05-12','2021-11-17'), 
(12,4,'2020-10-10','2020-10-10'), 
(13,4,'2019-11-07','2021-11-17'), 
(14,4,'2018-11-08','2021-11-17'), 
(15,4,'2013-12-08','2021-11-17'),
(10,2,'2010-12-08','2021-11-17'), 
(11,2,'2000-05-12','2021-11-17'), 
(12,3,'2020-10-10','2020-10-10'), 
(13,3,'2019-11-07','2021-11-17'), 
(14,5,'2018-11-08','2021-11-17'), 
(15,5,'2013-12-08','2021-11-17'),
(6,5,'2019-12-08','2021-11-17'), 
(7,5,'2000-12-08','2021-11-17'),
(6,6,'2019-12-08','2021-11-17'), 
(7,6,'2000-12-08','2021-11-17');

--Insert 5 employees as managers into the dept_manager table.
INSERT INTO `dept_manager`(`dept_no`, `emp_no`, `from_date`, `to_date`) VALUES 
(1,1,'2014-12-08','2021-11-17'), 
(2,2,'2010-12-08','2021-11-17'), 
(3,3,'2018-12-08','2021-11-17'), 
(4,4,'2010-12-08','2021-11-17'), 
(5,5,'2010-12-08','2021-11-17'),
(6,1,'2014-12-08','2021-11-17');

--Insert 15 employees into the titles table whith at least 5 different titles.
INSERT INTO `titles`(`emp_no`, `title`, `from_date`, `to_date`) VALUES 
(1,'Sales Representative','2014-12-08','2021-11-17'), 
(2,'Sales Representative','2010-12-08','2021-11-17'), 
(3,'Sales Representative','2018-12-08','2021-11-17'), 
(4,'Sales Director','2010-12-08','2021-11-17'), 
(5,'Sales Representative','2010-12-08','2021-11-17'), 
(6,'Sales Representative','2019-12-08','2021-11-17'), 
(7,'Sales Representative','2000-12-08','2021-11-17'), 
(8,'Sales Representative','2008-12-08','2021-11-17'), 
(9,'Sales Representative','2001-05-08','2021-11-17'), 
(10,'Sales Associate','2010-12-08','2021-11-17'), 
(11,'Sales Representative','2000-05-12','2021-11-17'), 
(12,'Sales Representative','2020-10-10','2020-10-10'), 
(13,'Sales Associate','2019-11-07','2021-11-17'), 
(14,'Sales Representative','2018-11-08','2021-11-17'), 
(15,'Sales Representative','2013-12-08','2021-11-17'),
(1,'Sales Manager','2014-12-08','2021-11-17'), 
(2,'Sales Manager','2010-12-08','2021-11-17'), 
(3,'Sales Manager','2018-12-08','2021-11-17'), 
(4,'Sales Manager','2010-12-08','2021-11-17'), 
(5,'Sales Manager','2010-12-08','2021-11-17');

--UPDATES
UPDATE `employees` SET `first_name` = 'Yuniesky' WHERE `first_name`='Santiago' AND `last_name`='Gutierrez' AND `birth_date`='1988-10-06';

-- DECLARE @Counter INT
-- SET @Counter=1
-- WHILE (@Counter <=6)
-- BEGIN
-- UPDATE departments SET dept_name='dep' WHERE dept_no=@Counter
-- SET @Counter = @Counter + 1
-- END;

--Loop through the departments and update the department name to 'dep'
UPDATE departments SET dept_name = 'dp_01' WHERE dept_no = 1;
UPDATE departments SET dept_name = 'dp_02' WHERE dept_no = 2 ORDER BY despt_no;
UPDATE departments SET dept_name = 'dp_03' WHERE dept_no = 3;
UPDATE departments SET dept_name = 'dp_04' WHERE dept_no = 4;
UPDATE departments SET dept_name = 'dp_05' WHERE dept_no = 5;
UPDATE departments SET dept_name = 'dp_06' WHERE dept_no = 6;

--GET
1-SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Fullname, salaries.salary FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary > 20000;
2-SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Fullname, salaries.salary FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary < 10000;
3-SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS Fullname, salaries.salary FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary BETWEEN 14000 AND 50000;
4-SELECT COUNT(emp_no) AS Company_Size FROM employees;
5-CREATE VIEW rotation_frecuency_dpt AS SELECT emp_no, COUNT(dept_no) AS work FROM dept_emp GROUP BY emp_no;
SELECT COUNT(emp_no) FROM rotation_frecuency_dpt WHERE work>1;
6-SELECT title FROM titles WHERE from_date BETWEEN '2019-01-01' AND '2019-12-31';
7-SELECT UCASE(first_name) from employees;
8-SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS fullname, departments.dept_name FROM dept_emp INNER JOIN employees ON employees.emp_no=dept_emp.emp_no INNER JOIN departments ON departments.dept_no=dept_emp.dept_no WHERE dept_emp.to_date='2021-11-17';
9-CREATE VIEW head_dpt_freq AS SELECT emp_no, COUNT(emp_no) AS BOSSY FROM dept_manager GROUP BY emp_no;
SELECT head_dpt_freq.BOSSY, CONCAT(employees.first_name, ' ', employees.last_name) AS Fullname FROM employees INNER JOIN head_dpt_freq ON head_dpt_freq.emp_no=employees.emp_no;
10-VIEW rotation_frecuency_dpt AS SELECT emp_no, COUNT(dept_no) AS work FROM dept_emp GROUP BY emp_no;
SELECT employees.first_name, employees.last_name FROM employees INNER JOIN rotation_frecuency_dpt ON rotation_frecuency_dpt.emp_no=employees.emp_no WHERE rotation_frecuency_dpt.work=1;

--DELETE
1-DELETE FROM employees WHERE emp_no IN(SELECT employees.emp_no FROM employees INNER JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary > 20000);
2-DELETE FROM departments WHERE dept_no=(SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY COUNT(emp_no) DESC LIMIT 1);

