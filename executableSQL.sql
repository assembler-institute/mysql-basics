-- first at all execute this file: source employees.sql.

USE employees


INSERT INTO employees (
    emp_no ,
    birth_date ,
    first_name, 
    last_name, 
    gender, 
    hire_date
) values (
    1,
    '1923-08-23',
    'Calamaro',
    'tomas',
    'M',
    '1981-11-24'

),(
    2,
    '1923-08-23',
    'Calamaro',
    'Joaquin',
    'M',
    '1981-11-24'
),(
    3,
    '2002-12-05',
    'Andres',
    'Hilario',
    'M',
    '2008-07-02'
    
),(
     4,
    '2006-11-10',
    'Einar',
    'Garcia',
    'F',
    '1981-11-24'
),(
    5,
    '2005-06-13',
    'Andres',
    'Papos',
    'M',
    '2008-07-02'
    
),(
     6,
    '2013-06-20',
    'Andres',
    'DeLosMontes',
    'M',
    '1981-11-24'
),(
    7,
    '2016-09-05',
    'Marc',
    'Sola',
    'M',
    '2008-07-02'
    
),(
    8,
    '2004-07-26',
    'Jacinta',
    'Evanista',
    'F',
    '2008-07-02'
    
),(
     9,
    '1923-08-23',
    'Maria Concept',
    'Soledad',
    'F',
    '1981-11-24'
),(
    10,
    '2000-12-11',
    'Victor-Hugo',
    'Ruperto',
    'M',
    '2021-07-02'
    
),(
    11,
    '2002-12-05',
    'Gustaba',
    'Hil',
    'F',
    '2020-07-02'
    
),(
    12,
    '2004-11-10',
    'Julia',
    'Hilario',
    'F',
    '2021-07-02'
    
),(
     13,
    '1997-08-23',
    'Laia',
    'Joaquin',
    'F',
    '2020-11-24'
),(
    14,
    '2000-07-22',
    'Xica',
    'Conejera',
    'F',
    '2021-07-02'
),(
    15,
    '1989-12-30',
    'Kim',
    'Conejo',
    'M',
    '2021-07-02'
    
    
);
INSERT INTO departments (
    dept_no,
    dept_name
) values 
('1','marketing'),

('2','Softwere development'),

('3','Hardwere manteniment'),

('4','Finance team'),

('5','Manager of manager');

INSERT INTO dept_manager (
    emp_no,
    dept_no,
    from_date,
    to_date
) value 
    (4,'3','1923-08-12', '1980-10-09'),
    (1,'1','1955-11-09','2000-10-29'),    
    (3,'2','2000-09-21','2010-10-29'),    
    (2,'4','1997-01-09', '2000-10-29'),    
    (5,'5','1952-10-09','2005-11-29');
INSERT INTO dept_emp (

    emp_no,
    dept_no,
    from_date,
    to_date

) value 
    (14, '2', '1944-12-28', '1984-11-12'),
    (14, '3', '1959-02-28', '1990-09-22'),
    (10, '2', '1989-02-28', '1999-09-22'),
    (10, '1', '2000-11-18', '2012-10-24'),
    (9, '4', '1970-03-28', '1990-09-12'),
    (9, '3', '1960-12-20', '1995-12-22'),    
    (8, '1', '2000-12-28', '2010-12-22'),
    (8, '2', '1959-02-28', '1990-09-22'),
    (12, '4', '1959-02-28', '1990-09-22'),
    (12, '1', '1965-12-28', '1998-10-23'),
    (13, '3', '1980-03-28', '1992-12-31'),
    (13, '4', '2021-12-18', '2021-12-30'),
    (6, '5', '1959-11-14', '1990-09-22'),
    (6, '1', '1959-02-28', '2001-10-23'),      
    (11, '5', '1944-12-28', '1984-11-12'),
    (11, '4', '1923-04-16', '1974-09-22'),
    (7, '2', '1999-12-28', '2010-09-22'),
    (7, '3', '1959-02-28', '1990-09-22'),
    (5, '5', '1997-01-28', '2010-09-22'),
    (4, '5', '1959-02-28', '1990-09-22');

