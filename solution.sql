--SQL queries

--database employees

--INSERT DATA

--table employees:

--insert 15 employees

--insert a single row

INSERT INTO
employees(emp_no, birth_date, first_name, last_name, gender, hire_date) --podem obviar aquesta part i t 'ho agafa per posició si les omplim totes
values(1, '1920-01-01', 'Marc', 'Ital', 'M', '2010-12-31');

--insert multiple employees

INSERT INTO
employees(emp_no, birth_date, first_name, last_name, gender, hire_date) --si els deixem buits peta per la posició, podem posar empty strings o valors incorrectes segons format els intenta traduir al tipus de dada que espera
values
    (2, '2000-06-01', 'Maria', 'Serra', 'F', '2010-08-01'),
    (3, '1997-03-02', 'Josep', 'Pascual', 'M', '2010-12-12'),
    (4, '1985-01-02', 'Julia', 'Grau', 'F', '2011-03-27'),
    (5, '1985-11-04', 'Arnau', 'Barnils', 'M', '2011-03-27'),
    (6, '1984-02-05', 'Anna', 'Puig', 'F', '2011-07-01'),
    (7, '1992-04-06', 'Gerard', 'Arque', 'M', '2011-02-01'),
    (8, '1985-10-07', 'Celia', 'Nolla', 'F', '2011-09-01'),
    (9, '1983-07-08', 'Adrià', 'Gasull', 'M', '2012-11-11'), --error 20012 resolt amb un update employees set hire_date where emp_no = 9(10, '1990-08-09', 'Diana', 'Cebrià', 'F', '2015-05-16'),
    (10, '1990-08-09', 'Diana','Cebrià', 'F', '2015-05-16'), --ull ho tenia a la BBDD i aqui no
    (11, '1989-09-10', 'Manel', 'Solé', 'M', '2015-10-20'),
    (12, '1981-05-15', 'Caludia', 'Corberó', 'F', '2015-04-22'),
    (13, '1981-12-08', 'Pol', 'Antràs', 'M', '2010-12-31'),
    (14, '1995-07-03', 'Xoni', 'Castefa', 'F', '2019-06-03'),
    (15, '1980-09-23', 'Ignasi', 'Glueck', 'M', '2021-09-29');

--insert 3 employees with the same name

    (16, '2000-12-08', 'Maria', 'Ital', 'F', '2021-11-15'),
    (17, '2000-07-03', 'Josep', 'Ital', 'M', '2021-11-15'),
    (18, '2001-09-23', 'Julia', 'Ital', 'F', '2021-11-15');

--table salaries:

    INSERT INTO
salaries(emp_no, salary, from_date, to_date)
values
    (1, 30000, '2010-12-31', now()),
    (2, 50000, '2010-08-01', now()),
    (3, 20500, '2010-12-12', '2019-01-01'),
    (3, 5000, '2019-01-02', now()),
    (4, 28000, '2011-03-27', now()),
    (5, 5001, '2011-03-27', now()),
    (6, 8000, '2011-07-01', now()),
    (7, 18000, '2011-02-01', '2021-01-01'),
    (7, 28333.55, '2021-01-02', now()),
    (8, 35000, '2011-09-01', '2017-01-01'),
    (8, 39000, '2017-01-02', now()),
    (9, 44400, '2012-11-11', now()),
    (10, 21900, '2015-05-16', now()),
    (11, 38000, '2015-04-22', '2016-01-01'),
    (11, 46575, '2016-01-02', now()),
    (12, 15300, '2015-04-22', now()),
    (13, 40000, '2010-12-31', now()),
    (14, 12100, '2019-06-03', now()),
    (15, 31000, '2021-09-29', '2021-09-30'),
    (15, 49999.99, '2021-10-01', now()); --arreglat estava malament el format de la data

-- dia 18.11.21 he fet insert into salaries values (18, 50000, '2021-15-11', curdate()); la data malament MM mes he posat 15

--table departments:

    INSERT INTO
departments
values
    ('01', 'Finance'),
    ('02', 'R+D+i'),
    ('03', 'Sales'),
    ('04', 'IT'),
    ('04b', 'Logistics');

--table dept_manager:

    INSERT INTO
