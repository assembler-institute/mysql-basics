
--Select all employees with a salary greater than 20,000
    SELECT employees.first_name, employees.last_name, salaries.salary
    FROM employees
    INNER JOIN salaries
    ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary>20000;


    --Select all employees with a salary below 10,000
    SELECT employees.first_name, employees.last_name, salaries.salary
    FROM employees
    INNER JOIN salaries
    ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary<10000;

    --Select all employees who have a salary between 14000 and 50,000
    SELECT employees.first_name, employees.last_name, salaries.salary
    FROM employees
    INNER JOIN salaries
    ON employees.emp_no = salaries.emp_no
    WHERE salaries.salary BETWEEN 14000 AND 50000;

    --Select the total number of employees
    SELECT COUNT(emp_no)
    FROM employees;

    --Select the total number of employees who have worked in more than one department
    SELECT emp_no, COUNT(emp_no) FROM dept_emp GROUP BY emp_no HAVING COUNT(emp_no) >1;

    --Select the titles of the year 2019
    SELECT * FROM titles WHERE to_date LIKE '%2020%';

    --Select only the name of the employees in capital letters
    Select * From employees Where first_name = UPPER(first_name);

    --Select the name, surname and name of the current department of each employee
    SELECT employees.first_name, employees.last_name, departments.dept_name
    FROM employees
	LEFT JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
	LEFT JOIN departments ON dept_emp.dept_no = departments.dept_no
    WHERE dept_emp.to_date = UTC_DATE() ;

    --Select the name, surname and number of times the employee has worked as a manager
    SELECT employees.first_name, employees.last_name, departments.dept_name
    FROM employees
	LEFT JOIN dept_manager ON dept_manager.emp_no = employees.emp_no
	LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no
    WHERE dept_manager.to_date = UTC_DATE();

    --Select the name of employees without any being repeated
    SELECT MIN(emp_no), first_name
    FROM employees
    GROUP BY first_name;