INSERT INTO titles (
    emp_no,
    title,
    from_date,
    to_date
) values 
(10, 'UIX design', '2020-02-22', '2021-06-12'),
(11, 'ADE', '2020-06-22', '2021-02-12'),
(12, 'Empresarial Design', '2020-11-22', '2021-12-12'),
(13, 'Engineering', '2020-07-22', '2021-12-12'),
(14, 'Engineering', '2020-02-22', '2021-06-12'),
(9, 'UIX design', '1989-02-22', '1995-06-12'),
(8, 'Softwere', '1988-05-20', '1995-06-12'),
(7, 'Art & Design', '1989-02-22', '1995-06-12'),
(6, 'Graphic Design', '1989-02-22', '1995-06-12'),
(3, 'Robotic', '1989-02-22', '1995-06-12'),
(5, 'Political Sience', '1989-02-22', '1995-06-12'),
(4, 'Economics', '1989-02-22', '1995-06-12'),
(2, 'Law Career', '1989-02-22', '1995-06-12'),
(1, 'Scince', '1989-02-22', '1995-06-12');

INSERT INTO salaries (
    emp_no,
    salary,
    from_date,
    to_date
) values 
(1, 30000, '1955-11-09','2000-10-29'),
(2, 45300, '1997-01-09', '2000-10-29'),
(3, 29000, '2000-09-21','2010-10-29'),
(4, 37820, '1923-08-12', '1980-10-09'),
(5, 50000, '1952-10-09','2005-11-29'),
(6, 23000, '1959-11-14', '1990-09-22'),
(7, 10002, '1999-12-28', '2010-09-22'),
(8, 21000, '2000-12-28', '2010-12-22'),
(9, 18000, '1960-12-20', '1995-12-22'),
(10, 5000, '2000-11-18', '2012-10-24'),
(11, 20000, '1944-12-28', '1984-11-12'),
(12, 11003, '1965-12-28', '1998-10-23'),
(13, 13902, '1980-03-28', '1992-12-31'),
(14, 17290, '1944-12-28', '1984-11-12');


UPDATE employees SET first_name='Kim' WHERE first_name='Julia' AND last_name='Hilario' AND birth_date='2006-11-10';
UPDATE titles SET to_date ='2019-09-23' WHERE emp_no=9;

INSERT INTO departments (
    dept_no, dept_name
) VALUES ('1','marketing(2)'),('2','Softwere development(2)'),('3','Hardwere manteniment(2)'),('4','Finance team(2)'),('5','Manager of manager(2)') 
ON DUPLICATE KEY UPDATE dept_name=VALUES(dept_name);

SELECT employees.emp_no , employees.last_name, salaries.salary 
AS salary  FROM employees 
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salary>20000;

SELECT employees.emp_no , employees.last_name, salaries.salary 
AS salary  FROM employees  
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salary<10000;

SELECT employees.emp_no , employees.last_name, salaries.salary 
AS salary  FROM employees 
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salary>14000 AND salary<50000;


SELECT COUNT( emp_no ) FROM employees;
SELECT emp_no, COUNT(emp_no)  FROM dept_emp GROUP BY emp_no HAVING COUNT(emp_no)>1;
SELECT DISTINCT to_date FROM titles WHERE SUBSTRING( to_date, 1,4 )= '2019';
SELECT  first_name FROM employees WHERE BINARY first_name = BINARY UPPER(first_name);


SELECT employees.first_name, employees.last_name, dept_emp.dept_no, departments.dept_name FROM employees   
LEFT JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
LEFT JOIN departments ON dept_emp.dept_no=departments.dept_no;

SELECT  employees.first_name, employees.last_name, COUNT(dept_manager.dept_no)
FROM employees   
LEFT JOIN dept_manager ON employees.emp_no = dept_manager.emp_no
GROUP BY employees.first_name, employees.last_name, dept_manager.dept_no;

SELECT employees.first_name, employees.last_name, dept_manager.dept_no  FROM dept_manager LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no;
SELECT first_name FROM employees GROUP BY first_name HAVING COUNT(first_name)>1;


DELETE employees 
FROM employees INNER JOIN salaries 
ON employees.emp_no = salaries.emp_no 
WHERE salaries.salary>20000;

DELETE FROM departments
WHERE dept_no=(
    SELECT dept_no FROM 
    (
        SELECT dept_no, COUNT(dept_emp.emp_no)as count
        FROM dept_emp 
        GROUP BY dept_emp.dept_no 
        ORDER BY count DESC LIMIT 1
    )D
);








