Use employees;
-- 1.4.1 INSERT DATA-------------------------------------------------

-- employees
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(1, '2003/07/09', 'Raquel', 'Garcia Leon', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(2, '2001/07/17', 'Daniel', 'Villena Wilson', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(3, '1962/01/30', 'Jose', 'Villena Rojas', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(4, '1962/02/13', 'Janet Margaret', 'Wilson Perera', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(5, '1987/11/05', 'Michael', 'Villena Wilson', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(6, '2004/07/08', 'Lola', 'Benitez Lopez', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(7, '1989/06/11', 'Alba', 'Benitez Rodriguez', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(8, '1980/04/09', 'Sebastian', 'Villena Perez', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(9, '2003/07/09', 'Sebastian', 'Perez Perez', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(10, '1950/07/09', 'Sebastian', 'Perez Garcia', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(11, '1961/06/07', 'Maria Dolores', ' Leon Pizarro', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(12, '1999/06/13', 'Maria Del Carmen', 'Garcia Leon', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(13, '1998/12/23', 'Meritxell', 'Delgado Villena', 'F', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(14, '1892/12/04', 'Francisco', 'Franco Bahamondeh', 'M', now());
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
values(15, '1883/07/29', 'Benito Amilcare', 'Andrea Mussolini ', 'M', now());

-- salaries


INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(1, 10000,'2020/01/10','2022/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(1, 14000,'2022/01/10','2028/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(2, 24000,'2020/01/10','2021/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(2, 48000,'2021/01/10','2024/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(3, 14000,'1980/01/10','1995/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(3, 20000,'1995/01/10','2024/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(4, 5000,'1981/01/10','1996/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(4, 7500,'1996/01/10','2005/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(5, 12000,'2005/01/10','2017/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(5, 18000,'2017/01/10','2025/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(6, 6000, '2021/02/10', '2028/02/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(7, 47000,'2007/01/10','2028/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(8, 45000,'1999/01/10','2028/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(9, 6000,'2020/02/10','2028/02/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(10, 15000,'1985/01/10','2001/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(11, 9000,'1982/01/10','1992/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(12, 5500, '2023/01/10','2040/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(13, 11000, '2022/02/10','2030/02/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(14, 50000 ,'1900/01/10','1950/01/10');
INSERT INTO salaries (emp_no, salary, from_date, to_date)
values(15, 50000, '1915/01/10','1960/01/10');

--titles

INSERT INTO titles (emp_no, title, from_date, to_date)
values(1, "TCAE", '2020/02/10','2024/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(2, "Ingenieria De Software", '2020/01/10','2024/01/10'); 
INSERT INTO titles (emp_no, title, from_date, to_date)
values(3, "Jardineria", '2020/03/10','2024/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(4, "Limpiadora" , '2020/04/10','2024/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(5, "Farmaceutico", '2020/05/10','2024/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(6, "Chatarrero", '2021/01/10','2021/01/15');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(7, "Ingenieria Industrial", '2007/01/10','2012/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(8, "Guardia Civil", '1999/01/10','2001/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(9, "Camarero", '2019/02/10','2019/03/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(10, "Policia Local", '1983/01/10','1985/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(11, "Contabilidad", '1982/01/10','1986/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(12, "Cenador", '2022/9/10','2023/01/23');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(13, "Socorrista", '2018/02/10','2018/05/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(14, "Dictador", '1900/01/10','1902/01/10');
INSERT INTO titles (emp_no, title, from_date, to_date)
values(15, "Militar", '1915/01/10','1917/01/10');

--departments

INSERT INTO departments (dept_no, dept_name)
values("DP1", "departamento_1");
INSERT INTO departments (dept_no, dept_name)
values("DP2", "departamento_2");
INSERT INTO departments (dept_no, dept_name)
values("DP3", "departamento_3");
INSERT INTO departments (dept_no, dept_name)
values("DP4", "departamento_4");
INSERT INTO departments (dept_no, dept_name)
values("DP5", "departamento_5");
INSERT INTO departments (dept_no, dept_name)
values("DP6", "departamento_6");
INSERT INTO departments (dept_no, dept_name)
values("DP7", "departamento_7");
INSERT INTO departments (dept_no, dept_name)
values("DP8", "departamento_8");
INSERT INTO departments (dept_no, dept_name)
values("DP9", "departamento_9");
INSERT INTO departments (dept_no, dept_name)
values("DP10", "departamento_10");
INSERT INTO departments (dept_no, dept_name)
values("DP11", "departamento_11");
INSERT INTO departments (dept_no, dept_name)
values("DP12", "departamento_12");
INSERT INTO departments (dept_no, dept_name)
values("DP13", "departamento_13");
INSERT INTO departments (dept_no, dept_name)
values("DP14", "departamento_14");
INSERT INTO departments (dept_no, dept_name)
values("DP15", "departamento_15");

--dept_manager

INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP1", 1,'2022/01/10','2028/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP2", 2,'2022/01/10','2028/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP3", 3,'1995/01/10','2024/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP2", 3,'1997/01/10','1995/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP4", 4,'1996/01/10','2005/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP5", 4,'1994/01/10','1996/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP5", 5,'2017/01/10','2025/01/10');
INSERT INTO dept_manager (dept_no, emp_no, from_date, to_date)
values("DP1", 5,'2015/01/10','2017/01/10');

--dept_emp

INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP6", 6,'2021/02/10', '2028/02/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP3", 6,'2019/02/10', '2021/02/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP7", 7,'2007/01/10','2028/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP6", 7,'2005/01/10','2007/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP8", 8,'1999/01/10','2028/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP7", 8,'1997/01/10','1999/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP9", 9,'2020/02/10','2028/02/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP8", 9,'2018/02/10','2020/02/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP10", 10,'1985/01/10','2001/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP9", 10,'1983/01/10','1985/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP11", 11,'1982/01/10','1992/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP12", 12,'2023/01/10','2040/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP13", 13,'2022/02/10','2030/02/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP14", 14,'1900/01/10','1950/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP15", 14,'1898/01/10','1900/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP15", 15,'1915/01/10','1960/01/10');
INSERT INTO dept_emp (dept_no, emp_no, from_date, to_date)
values("DP14", 15,'1960/01/10','1962/01/10');

-- 1.4.2 UPDATE DATA-------------------------------------------------

-- Change the name of an employee. 
--To do this, generate a query that affects only a certain employee based on their name, surname and date of birth.
birth_date, first_name, last_name

UPDATE employees SET first_name = "Juana" WHERE birth_date = "2004/07/08";
UPDATE employees SET first_name = "Juana2" WHERE first_name = "Juana";
UPDATE employees SET first_name = "Juana" WHERE last_name = "Benitez Lopez";

--Change the name of all departments.

UPDATE departments SET dept_name = "departament_1" WHERE dept_no = 1;
UPDATE departments SET dept_name = "departament_2" WHERE dept_no = 2;
UPDATE departments SET dept_name = "departament_3" WHERE dept_no = 3;
UPDATE departments SET dept_name = "departament_4" WHERE dept_no = 4;
UPDATE departments SET dept_name = "departament_5" WHERE dept_no = 5;
UPDATE departments SET dept_name = "departament_6" WHERE dept_no = 6;
UPDATE departments SET dept_name = "departament_7" WHERE dept_no = 7;
UPDATE departments SET dept_name = "departament_8" WHERE dept_no = 8;
UPDATE departments SET dept_name = "departament_9" WHERE dept_no = 9;
UPDATE departments SET dept_name = "departament_10" WHERE dept_no = 10;
UPDATE departments SET dept_name = "departament_11" WHERE dept_no = 11;
UPDATE departments SET dept_name = "departament_12" WHERE dept_no = 12;
UPDATE departments SET dept_name = "departament_13" WHERE dept_no = 13;
UPDATE departments SET dept_name = "departament_14" WHERE dept_no = 14;
UPDATE departments SET dept_name = "departament_15" WHERE dept_no = 15;

-- 1.4.3 GET DATA-------------------------------------------------

--Select all employees with a salary greater than 20,000, 
--you must list all employees data and the salary.

SELECT em.*, sa.salary 
FROM employees em LEFT JOIN salaries sa ON em.emp_no = sa.emp_no 
WHERE sa.salary > 20000;

--Select all employees with a salary below 10,000,
--you must list all employees data and the salary.

SELECT em.*, sa.salary 
FROM employees em LEFT JOIN salaries sa ON em.emp_no = sa.emp_no 
WHERE sa.salary < 10000;

--Select all employees who have a salary between 14,000 and 50,000, 
--you must list all employees data and the salary.

SELECT em.*, sa.salary 
FROM employees em LEFT JOIN salaries sa ON em.emp_no = sa.emp_no 
WHERE sa.salary BETWEEN 14000 and 50000;

--Select the total number of employees.

SELECT COUNT(emp_no) "Nº Empleados" FROM employees;

--Select the total number of employees who have worked in more than one department.
SELECT (
(SELECT COUNT(*) AS empleados
FROM ( SELECT dept_emp.emp_no
      FROM dept_emp
      GROUP BY dept_emp.emp_no
      HAVING COUNT(dept_emp.emp_no) > 1
     ) AS t)
+
(SELECT COUNT(*) AS manager
FROM ( SELECT dept_manager.emp_no
      FROM dept_manager
      GROUP BY dept_manager.emp_no
      HAVING COUNT(dept_manager.emp_no) > 1
     ) AS t));



-- SELECT COUNT(*)
-- FROM (
--         SELECT emp_no, COUNT(*) AS CNT
--         FROM dept_emp
--         GROUP BY emp_no
--     ) AS T
-- WHERE CNT > 1;
--------------------
SELECT COUNT(*) AS em
FROM ( SELECT dept_emp.emp_no
      FROM dept_emp (
            SELECT dept_manager.emp_no
            FROM dept_manager
            GROUP BY dept_manager.emp_no
            HAVING COUNT(dept_manager.emp_no) > 1
            ) AS p;
      GROUP BY dept_emp.emp_no
      HAVING COUNT(dept_emp.emp_no) > 1
     ) AS t;

--Select the titles of the year 2020
SELECT *
FROM titles
WHERE from_date LIKE "2020%";

--Select the name of all employees with capital letters

SELECT UPPER(first_name)
FROM employees;

--Select the name, surname and name of the current department of each employee

SELECT abc.first_name, abc.last_name, de.dept_name
FROM  (
      SELECT first_name, last_name, dept_no FROM employees em
      INNER JOIN dept_emp emp ON em.emp_no = emp.emp_no
      ) AS abc
INNER JOIN departments de ON abc.dept_no= de.dept_no;

--Select the name, surname and number of times the employee has worked as a manager

SELECT employees.first_name, employees.last_name, COUNT(employees.emp_no)"Nº de veces trabajado"
FROM employees
INNER JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
GROUP BY employees.emp_no;

--Select the name of employees without any being repeated

SELECT DISTINCT(first_name)
FROM employees;

-- 1.4.4 DELETE DATA-------------------------------------------------

--Delete all employees with a salary greater than 20,000

-- DELETE 
-- FROM  (
--       SELECT * FROM employees em
--       LEFT JOIN salaries sa ON sa.emp_no = em.emp_no
--       ) AS Q
-- WHERE sa.salary > 20000;

DELETE employees FROM employees
LEFT JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE salaries.salary > 20000;

--Remove the department that has the most employees.

DELETE departments
FROM departments
WHERE dept_no = (
      SELECT dept_no FROM dept_emp
      GROUP BY dept_no
      ORDER BY COUNT(dept_no) desc
      LIMIT 1);

---------------------------------------------

--CREATE DATABASE
DROP DATABASE IF EXISTS cinema;
CREATE DATABASE IF NOT EXISTS cinema;
USE cinema;

CREATE TABLE clientes (
      id_cliente INT NOT NULL AUTO_INCREMENT,
      nombre_cliente VARCHAR(20) NOT NULL,
      PRIMARY KEY (id_cliente)
);

CREATE TABLE tarjetas_socio (
      id_tarjeta INT NOT NULL AUTO_INCREMENT,
      id_cliente INT NOT NULL,
      nombre_bono VARCHAR(20) NOT NULL,
      PRIMARY KEY (id_tarjeta),
      FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente) ON DELETE CASCADE
);

CREATE TABLE salas (
      id_sala INT NOT NULL AUTO_INCREMENT,
      nombre_sala VARCHAR(20) NOT NULL,
      PRIMARY KEY (id_sala)
);

CREATE TABLE peliculas (
      id_pelicula INT NOT NULL AUTO_INCREMENT,
      id_sala INT NOT NULL,
      id_cliente INT NOT NULL,
      nombre_pelicula VARCHAR(20) NOT NULL,
      PRIMARY KEY (id_pelicula),
      FOREIGN KEY (id_sala) REFERENCES salas (id_sala) ON DELETE CASCADE,
      FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente) ON DELETE CASCADE
);

CREATE TABLE producto_comida (
      id_producto_comida INT NOT NULL AUTO_INCREMENT,
      id_cliente INT NOT NULL,
      precio FLOAT(5) NOT NULL,
      PRIMARY KEY (id_producto_comida)
);

CREATE TABLE comprar_comida (
      id_producto_comida INT NOT NULL AUTO_INCREMENT,
      id_cliente INT NOT NULL,
      PRIMARY KEY (id_cliente),
      UNIQUE KEY (id_producto_comida),
      FOREIGN KEY (id_cliente) REFERENCES clientes (id_cliente) ON DELETE CASCADE,
      FOREIGN KEY (id_producto_comida) REFERENCES producto_comida (id_producto_comida) ON DELETE CASCADE
);


-- ONE TO ONE tarjetas_socio con clientes
-- ONE TO MANY salas con peliculas
-- MANY TO MANY producto_comida con clientes



