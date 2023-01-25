INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('1', '1980-12-12', 'Jonas', 'Torres', 'M', '2015-04-20');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('2', '1981-12-12', 'Marc', 'Rodriguez', 'M', '2020-02-12');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('3', '1982-12-12', 'Andreu', 'Tunez', 'M', '2010-12-09');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('4', '1983-12-12', 'Monica', 'Llobet', 'F', '2016-06-16');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('5', '1981-12-12', 'Maria', 'Marquez', 'F', '2012-04-12');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('6', '1985-12-12', 'Jesus', 'Garcia', 'M', '2014-02-14');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('7', '1982-12-12', 'Queralt', 'Martinez', 'F', '2018-07-28');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('8', '1983-12-12', 'Sergi', 'Lopez', 'M', '2021-10-24');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('9', '1980-12-12', 'Claudia', 'Sanchez', 'F', '2016-11-14');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('10', '1987-12-12', 'Pilar', 'Perez', 'F', '2015-05-01');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('11', '1986-12-12', 'Antonio', 'Ruiz', 'M', '2011-03-16');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('12', '1989-12-12', 'Daniel', 'Moreno', 'M', '2009-04-12');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('13', '1980-12-12', 'Javier', 'Navarro', 'M', '2022-11-04');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('14', '1981-12-12', 'Javier', 'Alvarez', 'M', '2020-09-10');
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) VALUES ('15', '1983-12-12', 'Javier', 'Pascual', 'M', '2021-06-17');

-- Con el Insert introduccimos todos los datos de los empleados en nuestra tabla.

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES  ('1', '35000', '2015-04-20', '2023-01-20'),
                                                                            ('1', '40000', '2023-01-21', '2024-01-21'),
                                                                            ('2', '30000', '2020-02-12', '2023-01-20'),
                                                                            ('2', '35000', '2023-01-21', '2024-01-21'),
                                                                            ('3', '34000', '2010-12-09', '2023-01-20'),
                                                                            ('3', '39000', '2023-01-21', '2024-01-21'),
                                                                            ('4', '31000', '2016-06-16', '2023-01-20'),
                                                                            ('4', '37000', '2023-01-21', '2024-01-21'),
                                                                            ('5', '35000', '2012-04-12', '2023-01-20'),
                                                                            ('5', '41000', '2023-01-21', '2024-01-21'),
                                                                            ('6', '41500', '2014-02-14', '2023-01-20'),
                                                                            ('7', '40500', '2018-07-28', '2023-01-20'),
                                                                            ('8', '38000', '2021-10-24', '2023-01-20'),
                                                                            ('9', '36000', '2016-11-14', '2023-01-20'),
                                                                            ('10', '45000', '2015-05-01', '2023-01-20'),
                                                                            ('11', '50000', '2011-03-16', '2023-01-20'),
                                                                            ('12', '47000', '2009-04-12', '2023-01-20'),
                                                                            ('13', '44000', '2022-11-04', '2023-01-20'),
                                                                            ('14', '47000', '2020-09-10', '2023-01-20'),
                                                                            ('15', '43000', '2021-06-17', '2023-01-20');

-- Con este Insert into añadimos a la tabla de salarios los salarios de cada empleados durante las fechas señaladas.

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES
('1', 'Administracion'), ('2', 'Jefatura'), ('3', 'Recepción');

-- Con este Insert into introducimos los diferentes departamentos.

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES

('1', '1', '2015-04-20', '2023-01-20'), ('1', '2', '2015-04-20', '2023-01-20');
('2', '1', '2020-02-12', '2023-01-20'), ('2', '2', '2020-02-12', '2023-01-20'),
('3', '1', '2010-12-09', '2023-01-20'), ('3', '2', '2010-12-09', '2023-01-20'),
('4', '1', '2016-06-16', '2023-01-20'), ('4', '2', '2016-06-16', '2023-01-20'),
('5', '1', '2012-04-12', '2023-01-20'), ('5', '2', '2012-04-12', '2023-01-20'),
('6', '1', '2014-02-14', '2023-01-20'), ('6', '2', '2014-02-14', '2023-01-20')
('7', '1', '2018-07-28', '2023-01-20'), ('7', '2', '2018-07-28', '2023-01-20'),
('8', '1', '2021-10-24', '2023-01-20'), ('8', '2', '2021-10-24', '2023-01-20'),
('9', '1', '2016-11-14', '2023-01-20'), ('9', '2', '2016-11-14', '2023-01-20'),
('10', '1', '2015-05-01', '2023-01-20'), ('10', '2', '2015-05-01', '2023-01-20'),
('11', '3', '2011-03-16', '2023-01-20'),
('12', '3', '2009-04-12', '2023-01-20'),
('13', '3', '2022-11-04', '2023-01-20'),
('14', '3', '2020-09-10', '2023-01-20'),
('15', '3', '2021-06-17', '2023-01-20');

-- Con este insert into añadimos los diferentes departamentos a cada empleado.

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES

('1', '1', '2022-06-20', '2023-01-20'),
('2', '1', '2022-06-20', '2023-01-20'),
('3', '2', '2022-01-24', '2023-01-20'),
('4', '2', '2022-01-24', '2023-01-20'),
('5', '1', '2022-06-20', '2023-01-20');

-- Con este insert into añadimos a los empleados los cargos a los que pertenecen en su departamento.

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES

