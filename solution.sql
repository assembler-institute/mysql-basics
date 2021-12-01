--add employees
INSERT INTO employees values    (2, '1995-03-22', 'Josep', 'Romero', 'M', '2020-08-08'),
                                (3, '1994-06-15', 'Juan', 'Fernandez', 'M', '2015-04-18'), 
                                (4, '1992-10-05', 'Sara', 'Montcada', 'F', '2016-02-17'), 
                                (5, '1990-01-22', 'Josep', 'Llagostera', 'M', '2019-05-06'), 
                                (6, '1997-09-20', 'Josep', 'Vilagut', 'M', '2020-01-04')
                                (7, '1991-12-15', 'Maria', 'Cano', 'F', '2017-02-21'), 
                                (8, '2000-10-05', 'Diana', 'Benedetto', 'F', '2020-04-27'), 
                                (9, '1993-05-12', 'Fernando', 'Ballesteros', 'M', '2016-02-18'), 
                                (10, '1989-02-04', 'Camila', 'Gonzalez', 'F', '2014-06-30'), 
                                (11, '1992-12-15', 'Florencia', 'De Vicentis', 'F', '2017-01-10'), 
                                (12, '1995-05-05', 'Ramon', 'Artegui', 'M', '2018-11-06'), 
                                (13, '1996-08-02', 'Ramiro', 'Cuernavaca', 'M', '2018-05-06'), 
                                (17, '1993-04-10', 'Arnold', 'Suarseneger', 'M', '2019-04-13'), 
                                (14, '1991-02-12', 'Lionel', 'Messi', 'M', '2017-10-02'), 
                                (15, '1997-08-14', 'Maria', 'Dubois', 'F', '2018-01-07'), 
                                (16, '1993-11-04', 'Wisin', 'Yandel', 'M', '2020-08-12');

INSERT INTO salaries values     (2, '10000','2020-08-08', NULL),
                                (3, '15000','2015-04-18', '2018-04-18'),
                                (3,'41000','2018-04-19', NULL), 
                                (4, '23000','2016-02-17', '2018-03-17'),
                                (4, '41000','2018-03-18', NULL), 
                                (5, '20000','2019-05-06', NULL), 
                                (6, '10000','2020-01-04', NULL),
                                (7, '15000', '2017-02-21', NULL), 
                                (8, '10000', '2020-04-27', NULL), 
                                (9, '28000', '2016-02-18', '2016-02-09'),
                                (9, '41000', '2019-02-10', NULL), 
                                (10, '30000', '2014-06-30', '2019-02-09'),
                                (10, '47000', '2019-02-10', NULL), 
                                (11, '20000', '2017-01-10','2019-01-10'),
                                (11, '41000', '2019-01-11', NULL), 
                                (12, '25000', '2018-11-06', NULL), 
                                (13, '25000', '2018-05-06', NULL), 
                                (17, '20000', '2019-04-13', NULL), 
                                (14, '30000', '2017-10-02', '2019-02-09'),
                                (14,'40000', '2019-02-10', NULL), 
                                (15, '25000', '2018-01-07', NULL), 
                                (16, '10000', '2020-08-12', NULL);

INSERT INTO departments values  ("A01", "Sales"),
                                ("A04", "Accountancy"),
                                ("A07", "Marketing"),
                                ("A10", "CEO");

INSERT INTO dept_manager values (3, "A01", "2018-04-19", NULL),
                                (4, "A01", "2018-03-18", NULL),
                                (9, "A04", "2019-02-10", NULL),
                                (11, "A04", "2019-01-11", NULL),
                                (14, "A07", "2019-02-10", NULL),
                                (10, "A10", "2019-02-10", NULL);

INSERT INTO dept_emp values (2, "A01", "2020-08-08", "2021-02-09"),
                            (5, "A04", "2019-05-06", "2020-05-06"),
                            (6, "A04", "2020-01-04", "2021-01-04"),
                            (7, "A07", "2017-02-21", "2019-02-21"),
                            (8, "A07", "2020-04-27", "2021-04-26"),
                            (12, "A01", "2018-11-06", "2020-11-06"),
                            (13, "A01", "2018-05-06", "2020-05-06"),
                            (15, "A04", "2018-01-07", "2020-01-07"),
                            (16, "A04", "2020-08-12", "2021-08-12"),
                            (2, "A04", "2021-02-10", NULL),
                            (5, "A01", "2020-05-07", NULL),
                            (6, "A01", "2021-01-05", NULL),
                            (7, "A04", "2019-02-22", NULL),
                            (8, "A04", "2020-04-27", NULL),
                            (12, "A07", "2020-11-07", NULL),
                            (13, "A04", "2020-05-07", NULL),
                            (15, "A01", "2020-01-08", NULL),
                            (16, "A01", "2021-08-12", NULL);

