--! 1.5.0 EXECUTE SCRIPT !--

-- EXECUTE SCRIPT
source C:\xampp\htdocs\mysql-basics\employees.sql

--! 1.5.1 INSERT DATA !--

-- INSERT DATA
 INSERT INTO
 employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
 VALUES (1,'1987-09-14','Paris','Arcos','M','2021-10-11')
 ;

 -- INSERT MULTIPLE DATA 
 INSERT INTO
 employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
 VALUES 
 (2,'1981-01-11','Edgar','Arcos','M','2021-10-11'),
 (3,'1911-11-21','Ana','Guadalupe','F','2021-10-11'),
 (4,'1983-03-13','Hector','Arcos','M','2021-10-11'),
 (5,'1984-04-14','Paola','Arcos','M','2021-10-11'),
 (6,'1985-05-15','Juan','Arcos','M','2021-10-11'),
 (7,'1986-06-16','Jose','Hernandez','M','2021-10-11'),
 (8,'1987-07-17','Cristian','Hernandez','M','2021-10-11'),
 (9,'1988-08-18','Adrian','Gonzalez','M','2021-10-11'),
 (10,'1989-09-19','Daniel','Quintana','M','2021-10-11'),
 (11,'1910-10-20','Eduardo','Consuegra','M','2021-10-11'),
 (12,'1982-02-12','Gledys','Arcos','F','2021-10-11'),
 (13,'1912-12-22','Jorge','McCuak','M','2021-10-11'),
 (14,'1913-01-23','Jaime','McCuak','M','2021-10-11'),
 (15,'1914-02-24','Juan','McCuak','M','2021-10-11'),
 (16,'1980-11-11','Juan','Espino','M','2021-10-12')
 ;

  -- INSERT MULTIPLE DATA 
 INSERT INTO
 employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
 VALUES 
 (2,'1981-01-11','Edgar','Arcos','M','2021-10-11'),
 (3,'1911-11-21','Ana','Guadalupe','F','2021-10-11'),
 (4,'1983-03-13','Hector','Arcos','M','2021-10-11'),
 (5,'1984-04-14','Paola','Arcos','M','2021-10-11'),
 (6,'1985-05-15','Juan','Arcos','M','2021-10-11'),
 (7,'1986-06-16','Jose','Hernandez','M','2021-10-11'),
 (8,'1987-07-17','Cristian','Hernandez','M','2021-10-11'),
 (9,'1988-08-18','Adrian','Gonzalez','M','2021-10-11'),
 (10,'1989-09-19','Daniel','Quintana','M','2021-10-11'),
 (11,'1910-10-20','Eduardo','Consuegra','M','2021-10-11'),
 (12,'1982-02-12','Gledys','Arcos','F','2021-10-11'),
 (13,'1912-12-22','Jorge','McCuak','M','2021-10-11'),
 (14,'1913-01-23','Jaime','McCuak','M','2021-10-11'),
 (15,'1914-02-24','Juan','McCuak','M','2021-10-11'),
 (16,'1980-11-11','Juan','Espino','M','2021-10-12')
 ;

-- INSERT MULTIPLE DATA 
 INSERT INTO
 departments (dept_no, dept_name) 
 VALUES 
 ('1','backend'),
 ('2','frontend'),
 ('3','bbdd'),
 ('4','administration'),
 ('5','illustration'),
 ('6','hr')
 ;

 -- INSERT MULTIPLE DATA 
 INSERT INTO
 dept_emp (emp_no, dept_no, from_date, to_date) 
 VALUES 
 (13,2,'2021-10-11','2023-10-11'),
 (13,5,'2021-10-11','2023-10-11'),
 (4,2,'2021-10-11','2023-10-11'),
 (4,5,'2021-10-11','2023-10-11'),
 (5,2,'2021-10-11','2023-10-11'),
 (5,5,'2021-10-11','2023-10-11'),
 (6,2,'2021-10-11','2023-10-11'),
 (6,5,'2021-10-11','2023-10-11'),
 (7,2,'2021-10-11','2023-10-11'),
 (7,5,'2021-10-11','2023-10-11'),
 (8,2,'2021-10-11','2023-10-11'),
 (8,1,'2021-10-11','2023-10-11'),
 (9,3,'2021-10-11','2023-10-11'),
 (9,1,'2021-10-11','2023-10-11'),
 (10,3,'2021-10-11','2023-10-11'),
 (10,1,'2021-10-11','2023-10-11'),
 (11,3,'2021-10-11','2023-10-11'),
 (11,1,'2021-10-11','2023-10-11'),
 (12,3,'2021-10-11','2023-10-11'),
 (12,1,'2021-10-11','2023-10-11')
 ;

  -- INSERT MULTIPLE DATA 
 INSERT INTO
 dept_manager (emp_no, dept_no, from_date, to_date) 
 VALUES 
 (1,1,'2021-10-11','2023-10-11'),
 (2,2,'2021-10-11','2023-10-11'),
 (3,5,'2021-10-11','2023-10-11'),
 (13,3,'2021-10-11','2023-10-11'),
 (14,4,'2021-10-11','2023-10-11'),
 (16,6,'2021-10-11','2023-10-11')
 ;

  -- INSERT MULTIPLE DATA 
 INSERT INTO
 titles (emp_no, title, from_date, to_date) 
 VALUES 
 (1,'degree','2020-10-11','2029-10-11'),
 (2,'degree','2020-10-11','2029-10-11'),
 (3,'degree','2020-10-11','2029-10-11'),
 (4,'degree','2020-10-11','2029-10-11'),
 (5,'degree','2020-10-11','2029-10-11'),
 (6,'degree','2020-10-11','2029-10-11'),
 (7,'degree','2020-10-11','2029-10-11'),
 (8,'degree','2020-10-11','2029-10-11'),
 (9,'degree','2021-10-11','2029-10-11'),
 (10,'degree','2021-10-11','2028-10-11'),
 (11,'degree','2021-10-11','2028-10-11'),
 (12,'degree','2021-10-11','2028-10-11'),
 (13,'degree','2021-10-11','2028-10-11'),
 (14,'degree','2021-10-11','2028-10-11'),
 (15,'degree','2021-10-11','2028-10-11'),
 (16,'degree','2021-10-11','2028-10-11')
