# 💊 MySQL Basics

_MySQL, SQL language, setting environment variables._

## 📔 Description

Intro pill which served as our first contact with the DBMS "MySQL", where we set an environment variable to be able to run the program from the command line, imported an example database from a ".sql" file provided by the official MySQL team, and executed some queries to play around with a DB and to getting familiar with the SQL language.

### 📂 Content

This repository contains only the following files:

- **_README.md_**: this explanatory file.
- **_employees.sql_**: file containing an example database provided by the official MySQL team, to import and use in our exercise.
- **_queries.sql_**: file where we recorded all the necessary queries executed to fulfill this exercise.

## Commands

### Show ol Databases

`SHOW DATABASES`

### Use a Database

`USE [ database-name ]`

### Show tables of Database

`SHOW TABLES`

Database changed
mysql> show tables;
+----------------------+
| Tables_in_employees |
+----------------------+
| current_dept_emp |
| departments |
| dept_emp |
| dept_emp_latest_date |
| dept_manager |
| employees |
| salaries |
| titles |
+----------------------+
8 rows in set (0,00 sec)

mysql> SELECT \* FROM employees;
+--------+------------+------------+-----------+--------+------------+
| emp_no | birth_date | first_name | last_name | gender | hire_date |
+--------+------------+------------+-----------+--------+------------+
| 1 | 1996-12-29 | Jose | Manuel | M | 2020-06-14 |
| 2 | 1984-03-12 | Jose | Miguel | M | 2014-05-07 |
| 3 | 1976-06-03 | Jose | Maria | M | 2017-03-11 |
| 4 | 1995-06-03 | Laura | Fernandez | F | 2015-03-11 |
| 5 | 1967-06-03 | Sara | Olmos | F | 2019-03-11 |
| 6 | 1996-12-29 | Paula | Martinez | F | 2020-06-14 |
| 7 | 1984-03-12 | Sofia | Leyva | F | 2014-05-07 |
| 8 | 1976-06-03 | Mat | Castaño | F | 2017-03-11 |
| 9 | 1995-06-03 | Arturo | Perez | M | 2015-03-11 |
| 10 | 1967-06-03 | Miquel | Martí | M | 2019-03-11 |
| 11 | 1967-06-03 | Javier | Miel | M | 2019-03-11 |
| 12 | 1996-12-29 | Marc | Llopis | M | 2020-06-14 |
| 13 | 1984-03-12 | Lola | Vela | F | 2014-05-07 |
| 14 | 1976-06-03 | Ruth | Lara | F | 2017-03-11 |
| 15 | 1995-06-03 | Jorge | Martin | M | 2015-03-11 |
+--------+------------+------------+-----------+--------+------------+
15 rows in set (0,00 sec)

mysql> SELECT \* FROM departments;
+---------+------------------+
| dept_no | dept_name |
+---------+------------------+
| 4 | Administración |
| 5 | I+D |
| 1 | Marketing |
| 3 | Recursos Humanos |
| 2 | Ventas |
+---------+------------------+
5 rows in set (0,00 sec)

mysql> SELECT \* FROM dept_emp;
+--------+---------+------------+------------+
| emp_no | dept_no | from_date | to_date |
+--------+---------+------------+------------+
| 1 | 1 | 2020-06-14 | 2043-06-14 |
| 2 | 2 | 2014-05-07 | 2034-06-09 |
| 3 | 3 | 2017-03-11 | 2025-06-14 |
| 4 | 4 | 2015-03-11 | 2056-06-14 |
| 5 | 5 | 2019-03-11 | 2033-06-14 |
| 6 | 1 | 2020-06-14 | 2043-06-14 |
| 7 | 2 | 2014-05-07 | 2034-06-09 |
| 8 | 3 | 2017-03-11 | 2025-06-14 |
| 9 | 4 | 2015-03-11 | 2056-06-14 |
| 10 | 5 | 2019-03-11 | 2033-06-14 |
| 11 | 1 | 2019-03-11 | 2033-06-14 |
| 12 | 2 | 2020-06-14 | 2043-06-14 |
| 13 | 3 | 2014-05-07 | 2034-06-09 |
| 14 | 4 | 2017-03-11 | 2025-06-14 |
| 15 | 5 | 2015-03-11 | 2056-06-14 |
+--------+---------+------------+------------+
15 rows in set (0,00 sec)