dept_manager
values
    (1, '01', '2020-03-01', now()),
    (2, '02', '2010-08-01', now()),
    (3, '03', '2020-01-02', now()),
    (4, '04', '2011-03-27', now()),
    (5, '04b', '2020-01-02', now()),
    (1, '03', '2010-12-31', '2020-01-01');
    

--table dept_emp:

    INSERT INTO
dept_emp(emp_no, dept_no, from_date, to_date)
values
    (1, '03', '2010-12-31', '2020-02-28'),
    (1, '01', '2020-03-01', now()),
    (2, '02', '2010-08-01', now()),
    (3, '03', '2018-12-12', now()),
    (4, '04', '2011-03-27', now()),
    (5, '01', '2011-03-27', '2020-01-01'),
    (5, '04b', '2020-01-02', now()),
    (6, '01', '2011-07-01', '2012-09-30'),
    (6, '04b', '2012-10-01', now()),
    (7, '02', '2011-02-01', now()),
    (8, '03', '2011-09-01', '2015-09-10'),
    (8, '02', '2015-09-11', now()),
    (9, '02', '2012-11-11', '2012-12-11'),
    (9, '03', '2012-12-12', now()),
    (10, '03', '2015-05-16', '2017-04-15'),
    (10, '04b', '2017-04-16', now()),
    (11, '02', '2015-10-20', '2019-07-15'),
    (11, '03', '2019-07-16', now()),
    (12, '03', '2015-04-22', '2020-07-07'),
    (12, '02', '2020-07-08', now()),
    (13, '01', '2010-12-31', '2018-12-31'),
    (13, '02', '2019-01-01', now()),
    (14, '02', '2019-06-03', '2020-06-29'),
    (14, '03', '2020-06-30', now()),
    (15, '01', '2021-09-29', now()); --em falta assignar departament als empleats del 16 al 18

--table titles:

    INSERT INTO
titles(emp_no, title, from_date, to_date)
values
    (1, 'BS in Economics', '2011-09-25', null),
    (2, 'BS in Business Administration', '2020-06-13', null),
    (3, 'BS in Law', '2016-10-28', null),
    (4, 'BS in Economics', '2000-12-03', null),
    (5, 'BS in Economics', '2020-02-02', null),
    (6, 'BA in Architecture', '2006-08-30', null),
    (7, 'BS in Psychology', '2001-07-07', null),
    (8, 'Degree in Computer Science', '2020-03-31', null),
    (9, 'Degree in Applied Mathematics', '2003-01-01', null),
    (10, 'Degree in Physics', '2014-06-27', null),
    (11, 'BA in English Philology', '2020-05-17', null),
    (12, 'BS in Law', '2003-12-19', null),
    (13, 'BS in Business Administration', '2000-09-24', null),
    (14, 'BS in Psychology', '2020-01-10', null),
    (15, 'BS in Economics', '2005-04-23', null);
    (16, 'BS in Business Administration', '2020-09-24', null),
    (17, 'BS in Psychology', '2020-01-10', null),
    (18, 'BS in Economics', '2021-04-23', null);

--UPDATE DATA

--change the name of an employee

UPDATE employees

SET first_name = 'Laia'

WHERE emp_no = 14;

--change the name of all departments

UPDATE departments 
    SET dept_name = 
    CASE 
        WHEN dept_no = '01' THEN 'Finances' 
        WHEN dept_no = '02' THEN 'Recerca' 
        WHEN dept_no = '03' THEN 'Vendes' 
        WHEN dept_no = '04' THEN 'TIC' 
        WHEN dept_no = '04b' THEN 'Logistica' 
    END;

--get data

--Select all employees with a salary greater than 20,000

SELECT * 
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no AND 
    salaries.salary > 20000;

--Select all employees with a salary below 10,000

SELECT * 
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no AND 
    salaries.salary < 10000;


--Select all employees who have a salary between 14000 and 50,000

SELECT * 
FROM employees 
INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no AND 
    salaries.salary BETWEEN 14000 AND 50000;


--Select the total number of employees

SELECT COUNT(emp_no) FROM employees;


--Select the total number of employees who have worked in more than one department

SELECT COUNT(emp_no) 
FROM (
    SELECT emp_no 
    FROM dept_emp 
    GROUP BY emp_no 
    HAVING COUNT(emp_no) > 1
) employees;


--Select the titles of the year 2019 ho canvio per 2020 perque ningu s'ha tret el 2019

