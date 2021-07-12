-- Insert 15 entries in employees table
INSERT INTO employees (emp_no, birth_date, first_name, last_name, gender, hire_date) 
VALUES
(1, '2000-12-01', 'John', 'Wick', 'M', now()),
(2, '1999-12-01', 'Danielle', 'Wilson', 'F', now()),
(3, '1998-12-01', 'Clark', 'Ken', 'M', now()),
(4, '2001-12-01', 'Alia', 'Jenkins', 'F', now()),
(5, '1997-12-01', 'Chris', 'Evans', 'M', now()),
(6, '2004-12-01', 'Scarlet', 'Witch', 'F', now()),
(7, '1995-12-01', 'Briggs', 'Ada', 'M', now()),
(8, '2002-12-01', 'Ada', 'Wong', 'F', now()),
(9, '2001-11-01', 'Leon', 'Kennedy', 'M', now()),
(10, '2000-12-01', 'Claire', 'Redfield', 'F', now()),
(11, '2000-12-01', 'Chris', 'Redfield', 'M', now()),
(12, '2001-12-01', 'Johnny', 'Silverhand', 'M', now()),
(13, '2002-12-01', 'Johnny', 'Silverhand', 'M', now()),
(14, '2003-12-01', 'Johnny', 'Silverhand', 'M', now()),
(15, '1995-12-01', 'Samantha', 'Jones', 'F', now());

-- Insert salaries between 5000 and 50000 for the employees
INSERT INTO salaries (emp_no, salary, from_date, to_date) 
VALUES
(1, 5000, '2010-04-22', '2020-04-22'),
(2, 6000, '2011-03-22', '2021-04-22'),
(3, 7000, '2007-05-22', '2017-04-22'),
(4, 9000, '2003-11-22', '2013-04-22'),
(5, 11000, '2010-01-22', '2020-04-22'),
(6, 15000, '2013-09-22', '2023-04-22'),
(7, 18000, '2012-10-22', '2022-04-22'),
(8, 24000, '2008-04-22', '2018-04-22'),
(9, 29000, '2011-07-22', '2021-04-22'),
(10, 35000,'2010-02-22', '2020-04-22'),
(11, 38000,'2004-05-22', '2014-04-22'),
(12, 40000,'2015-08-22', '2025-04-22'),
(13, 30000,'2010-04-22', '2020-04-22'),
(14, 45000,'2012-12-22', '2022-04-22'),
(15, 50000,'2010-04-22', '2021-04-22');

INSERT INTO salaries (emp_no, salary, from_date, to_date) 
VALUES
(1, 8000, '2000-04-22', '2010-04-21'),
(2, 5000, '2001-03-22', '2011-04-21'),
(3, 6000, '1997-05-22', '2007-04-21'),
(4, 8000, '1993-11-22', '2003-04-21'),
(5, 10000, '2000-01-22', '2020-04-21');

-- Insert corporation departments
INSERT INTO departments (dept_no, dept_name) 
VALUES
(CHAR(115,101,114) , 'service'),
(CHAR(115,117,112) , 'supply'),
(CHAR(112,114,111,100) , 'production'),
(CHAR(102,105,110) , 'finance'),
(CHAR(104,114) , 'human resoruces');

-- Insert corporation titles
INSERT INTO titles (emp_no, title, from_date, to_date) 
VALUES
(1 , 'service degree', '2020-04-21', now()),
(2 , 'supply degree', '2020-05-22', now()),
(3 , 'production degree', '2020-03-20', now()),
(4 , 'finance degree', '2020-02-21', now()),
(5 , 'human resources degree', '2020-01-01', now()),
(6 , 'philosophy degree', '2010-04-21', now()),
(7 , 'maths degree', '2011-04-21', now()),
(8 , 'physics degree', '2012-04-21', now()),
(9 , 'catalan philology degree', '2013-04-21', now()),
(10 , 'spanish philology degree', '2014-04-21', now()),
(11 , 'english philology degree', '2015-04-21', now()),
(12 , 'psychology degree', '2010-03-21', now()),
(13 , 'art degree', '2011-04-21', now()),
(14 , 'videogames degree', '2017-04-21', now()),
(15 , 'new technologies degree', '2018-04-21', now());

-- Insert for dept_emp
INSERT INTO dept_emp (emp_no, dept_no, from_date, to_date) 
VALUES
(1 , CHAR(115,101,114), '2020-04-21', now()),
(1 , CHAR(112,114,111,100), '2020-04-21', now()),
(2 , CHAR(115,101,114), '2020-05-22', now()),
(2 , CHAR(112,114,111,100), '2020-05-22', now()),
(3 , CHAR(115,101,114), '2020-03-20', now()),
(3 , CHAR(112,114,111,100), '2020-03-20', now()),
(4 , CHAR(102,105,110), '2020-02-21', now()),
(4 , CHAR(104,114), '2020-02-21', now()),
(5 , CHAR(102,105,110), '2020-01-01', now()),
(5 , CHAR(104,114), '2020-01-01', now()),
(6 , CHAR(102,105,110), '2010-04-21', now()),
(6 , CHAR(104,114), '2010-04-21', now()),
(7 , CHAR(102,105,110), '2011-04-21', now()),
(7 , CHAR(104,114), '2011-04-21', now()),
(8 , CHAR(102,105,110), '2012-04-21', now()),
(8 , CHAR(104,114), '2012-04-21', now()),
(9 , CHAR(115,117,112), '2013-04-21', now()),
(9 , CHAR(102,105,110), '2013-04-21', now()),
(10 , CHAR(115,117,112), '2014-04-21', now()),
(10 , CHAR(102,105,110), '2014-04-21', now()),
(11 , CHAR(115,117,112), '2015-04-21', now()),
(12 , CHAR(102,105,110), '2010-03-21', now()),
(13 , CHAR(104,114), '2011-04-21', now()),
(14 , CHAR(112,114,111,100), '2017-04-21', now()),
(15 , CHAR(104,114), '2018-04-21', now());

-- Insert for dept_manager
INSERT INTO dept_manager (emp_no, dept_no, from_date, to_date) 
VALUES
(1, CHAR(115,101,114), '2021-07-11', now()),
(2, CHAR(112,114,111,100), '2021-07-11', now()),
(3, CHAR(115,101,114), '2020-03-20', now()),
(4, CHAR(104,114), '2021-07-11', now()),
(5, CHAR(102,105,110), '2021-07-10', now()),
(6, CHAR(104,114), '2010-04-21', now()),
(7, CHAR(102,105,110), '2011-04-21', now()),
(8, CHAR(102,105,110), '2012-04-21', now()),
(9, CHAR(115,117,112), '2013-04-21', now()),
(10, CHAR(115,117,112), '2014-04-21', now());