mysql> SELECT \* FROM dept_manager;
+--------+---------+------------+------------+
| emp_no | dept_no | from_date | to_date |
+--------+---------+------------+------------+
| 1 | 1 | 2021-02-14 | 2043-06-14 |
| 2 | 2 | 2014-05-07 | 2034-06-30 |
| 3 | 3 | 2021-02-08 | 2043-06-16 |
| 4 | 4 | 2019-02-08 | 2056-06-14 |
| 5 | 5 | 2012-02-08 | 2033-06-14 |
+--------+---------+------------+------------+
5 rows in set (0,00 sec)

mysql> SELECT \* FROM salaries;
+--------+--------+------------+------------+
| emp_no | salary | from_date | to_date |
+--------+--------+------------+------------+
| 1 | 21000 | 2020-06-14 | 2043-06-14 |
| 2 | 35000 | 2014-05-07 | 2034-06-14 |
| 3 | 27000 | 2017-03-11 | 2025-06-14 |
| 4 | 24000 | 2015-03-11 | 2056-06-14 |
| 5 | 32000 | 2019-03-11 | 2033-06-12 |
| 6 | 21000 | 2020-06-14 | 2043-06-14 |
| 7 | 35000 | 2014-05-07 | 2034-06-14 |
| 8 | 27000 | 2017-03-11 | 2025-06-14 |
| 9 | 24000 | 2015-03-11 | 2056-06-14 |
| 10 | 32000 | 2019-03-11 | 2033-06-12 |
| 11 | 32000 | 2019-03-11 | 2033-06-12 |
| 12 | 21000 | 2020-06-14 | 2043-06-14 |
| 13 | 35000 | 2014-05-07 | 2034-06-14 |
| 14 | 27000 | 2017-03-11 | 2025-06-14 |
| 15 | 24000 | 2015-03-11 | 2056-06-14 |
+--------+--------+------------+------------+
15 rows in set (0,00 sec)

mysql> SELECT \* FROM titles;
+--------+-----------------------------+------------+------------+
| emp_no | title | from_date | to_date |
+--------+-----------------------------+------------+------------+
| 1 | SQL Certificate | 2020-01-14 | 2020-08-14 |
| 2 | Adobe Certificate | 2020-02-12 | 2020-05-06 |
| 2 | Master in Phisycs | 2020-02-12 | 2020-05-06 |
| 3 | English C2 Certificate | 2019-01-14 | 2020-01-20 |
| 3 | MYSQl Certificate | 2019-01-14 | 2020-01-20 |
| 4 | PhD in Quantum Mechanics | 2018-01-14 | 2020-05-20 |
| 5 | PHP Certificate | 2019-01-14 | 2020-05-20 |
| 6 | Italian B2 Certificate | 2020-01-14 | 2020-08-14 |
| 9 | PhD in Medicine | 2018-01-14 | 2020-05-20 |
| 10 | PHP Certificate | 2019-01-14 | 2020-05-20 |
| 11 | JAVA Certificate | 2019-01-14 | 2020-05-20 |
| 12 | French B1 Certificate | 2020-01-14 | 2020-08-14 |
| 13 | Excel Certificate | 2020-02-12 | 2020-05-06 |
| 14 | Polish C2 Level Certificate | 2019-01-14 | 2020-01-20 |
| 15 | PhD in Bioquimics | 2018-01-14 | 2020-05-20 |
+--------+-----------------------------+------------+------------+
15 rows in set (0,00 sec)

-- // DELETE DATA // --

-- Eliminate all employees with a salary greater than 20,000
DELETE e FROM employees e
INNER JOIN salaries s ON e.emp_no = s.emp_no WHERE s.salary > 20000;

-- Remove the department that has more employees
DELETE FROM departments
WHERE dept_no IN
(
SELECT e.dept_no FROM (
SELECT dept_no, COUNT(dept_no) AS value_occurrence
FROM dept_emp
GROUP BY dept_no
ORDER BY value_occurrence DESC
LIMIT 1) e
)

LIMIT 1;

SELECT dept_no FROM dept_emp;

SELECT dept_no, emp_no AS cnt FROM dept_emp;

SELECT MAX(e.cnt)
FROM (
SELECT dept_no AS dep, COUNT(emp_no) AS cnt
FROM dept_emp GROUP BY dept_no
) e;

SELECT dept_no, emp_no FROM dept_emp ORDER BY dept_no;

SELECT e.dept_no FROM (
SELECT dept_no, COUNT(dept_no) AS value_occurrence
FROM dept_emp
GROUP BY dept_no
ORDER BY value_occurrence DESC
LIMIT 1) e;