SELECT * 
FROM titles 
WHERE from_date 
BETWEEN '2020-01-01' AND '2020-12-31';



--Select only the name of the employees in capital letters

SELECT UCASE(first_name) FROM employees;


--Select the name, surname and name of the current department of each employee !! xunga revisar les versions de la solution assembler

SELECT employees.first_name, employees.last_name, departments.dept_name

FROM employees

INNER JOIN dept_emp

ON dept_emp.emp_no = employees.emp_no

INNER JOIN departments

ON dept_emp.dept_no = departments.dept_no

WHERE dept_emp.to_date

BETWEEN '2021-11-01' AND now(); --solució gonzalo no funciona la data estava sense cometes i fa una resta

--
-- estava fet amb from_date  --canviem from_date to_date

--[l'arnau s'em repteix no se perque si faig from_date] té mes sentit to_date volem el departament actual

--les dues subconsultes em tornen 16 rows el emp_no = 5  arnau amb surt 2 cops amb les dues subconsultes WTF?! 

--la segona subconsulta amb torna 15 rows

SELECT e.first_name, e.last_name, d.dept_name
FROM employees as e 
JOIN 
(select emp_no, dept_no, from_date, MAX(to_date) 
from dept_emp group by emp_no) --la meva solucio mes sintetica
-- (
--     SELECT emp_no, dept_no, to_date 
--     FROM dept_emp 
--     WHERE to_date IN (
--     SELECT MAX(to_date) 
--     FROM dept_emp 
--     GROUP BY emp_no
--     )
recent_depts ON e.emp_no = recent_depts.emp_no 
JOIN departments as d ON recent_depts.dept_no = d.dept_no 
ORDER BY e.last_name; 

-- Only showing employees who are currently assigned to a department (to_date = now() o curdate())

--(podria fer curdate com a end_date en comptes de now() i no tindria el bug de el dia seguent s'ha quedat grabada la data 
--del now() d'aquell dia?) 
--[amb els joins si no te departament ja no son registres coicidents 
--per tant ni m'apareixen] em torna el mateix que lo anterior fet amb to_date
--funciona bé no entenc curdate() i now() perque no peta si el now fet ahir no es el mateix que avui i diem to_date >=curdate()!!

SELECT E.first_name, E.last_name, D.dept_name
FROM employees E 
JOIN (
SELECT emp_no, dept_no, to_date 
FROM dept_emp 
WHERE to_date IN (
    SELECT to_date 
    FROM dept_emp 
    WHERE to_date >= CURDATE()
    GROUP BY emp_no   )
) recent_depts ON E.emp_no = recent_depts.emp_no 
JOIN departments D ON recent_depts.dept_no = D.dept_no 
ORDER BY E.last_name; 


--Select the name, surname and number of times the employee has worked as a manager !! la m creem una nova taula virtual i efimera nomes
--existeix durant la consulta canvio m per manager 

SELECT e.first_name, e.last_name, manager.times_manager 
FROM employees as e 
LEFT JOIN (
    SELECT emp_no, COUNT(*) AS times_manager 
    FROM dept_manager 
    GROUP BY emp_no
) manager ON e.emp_no = manager.emp_no;


--Select the name of employees without any being repeated

SELECT DISTINCT first_name FROM employees;

--DELETE DATA

--Delete all employees with a salary greater than 20,000 --no m'ha borrat re revisar

DELETE FROM employees 
    WHERE emp_no IN (
    SELECT e.emp_no 
    FROM employees as e 
    JOIN salaries s ON e.emp_no = s.emp_no 
    WHERE s.salary > 20000 --AND s.to_date >= CURDATE() 
    );

--solucio adrian

DELETE FROM employees 
    WHERE emp_no IN (
    SELECT emp_no from salaries
    WHERE s.salary > 20000
    AND CURRENT_DATE() BETWEEN from_date AND to_date;
    );

--Remove the department that has more employees

DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no, to_date, emp_no
    FROM dept_emp 
    WHERE to_date >= CURDATE() 
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC 
    LIMIT 1
);

--solucio pau 

DELETE FROM departments 
WHERE dept_no = (
    SELECT dept_no 
    FROM dept_emp 
    WHERE to_date >= CURDATE() 
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC
    LIMIT 1
);