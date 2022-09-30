-- INSERT DATA

-- Insertar al menos 15 empleados (las fechas no salen, porque usé fechas inventadas)
-- PRIMERA OPCIÓN: INDIVIDUAL
-- INSERT INTO + NOMRE DE LA TABLA + (COLUMNAS QUE CONTENGA LA TABLA, SEPARADAS POR COMAS) + VALUES + (DATOS SEPARADOS POR COMAS ,SEGUN COLUMNAS) + ;
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ('2006-01-97', 'Lucia', 'Ojeda', 'F', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("1997-25-05", 'Laura', 'Ojeda', 'F', "2000-01-02");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("2516-08-97", 'Sara', 'Ojeda', 'F', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("1527-01-98", 'Manuel', 'Ojeda', 'M', "0106-20-20");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("2222-01-08", 'Pedro', 'Ojeda', 'M', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("0512-85-97", 'Carlos', 'Ramos', 'M', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("0885-07-97", 'Aaron', 'Ojeda', 'M', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("2505-21-87", 'Helio', 'Cruz', 'M', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("1555-11-90", 'Marco', 'Santana', 'M', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("2525-01-85", 'Aura', 'Vega', 'F', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("3250-01-86", 'Marco', 'Ruiz', 'M', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("2505-11-97", 'Keila', 'Suarez', 'F', "1987-05-10");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("2509-01-88", 'Carlota', 'Gonzalez', 'F', "0102-20-00");
insert into employees (birth_date, first_name, last_name, gender, hire_date) values ("1514-05-97", 'Marco', 'Armas', 'M', "0102-20-00");

--SEGUNDA OPCIÓN. EN GRUPO
insert into employees (birth_date, first_name, last_name, gender, hire_date)
VALUES
    ('2006-01-97', 'Lucia', 'Ojeda', 'F', "0102-20-00"),
    ("1997-25-05", 'Laura', 'Ojeda', 'F', "2000-01-02"),
    ("2516-08-97", 'Sara', 'Ojeda', 'F', "0102-20-00"),
    ("1527-01-98", 'Manuel', 'Ojeda', 'M', "0106-20-20"),
    ("2222-01-08", 'Pedro', 'Ojeda', 'M', "0102-20-00"),
    ("0512-85-97", 'Carlos', 'Ramos', 'M', "0102-20-00"),
    ("0885-07-97", 'Aaron', 'Ojeda', 'M', "0102-20-00"),
    ("2505-21-87", 'Helio', 'Cruz', 'M', "0102-20-00"),
    ("1555-11-90", 'Marco', 'Santana', 'M', "0102-20-00"),
    ("2525-01-85", 'Aura', 'Vega', 'F', "0102-20-00"),
    ("3250-01-86", 'Marco', 'Ruiz', 'M', "0102-20-00"),
    ("2505-11-97", 'Keila', 'Suarez', 'F', "1987-05-10"),
    ("2509-01-88", 'Carlota', 'Gonzalez', 'F', "0102-20-00"),
    ("1514-05-97", 'Marco', 'Armas', 'M', "0102-20-00");


-- UPDATE DATA

-- cambiar el dato, pero de algo en concreto
-- UPDATE + TABLA + SET + EL CAMBIO INDICANDO COLUMNA + = + DÓNDE ES EL CAMBIO + CONCRETANDO + ;
update employees set first_name = "Mariaaaaaaa" where emp_no = 15 and first_name = "Maria" and last_name = "Armas" and birth_date = '2006-01-97';

--Cambiar el nombre de todos los departamentos
-- uno por uno:
-- UPDATE + TABLA + SET + CLUMNA + = + 'EL CAMBIO' + DONDE ESTÁ EL ID + ;
UPDATE departments SET dept_name = 'newFinanciero' where dept_no = 'fin';
UPDATE departments SET dept_name = 'newRecursos Humanos' where dept_no = 'RHu';
UPDATE departments SET dept_name = 'newMarketing' where dept_no = 'Mar';
UPDATE departments SET dept_name = 'newComercial' where dept_no = 'Com';
UPDATE departments SET dept_name = 'newOperaciones' where dept_no = 'Ope';
UPDATE departments SET dept_name = 'newGestión' where dept_no = 'Ges';
UPDATE departments SET dept_name = 'newVentas' where dept_no = 'Ven';
UPDATE departments SET dept_name = 'newDirección' where dept_no = 'Dir';
UPDATE departments SET dept_name = 'newLogistica' where dept_no = 'Log';


-- GET DATA

-- Seleccionar todos los empleados con salario superior a 20000
-- SELECT + LAS COLUMNAS QUE NOS QUEREMOS TRAER DE CADA TABLA + FROM + LA TABLA + LEFT JOIN + LA TABLA K VIENE
-- + ON + LACOLUMNA DE UNION ENTRE LAS DOS TABLAS + LA CONDICION --> WHERE + CONDICION + ;
select e.emp_no, e.first_name, s.salary from employees e left join salaries s on e.emp_no = s.emp_no where salary > 20000;
-- Seleccionar todos los empleados con salario inferior a 10000
select e.emp_no, e.first_name, s.salary from employees e left join salaries s on e.emp_no = s.emp_no where salary < 10000;
-- Seleccionar todos los empleados con salario entre 14000 y 50000
select e.emp_no, e.first_name, s.salary from employees e left join salaries s on e.emp_no = s.emp_no where salary between 14000 and 50000;

-- Seleccionar el numero total de empleados
-- SELECT +  LA COLUMNA QUE QUEREMOS MOSTRAR + FROM + TABLA;
select emp_no from employees;

-- Seleccionar el numero total de empleados que han trabajado en mas de un departamento
-- SELECT + COUNT(LA COLUMNA DE LOS DATOS QUE SE CUENTEN) + COLUMNA QUE MOSTRAREMOS + FROM + TABLA + GROUP BY + la columna que se agrupa ;
select count(dept_no) dept_name from departments group by dept_name;                                 --agrupado por

-- Seleccionar los titulos del 2020
-- Uso del % depende de su colocación
select * from titles where to_date like '2020%';

-- Marcar en mayúscula los nombres de los empleados:
--SELECT + UPPER--> INDICA MAYUSCULA, LOWER-->MINÚSCULA + (LA COLUMNA QUE SE MODIFICA) + LA COLUMNA QUE SE MUESTRA + FROM + TABLA + ;
select UPPER (first_name) first_name from employees;

--Seleccionar el nombre, apellido y el departamento actual
--primera opción:
-- = SELECCIONAR DE FORMA CRUZADA
select e.first_name, e.last_name, d.dept_no, g.dept_name from employees e inner join dept_emp d on e.emp_no = d.emp_no
inner join departments g on g.dept_no = d.emp_no;
--segunda: con as
select  emp.first_name, emp.last_name, dep.dept_name
from dept_emp as de
inner join employees as emp on de.emp_no = emp.emp_no
inner join departments as dep on de.dept_no = dep.dept_no;

--Seleccionar el nombre, apellidos y número de veces que ha trabajado como directivo
--SELECT + LAS TABLAS A MOSTRAR + COUNT(LA TABLA QUE MUESTRAEL CONTEO)
select dept_manager.emp_no, employees.first_name, employees.last_name, COUNT(dept_manager.emp_no)
FROM dept_manager --EN ESTA TABLA
INNER JOIN employees --UNE ESTA OTRA TABLA
ON employees.emp_no = dept_manager.emp_no -- SE UNEN POR AKI
GROUP BY emp_no --AGRUPADA EN ESTA COLUMNA
HAVING COUNT(dept_manager.emp_no); --QUE APAREZCA EL CONTEO DE ESTA TABLA EN ESTA COLUMNA

--Seleccionar el numero de empleados sin que se repita ninguno
-- SELECT + DISTINCT + COLUMNA + FROM + TABLA + ;
SELECT DISTINCT first_name FROM employees;

-- DELETE DATA

-- borrar a todos los empleados con salario superior a 20000
delete employees -- BORRA DE ESTA TABLA
from employees join salaries --DE LA UNION ENTRE ESTAS DOS TABLAS
on employees.emp_no = salaries.emp_no --UNIDAS POR AKI
where salaries.salary > 20000; --BORRA CUANDO DE LA TABLA ESTA, LA COLUMNA SEA SUPERIOR A 20000, EN ESTE CASO
-- borrar el departamento que tiene mas empleados