;


--! 1.5.2 UPDATE DATA !--

-- SIMPLE UPDATE MULTIPLE CONDITIONALS
UPDATE employees 
SET first_name= 'Fulano' 
WHERE first_name='Cristian' and last_name='Hernandez' and birth_date='1987-07-17';

-- MULTIPLE UPDATE
UPDATE departments
    SET dept_name = (case 
                         when dept_no = '1' then 'BACK_end'
                         when dept_no = '2' then 'FRONT_end'
                         when dept_no = '3' then 'BDD'
                         when dept_no = '4' then 'ADMIN'
                         when dept_no = '5' then 'ILLUST'
                         when dept_no = '6' then 'HR'
                    end)
   --?WHERE dept_no in ('1', '2','3','4','5','6');  MAY BE NOT NECESARY

--! 1.5.3 GET DATA !--
--SELECT + INNER JOIN + CONDITIONAL
SELECT e.emp_no, first_name, last_name FROM employees as e INNER JOIN  salaries as s 
ON e.emp_no = s.emp_no WHERE salary > 20000;

--SELECT + INNER JOIN + CONDITIONAL
SELECT e.emp_no, first_name, last_name FROM employees as e INNER JOIN  salaries as s 
ON e.emp_no=s.emp_no WHERE salary < 10000;

--SELECT + INNER JOIN + CONDITIONAL (BETWEEN)
SELECT e.emp_no, first_name, last_name FROM employees as e INNER JOIN  salaries as s 
ON e.emp_no=s.emp_no WHERE salary BETWEEN 14000 AND 50000;

--SELECT + COUNT 
SELECT COUNT(emp_no) FROM employees;

--SELECT + COUNT + GROUP BY + HAVING
SELECT emp_no,COUNT(*) FROM dept_emp GROUP BY emp_no HAVING COUNT(*) > 1;

--SELECT + COUNT + LIKE
SELECT * FROM titles WHERE from_date LIKE '2019%';

--SELECT + UCASE [CAPITAL LETTERS]
SELECT UCASE(first_name) FROM employees;

--SELECT + INNER JOIN MULTIPLE + CONDITIONAL
SELECT e.first_name,e.last_name , d.dept_name FROM employees as e 
INNER JOIN departments as d INNER JOIN dept_emp as de
ON  e.emp_no=de.emp_no WHERE  de.dept_no=d.dept_no;

--SELECT + RIGHT JOIN  + GROUP BY
SELECT e.first_name,e.last_name, COUNT(d.emp_no) 
FROM dept_manager as d RIGHT JOIN employees as e 
ON e.emp_no=d.emp_no GROUP BY e.emp_no;

--SELECT + DISTINCT
 SELECT DISTINCT first_name FROM employees;

 --! 1.5.4 DELETE DATA

--DELETE + IN (SECOND SELECT + INNER JOIN)
DELETE FROM employees WHERE emp_no IN 
( SELECT e.emp_no  FROM employees as e 
INNER JOIN salaries as s 
ON e.emp_no = s.emp_no WHERE S.salary > 20000);


--DELETE + IN (SECOND SELECT + GROUP BY+ COUNT)
DELETE FROM departments 
  WHERE dept_no = (
    SELECT dept_no 
    FROM dept_emp 
    WHERE to_date >= CURRENTDATE() 
    GROUP BY dept_no
    ORDER BY COUNT(DISTINCT emp_no) DESC
    LIMIT 1
  );


