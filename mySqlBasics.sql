-- INSERT EMPLOYEES ------
INSERT INTO `employees` VALUES (1,"1991-06-03", "Enrique", "Hidalgo", "M", "2021-08-19");

INSERT INTO `employees` VALUES (2,"1983-03-21", "Tupac", "Amaru", "M", "1994-02-06");
INSERT INTO `employees` VALUES (3,"2000-03-01", "Alfredo", "González", "M", "2014-07-22");
INSERT INTO `employees` VALUES (4,"1973-03-21", "Alfredo", "Presidio", "M", "2014-07-22"),
(5,"2003-03-15", "Juani", "Perez", "M", "2014-07-22"),
(6,"1985-07-17", "Mike", "Stewart", "M", "2018-04-07"),
(7,"2006-09-02", "Snoop", "Dog", "M", "2014-07-22"),
(8,"1999-02-25", "Pedro", "Picapiedra", "M", "2003-03-15"),
(9,"2004-07-01", "Ana", "Santana", "F", "2014-07-22"),
(10,"1988-08-01", "Jennifer", "Wellington", "F", "2014-07-22"),
(11,"2010-05-23", "Pilar", "Campos", "F", "2014-07-22"),
(12,"2011-01-08", "Paula", "Suarez", "F", "2003-03-15"),
(13,"2015-03-04", "Francisco", "Martínez", "M", "2004-07-01"),
(14,"2018-04-07", "Diego", "Wesley", "M", "2014-07-22"),
(15,"2020-05-03", "Alfredo", "Stricagnoli", "M", "2014-07-22")
;


-- INSERT SALARIES ------

INSERT INTO salaries VALUES (1, 30000, "2010-05-07", CURDATE());

SELECT * FROM salaries; 

INSERT INTO salaries VALUES (2, 25000, "2008-08-22", "2009-09-22"),
(2, 35000, "2009-09-22", CURDATE());

INSERT INTO salaries VALUES (3, 25000, "2008-08-24", "2009-09-22"),
(4, 35000, "2015-07-22", CURDATE()),
(5, 35000, "2016-07-22", CURDATE()),
(6, 35000, "2018-04-07", "2019-04-07"),
(6, 40000, "2019-04-07", CURDATE()),
(7, 35000, "2017-07-22", CURDATE()),
(8, 35000, "2003-03-15", "2008-03-15"),
(8, 40000, "2008-03-15", CURDATE()),
(9, 35000, "2014-08-22", "2018-07-22"),
(9, 40000, "2018-07-22", CURDATE()),
(10, 35000, "2014-09-22", CURDATE()),
(11, 35000, "2014-09-24", CURDATE()),
(12, 35000, "2003-03-15", CURDATE()),
(13, 35000, "2004-07-01", CURDATE()),
(14, 35000, "2014-08-19", CURDATE()),
(15, 35000, "2014-08-25", "2014-07-22"),
(15, 50000, "2014-08-21", CURDATE())
;

-- INSERT TITLES ------


INSERT INTO titles VALUES
(1, "Phd Physics", "2020-06-12", NULL),
(2, "Phd Architecture", "2020-05-21", NULL),
(3, "Phd Marketing", "2020-02-28", NULL),
(4, "Phd Biology", "2016-07-11", NULL),
(5, "Phd Business", "2019-03-31", NULL),
(6, "Phd Law", "2019-06-24", NULL),
(7, "Phd Physical Education & Sports", "2020-07-13", NULL),
(8, "Phd Mechanical Engineer", "2020-06-06", NULL),
(9, "Phd Civil Engineer", "2019-09-23", NULL),
(10, "Phd Computer Sciences", "2020-09-18", NULL),
(11, "Phd Arts", "2021-05-21", NULL),
(12, "Phd Nursery", "2021-07-21", NULL),
(13, "Phd Big Data", "2021-08-21", NULL),
(14, "Phd Devops", "2019-01-21", NULL),
(15, "Phd Psychology", "2017-03-21", NULL)
;

-- INSERT DEPARTMENTS ------

INSERT INTO departments VALUES
("1", "Finances"),
("2", "Health"),
("3", "Development"),
("4", "UI & Design"),
("5", "Direction"),
("6", "Marketing")
;

-- INSERT MANAGERS ------

INSERT INTO dept_manager VALUES
(4, "1", "2015-07-22", CURDATE()),
(7, "3", "2017-07-22", CURDATE()),
(9, "4", "2018-07-22", CURDATE()),
(10, "2", "2018-07-22", CURDATE()),
(11, "5", "2015-07-22", CURDATE()),
(14, "6", "2014-08-19", CURDATE())
;

-- INSERT DEPARTMENT/EMPLOYEES ------

INSERT INTO dept_emp VALUES
(1, "1", "2015-07-22", CURDATE()),
(1, "2", "2015-07-22", CURDATE()),
(2, "5", "2015-07-22", CURDATE()),
(3, "4", "2015-07-22", CURDATE()),
(3, "6", "2015-07-22", CURDATE()),
(4, "1", "2015-07-22", CURDATE()),
(4, "2", "2015-07-22", CURDATE()),
(5, "3", "2015-07-22", CURDATE()),
(5, "4", "2015-07-22", CURDATE()),
(6, "5", "2015-07-22", CURDATE()),
(7, "5", "2015-07-22", CURDATE()),
(7, "6", "2015-07-22", CURDATE()),
(8, "3", "2015-07-22", CURDATE()),
(8, "5", "2015-07-22", CURDATE()),
(9, "6", "2015-07-22", CURDATE()),
(10, "1", "2015-07-22", CURDATE()),
(10, "3", "2015-07-22", CURDATE()),
(11, "4", "2015-07-22", CURDATE()),
(12, "3", "2015-07-22", CURDATE()),
(12, "4", "2015-07-22", CURDATE()),
(13, "3", "2015-07-22", CURDATE()),
(14, "1", "2015-07-22", CURDATE()),
(14, "2", "2015-07-22", CURDATE()),
(15, "1", "2015-07-22", CURDATE()),
(15, "2", "2015-07-22", CURDATE())
;

UPDATE dept_emp SET from_date="2021-08-19" WHERE emp_no =1;

-- UPDATE EMPLOYEE 1 NAME ------


UPDATE  employees SET `first_name`="Chano Change", last_name ="Hidalgo Change", birth_date="1991-06-30" WHERE emp_no = 1;

-- UPDATE DEPARTMENT NAMES ------

UPDATE departments SET dept_name= "FINANCES CHANGED" WHERE dept_no = 1;
UPDATE departments SET dept_name= "HEALTH CHANGED" WHERE dept_no = 2;
UPDATE departments SET dept_name= "DEVELOPMENT CHANGED" WHERE dept_no = 3;
UPDATE departments SET dept_name= "UI & DESIGN CHANGED" WHERE dept_no = 4;
UPDATE departments SET dept_name= "DIRECTION CHANGED" WHERE dept_no = 5;
UPDATE departments SET dept_name= "MARKETING CHANGED" WHERE dept_no = 6;

-- UPDATE DEPARTMENT NAMES ------

SELECT * FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary > 20000);
SELECT * FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary < 10000);
SELECT * FROM employees WHERE emp_no IN(SELECT emp_no FROM salaries WHERE salary BETWEEN 14000 AND 50000);