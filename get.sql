
-- 3. DATA OBTAINMENT:

-- EMPLOYEES WITH A SALARY > $20,000
SELECT *
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND
    salaries.salary > 20000;

-- EMPLOYEES WITH A SALARY > $10,000
SELECT *
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND
    salaries.salary < 10000;

-- EMPLOYEES WITH A SALARY BETWEEN $14,000 && $50,000
SELECT *
FROM employees
INNER JOIN salaries
ON employees.emp_no = salaries.emp_no AND
    salaries.salary BETWEEN 14000 AND 50000;

-- TOTAL NUMBER OF EMPLOYEES
SELECT COUNT(emp_no) 
FROM employees;

-- TOTAL NUMBER OF EMPLOYEES WHO WORKED AT DIFFERENT DEPARTMENTS

SELECT COUNT(emp_no) 
FROM (
    SELECT emp_no
    FROM dept_emp
    GROUP BY emp_no
    HAVING COUNT(emp_no) > 1
    ) employees;


-- TOTAL NUMBER OF TITLES IN 2019
  SELECT *
  FROM titles 
  WHERE from_date 
    BETWEEN '2019-01-01' AND '2019-12-31';

  -- SELECT THE NAME AND PUT IT IN UPPERCASE
  SELECT UCASE(first_name) FROM employees;


  -- SELECT THE NAME, SURNAME AND DEPARTMENT NAME OF EVERY EMPLOYEE (CURRENTLY WORKING AT THAT DEPARTMENT)

    SELECT EMP.first_name, EMP.last_name, DEP.dept_name
    FROM employees EMP
    JOIN (
      SELECT emp_no, dept_no, to_date
      FROM dept_emp
      WHERE to_date IN (
        SELECT to_date
        FROM dept_emp
        WHERE to_date >= CURDATE()
        GROUP BY emp_no))
    current_deps ON EMP.emp_no = current_deps.emp_no
    JOIN departments DEP ON current_deps.dept_no = DEP.dept_no
    ORDER BY EMP.emp_no;

  -- SELECT THE NAME, SURNAME AND NUMBER OF TIMES THE EMPLOYEE WORKED AS A MANAGER
    
    SELECT EMP.first_name, EMP.last_name, B.been_manager
    FROM employees EMP
    INNER JOIN (
        SELECT emp_no, COUNT(emp_no) AS been_manager
        FROM dept_manager
        GROUP BY emp_no)
    B ON EMP.emp_no = B.emp_no;

    -- SELECT THE NAMES WITHOUT ANY REPS

    -- OPTION 1 -- 
    SELECT DISTINCT first_name FROM employees WHERE first_name NOT LIKE '%Rep%';

    -- OPTION 2 > -- 
    SELECT DISTINCT first_name FROM employees;