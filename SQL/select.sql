--SELECT + INNER JOIN + CONDITIONAL
SELECT e.emp_no, first_name, last_name FROM employees as e INNER JOIN  salaries as s 
ON e.emp_no=s.emp_no WHERE salary > 20000;

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

--SELECT + RIGHT JOIN  + GROUP
SELECT e.first_name,e.last_name, COUNT(d.emp_no) 
FROM dept_manager as d RIGHT JOIN employees as e 
ON e.emp_no=d.emp_no GROUP BY e.emp_no;

--SELECT + DISTINCT
 SELECT DISTINCT first_name FROM employees;