('1', 'Grado en Ingeniería del Software', '2015-04-20', '2023-01-20'), ('1', 'Master en Assembler Institute of Technology', '2020-06-20', '2023-01-20'),
('2', 'Grado en Ingeniería del Software', '2020-02-12', '2023-01-20'), ('2', 'Master en Assembler Institute of Technology', '2020-06-20', '2023-01-20'),
('3', 'Grado en Ingeniería del Software', '2010-12-09', '2023-01-20'), ('3', 'Master en Assembler Institute of Technology', '2020-06-20', '2023-01-20'),
('4', 'Grado en Ingeniería del Software', '2016-06-16', '2023-01-20'), ('4', 'Master en Assembler Institute of Technology', '2020-06-20', '2023-01-20'),
('5', 'Grado en Ingeniería del Software', '2012-04-12', '2023-01-20'), ('5', 'Master en Assembler Institute of Technology', '2020-06-20', '2023-01-20'),
('6', 'Grado en Ingeniería del Software', '2014-02-14', '2023-01-20'),
('7', 'Grado en Ingeniería del Software', '2018-07-28', '2023-01-20'),
('8', 'Grado en Ingeniería del Software', '2021-10-24', '2023-01-20'),
('9', 'Grado en Ingeniería del Software', '2016-11-14', '2023-01-20'),
('10', 'Grado en Ingeniería del Software', '2015-05-01', '2023-01-20'),
('11', 'Grado en Ingeniería del Software', '2011-03-16', '2023-01-20'),
('12', 'Grado en Ingeniería del Software', '2009-04-12', '2023-01-20'),
('13', 'Grado en Ingeniería del Software', '2022-11-04', '2023-01-20'),
('14', 'Grado en Ingeniería del Software', '2020-09-10', '2023-01-20'),
('15', 'Grado en Ingeniería del Software', '2021-06-17', '2023-01-20');

-- Por ultimo hacemos Insert into para determinar la titulacion de cada empleado.

UPDATE employees SET first_name = 'Marcos', last_name = 'Buenafuente', birth_date = '1980-12-13' WHERE emp_no = 1;

-- Cambiamos el nomrbre, apellido y fecha de nacimiento del empleado.

UPDATE departments Set dept_name = 'Limpieza' WHERE dept_no = 1;
UPDATE departments Set dept_name = 'Caja' WHERE dept_no = 2;
UPDATE departments Set dept_name = 'Revisor' WHERE dept_no = 3;

-- Cambiamos los departamentos de trabajo.

SELECT salary > 20000, from_date FROM salaries;

-- Empleados por encima de los 20.000

SELECT salary < 10000, from_date FROM salaries;

-- Empleados pro debajo de los 10.000

SELECT salary, from_date FROM salaries WHERE salary >= 14000 AND salary <= 50000;

-- Empleados entre los 14.000 y los 50.000

SELECT emp_no FROM employees;

-- Seleccion de todos los trabajadores

SELECT emp_no, dept_no FROM dept_emp WHERE dept_no = 1 AND 2;

-- Empleados que trabajan en 2 departamentos

SELECT from_date FROM titles WHERE from_date LIKE '2020%';

-- Empleados con titulos a partir de 2020

SELECT * FROM employees WHERE first_name NOT LIKE '%[abcdefghijklmnopqrstuvwxyz]%';

-- Empleados que contengan una letra mayuscula

SELECT employees.first_name, employees.last_name, dept_emp.dept_no FROM employees LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no;

-- Seleccionamos el nombre y apellido de cada trabajador y su respectivo departamento.

SELECT employees.first_name, employees.last_name, dept_manager.dept_no FROM employees LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no;

-- Seleccion de nombre y apellido 

SELECT DISTINCT first_name FROM employees;

-- Seleccion de empleados con nombres que no se repiten

DELETE FROM salaries WHERE salary <= 20000;

-- Eliminamos los salarios inferior a 20.000

DELETE FROM dept_emp Where MAX(dept_no);


CREATE TABLE `sqlbasics`.`institute` (`Inst_name` VARCHAR(50) NOT NULL , `Inst_adress` VARCHAR(50) NOT NULL , `ID_inst` INT(10) NOT NULL AUTO_INCREMENT , PRIMARY KEY (`ID_inst`)) ENGINE = InnoDB;

CREATE TABLE `sqlbasics`.`teachers` (`ID_teacher` INT(10) NOT NULL AUTO_INCREMENT , `first_name_teacher` VARCHAR(50) NOT NULL , `last_name_teacher` VARCHAR(50) NOT NULL , `class_teacher` VARCHAR(50) NOT NULL , PRIMARY KEY (`last_name_teacher`, `ID_teacher`)) ENGINE = InnoDB;

CREATE TABLE `sqlbasics`.`student` (`ID_Student` INT(10) NOT NULL AUTO_INCREMENT, `first_name` VARCHAR(50) NULL , `last_name` VARCHAR(50) NOT NULL , `birth_date` DATE NOT NULL , `class_teacher` VARCHAR(50) NOT NULL PRIMARY KEY (`ID_Student`)) ENGINE = InnoDB;

CREATE TABLE `sqlbasics`.`class` (`ID_Class` INT(10) NOT NULL AUTO_INCREMENT, `course` VARCHAR(50) NULL , `class_number` INT(10) NOT NULL , PRIMARY KEY (`ID_Class`)) ENGINE = InnoDB;

CREATE TABLE `sqlbasics`.`student_class_relation` (`ID_Student` INT(10) NOT NULL AUTO_INCREMENT, `ID_Class` VARCHAR(50) NOT NULL ,FOREIGN KEY (`ID_Student`, `ID_Class`)) ENGINE = InnoDB;


-- En este conjunto de 5 tablas tenemos una relacion entre ellas.
-- La tabla de Institute con la de Teachers seria la relacion ONE-TO-ONE.
-- La tabla de teachers con la de Students seria la relacion ONE-TO-MANY.
-- Las tablas de Student, Class y Student_class_relation seria la relacion del MANY-TO-MANY.