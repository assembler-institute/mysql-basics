
-- Insert value to table employees
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date)
VALUES 
(1, '1980-02-18', 'Carlos', 'Ochoa', 'M', '2005-06-04'),
(2, '1993-02-18', 'Teresa', 'Calvo', 'F', '2014-04-15'),
(3, '1982-02-18', 'Pilar', 'Paraiso', 'F', '2008-08-02'),
(4, '1995-02-18', 'Virginia', 'Gomez', 'F', '2020-07-30'),
(5, '1984-02-18', 'Ana', 'Navarra', 'F', '2014-05-30'),
(6, '1994-02-18', 'Carlos', 'Lopez', 'M', '2019-07-02'),
(7, '1986-02-18', 'Teresa', 'Martinez', 'F', '2017-04-18'),
(8, '1987-02-18', 'Ana', 'Ochoa', 'F', '2015-06-18'),
(9, '1996-02-18', 'Miguel', 'Ikene', 'M', '2020-01-24'),
(10, '1989-02-18', 'Fernando', 'Sanchez', 'M', '2011-09-30'),
(11, '1990-02-18', 'Paula', 'Perez', 'F', '2017-02-24'),
(12, '1975-02-18', 'Esperanza', 'Martin', 'F', '2012-03-20'),
(13, '1976-02-18', 'Belma', 'Gomez', 'F', '2005-11-28'),
(14, '1977-02-18', 'Paula', 'Lopez', 'F', '2009-04-18'),
(15, '1991-02-18', 'Juan', 'Caley', 'M', '2015-10-12');


-- Insert value to table salaries
INSERT INTO salaries (emp_no, salary, from_date, to_date)
VALUES 
(1, 9000, '2005-06-04', '2010-01-31'),
(1, 18000, '2010-02-01', '2012-12-31'),
(1, 26000, '2013-01-01', now()),
(2, 16000, '2014-04-15', now()),
(3, 18000, '2008-08-02', '2015-06-30'),
(3, 38000, '2015-07-01', now()),
(4, 22000, '2020-07-30', now()),
(5, 18000, '2014-05-30', '2020-04-30'),
(5, 36000, '2020-05-01', now()),
(6, 40000, '2019-07-02', now()),
(7, 42000, '2017-04-18', now()),
(8, 12000, '2015-06-18', now()),
(9, 24000, '2020-01-24', now()),
(10, 18000, '2011-09-30', '2019-09-30'),
(10, 35000, '2019-10-01', now()),
(11, 26000, '2017-02-24', now()),
(12, 12000, '2012-03-20', now()),
(13, 15000, '2005-11-28', '2012-08-31'),
(13, 42000, '2012-08-31', now()),
(14, 45000, '2009-04-18', now()),
(15, 28000, '2015-10-12', now());


-- Insert value to table departments
INSERT INTO departments (dept_no, dept_name)
VALUES
('D01', 'Purchasing'),
('D02', 'Marketing'),
('D03', 'Accounting & Finance'),
('D04', 'Human Resource'),
('D05', 'Production'),
('D06', 'R&D');


-- Insert value to table dept_emp
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date)
VALUES
(1, 'D02', '2005-06-04', '2012-12-31'),
(1, 'D05', '2010-02-01', now()),
(2, 'D04', '2014-04-15', '2018-04-15'),
(2, 'D02', '2018-04-16', now()),
(3, 'D04', '2008-08-02', now()),
(4, 'D01', '2020-07-30', now()),
(5, 'D03', '2014-05-30', '2017-07-15'),
(5, 'D06', '2017-07-16', now()),
(6, 'D01', '2019-07-02', now()),
(7, 'D02', '2017-04-18', '2020-10-15'),
(7, 'D05', '2020-10-16', now()),
(8, 'D03', '2015-06-18', '2019-02-16'),
(8, 'D04', '2019-02-17', now()),
(9, 'D01', '2020-01-24', now()),
(10, 'D02', '2011-09-30', '2013-01-31'),
(10, 'D05', '2013-02-01', now()),
(11, 'D03', '2017-02-24', '2018-04-15'),
(11, 'D01', '2018-04-16', now()),
(12, 'D06', '2012-03-20', '2016-06-30'),
(12, 'D02', '2016-07-01', now()),
(13, 'D03', '2005-11-28', '2009-10-31'),
(13, 'D05', '2009-11-01', now()),
(14, 'D01', '2009-04-18', '2020-01-31'),
(14, 'D06', '2020-02-01', now()),
(15, 'D02', '2015-10-12', '2017-03-31'),
(15, 'D05', '2017-04-01', now());

-- Insert value to table dept_manager
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date)
VALUES
(1, 'D05', '2010-02-01', now()),
(4, 'D01', '2020-07-30', now()),
(5, 'D06', '2017-07-16', now()),
(9, 'D01', '2020-01-24', now()),
(14, 'D06', '2020-02-01', now());


-- Insert value to table titles
INSERT INTO titles (emp_no, title, from_date, to_date)
VALUES
(1, 'Bachelor of Commerce', '2002-08-15', NULL),
(2, 'Bachelor of Commerce', '2020-06-19', NULL),
(3, 'BA in Humanities & Social Sciences', '2005-10-01', NULL),
(4, 'Bachelor of Logistics Management', '2020-07-30', NULL),
(5, 'BA in Finance', '2020-05-01', NULL),
(6, 'Bachelor of Commerce', '2015-05-20', NULL),
(7, 'Bachelor of Economics Engineering', '2020-04-18', NULL),
(8, 'Bachelor of Human Resource Management', '2010-02-16', NULL),
(9, 'Bachelor of Logistics Management', '2019-05-25', NULL),
(10, 'Bachelor of Marketing', '2020-10-01', NULL),
(11, 'Bachelor of Civil Engineering', '2020-02-24', NULL),
(12, 'Bachelor of Economics Engineering', '2010-10-15', NULL),
(13, 'Bachelor of Finance and Accounting', '2000-05-24', NULL),
(14, 'Bachelor of Economics Engineering', '2006-12-03', NULL),
(15, 'Bachelor of Industrial Technologies Engineering', '2020-10-12', NULL);