INSERT INTO titles values   (2, "Degree in Business", "2015-09-12", "2019-04-23"),
                            (3, "Master in Sales", "2015-09-12", "2017-04-23"),
                            (4, "Master in Sales", "2015-09-12", "2017-04-23"),
                            (5, "Degree in Business", "2015-09-12", "2019-04-23"),
                            (6, "Degree in Business", "2015-09-12", "2020-04-23"),
                            (7, "Degree in Business", "2015-09-12", "2019-04-23"),
                            (8, "Degree in Business", "2015-09-12", "2019-04-23"),
                            (9, "Master in Accountancy", "2015-09-12", "2018-04-23"),
                            (10, "MBA", "2015-09-12", "2017-04-23"),
                            (11, "Master in Accountancy", "2015-09-12", "2018-04-23"),
                            (12, "Degree in Business", "2015-09-12", "2019-04-23"),
                            (13, "Degree in Business", "2015-09-12", "2020-04-23"),
                            (14, "Master in  Marketing", "2015-09-12", "2020-04-23"),
                            (15, "Degree in Business", "2015-09-12", "2020-04-23"),
                            (16, "Degree in Business", "2015-09-12", "2020-04-23"),
                            (17, "Degree in Business", "2015-09-12", "2019-04-23");

UPDATE employees SET first_name = "Camila" WHERE  first_name = "Ramon" AND last_name = "Artegui" AND birth_date = "1995-05-05";

UPDATE departments SET dept_name = "New Sales" WHERE dept_no = "A01";
UPDATE departments SET dept_name = "New Accountancy" WHERE dept_no = "A04";
UPDATE departments SET dept_name = "New Marketing" WHERE dept_no = "A07";

SELECT * FROM salaries WHERE salary > 20000;
+--------+--------+------------+------------+
| emp_no | salary | from_date  | to_date    |
+--------+--------+------------+------------+
|      3 |  41000 | 2018-04-19 | 0000-00-00 |
|      4 |  23000 | 2016-02-17 | 2018-03-17 |
|      4 |  41000 | 2018-03-18 | 0000-00-00 |
|      9 |  28000 | 2016-02-18 | 2016-02-09 |
|      9 |  41000 | 2019-02-10 | 0000-00-00 |
|     10 |  30000 | 2014-06-30 | 2019-02-09 |
|     10 |  47000 | 2019-02-10 | 0000-00-00 |
|     11 |  41000 | 2019-01-11 | 0000-00-00 |
|     12 |  25000 | 2018-11-06 | 0000-00-00 |
|     13 |  25000 | 2018-05-06 | 0000-00-00 |
|     14 |  30000 | 2017-10-02 | 2019-02-09 |
|     14 |  40000 | 2019-02-10 | 0000-00-00 |
|     15 |  25000 | 2018-01-07 | 0000-00-00 |


SELECT * FROM salaries WHERE salary < 20000;
+--------+--------+------------+------------+
| emp_no | salary | from_date  | to_date    |
+--------+--------+------------+------------+
|      2 |  10000 | 2020-08-08 | 0000-00-00 |
|      3 |  15000 | 2015-04-18 | 2018-04-18 |
|      6 |  10000 | 2020-01-04 | 0000-00-00 |
|      7 |  18000 | 2017-02-21 | 0000-00-00 |
|      8 |  10000 | 2020-04-27 | 0000-00-00 |
|     16 |  10000 | 2020-08-12 | 0000-00-00 |
+--------+--------+------------+------------+

SELECT * FROM salaries WHERE salary < 50000 AND salary > 21000;
+--------+--------+------------+------------+
| emp_no | salary | from_date  | to_date    |
+--------+--------+------------+------------+
|      3 |  41000 | 2018-04-19 | 0000-00-00 |
|      4 |  23000 | 2016-02-17 | 2018-03-17 |
|      4 |  41000 | 2018-03-18 | 0000-00-00 |
|      9 |  28000 | 2016-02-18 | 2016-02-09 |
|      9 |  41000 | 2019-02-10 | 0000-00-00 |
|     10 |  30000 | 2014-06-30 | 2019-02-09 |
|     10 |  47000 | 2019-02-10 | 0000-00-00 |
|     11 |  41000 | 2019-01-11 | 0000-00-00 |
|     12 |  25000 | 2018-11-06 | 0000-00-00 |
|     13 |  25000 | 2018-05-06 | 0000-00-00 |
|     14 |  30000 | 2017-10-02 | 2019-02-09 |
|     14 |  40000 | 2019-02-10 | 0000-00-00 |
|     15 |  25000 | 2018-01-07 | 0000-00-00 |
+--------+--------+------------+------------+

SELECT COUNT(*) FROM employees;
+----------+
| COUNT(*) |
+----------+
|       16 |
+----------+

SELECT emp_no, COUNT(*) FROM dept_emp GROUP BY emp_no HAVING COUNT(*)>1;
+--------+----------+
| emp_no | COUNT(*) |
+--------+----------+
|      2 |        2 |
|      5 |        2 |
|      6 |        2 |
|      7 |        2 |
|      8 |        2 |
|     12 |        2 |
|     13 |        2 |
|     15 |        2 |
|     16 |        2 |
+--------+----------+

SELECT * FROM titles WHERE to_date BETWEEN "2019-01-01" AND "2019-12-31";
+--------+--------------------+------------+------------+
| emp_no | title              | from_date  | to_date    |
+--------+--------------------+------------+------------+
|      2 | Degree in Business | 2015-09-12 | 2019-04-23 |
|      5 | Degree in Business | 2015-09-12 | 2019-04-23 |
|      7 | Degree in Business | 2015-09-12 | 2019-04-23 |
|      8 | Degree in Business | 2015-09-12 | 2019-04-23 |
|     12 | Degree in Business | 2015-09-12 | 2019-04-23 |
|     17 | Degree in Business | 2015-09-12 | 2019-04-23 |
+--------+--------------------+------------+------------+

SELECT UCASE(first_name) FROM employees;
+-------------------+
| UCASE(first_name) |
+-------------------+
| JOSEP             |
| JUAN              |
| SARA              |
| JOSEP             |
| JOSEP             |
| MARIA             |
| DIANA             |
| FERNANDO          |
| CAMILA            |
| FLORENCIA         |
| CAMILA            |
| RAMIRO            |
| LIONEL            |
| MARIA             |
| WISIN             |
| ARNOLD            |
+-------------------+

SELECT employees.first_name, employees.last_name, dept_emp.dept_no FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no;
+------------+------------+---------+
| first_name | last_name  | dept_no |
+------------+------------+---------+
| Josep      | Romero     | A01     |
| Josep      | Romero     | A04     |
| Josep      | Llagostera | A01     |
| Josep      | Llagostera | A04     |
| Josep      | Vilagut    | A01     |
| Josep      | Vilagut    | A04     |
| Maria      | Cano       | A04     |
| Maria      | Cano       | A07     |
| Diana      | Benedetto  | A04     |
| Diana      | Benedetto  | A07     |
| Camila     | Artegui    | A01     |
| Camila     | Artegui    | A07     |
| Ramiro     | Cuernavaca | A01     |
| Ramiro     | Cuernavaca | A04     |
| Maria      | Dubois     | A01     |
| Maria      | Dubois     | A04     |
| Wisin      | Yandel     | A01     |
| Wisin      | Yandel     | A04     |
+------------+------------+---------+

SELECT COUNT(dept_manager.emp_no), employees.first_name, employees.last_name FROM dept_manager INNER JOIN employees ON dept_manager.emp_no = employees.emp_no GROUP BY dept_manager.emp_no HAVING COUNT(dept_manager.emp_no)>0;
+----------------------------+------------+-------------+
| COUNT(dept_manager.emp_no) | first_name | last_name   |
+----------------------------+------------+-------------+
|                          1 | Juan       | Fernandez   |
|                          1 | Sara       | Montcada    |
|                          1 | Fernando   | Ballesteros |
|                          1 | Camila     | Gonzalez    |
|                          1 | Florencia  | De Vicentis |
|                          1 | Lionel     | Messi       |
+----------------------------+------------+-------------+

SELECT DISTINCT first_name FROM employees;
+------------+
| first_name |
+------------+
| Josep      |
| Juan       |
| Sara       |
| Maria      |
| Diana      |
| Fernando   |
| Camila     |
| Florencia  |
| Ramiro     |
| Lionel     |
| Wisin      |
| Arnold     |
+------------+

 DELETE employees, salaries FROM employees JOIN salaries ON employees.emp_no = salaries.emp_no WHERE salaries.salary > 20000;

DELETE departments FROM departments JOIN dept_emp ON departments.dept_no = dept_emp.dept_no WHERE COUNT()