-- SIMPLE QUERIES

-- INSERT DATA ----------------------------------------------------------------------------------------------------------------------------------------------
-- departments
insert into departments (dept_no, dept_name) values (1, 'Backend');
insert into departments (dept_no, dept_name) values (2, 'Frontend');
insert into departments (dept_no, dept_name) values (3, 'Database');
insert into departments (dept_no, dept_name) values (4, 'Deployment');
insert into departments (dept_no, dept_name) values (5, 'Data Science');
insert into departments (dept_no, dept_name) values (6, 'Consultant');
insert into departments (dept_no, dept_name) values (7, 'Administration');
insert into departments (dept_no, dept_name) values (8, 'Accountant');
insert into departments (dept_no, dept_name) values (9, 'Attendant');
insert into departments (dept_no, dept_name) values (10, 'Customer Service');
-- employees
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (1, '1993-06-24', 'Antonio', 'Rufino', 'M', '2021-10-11');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (2, '1991-07-25', 'Pepe', 'Gonzalez', 'M', '2022-11-12');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (3, '1997-08-26', 'Maria', 'Database', 'F', '2020-12-13');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (4, '1995-09-27', 'Pepita', 'Carrero', 'F', '2015-11-14');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (5, '1992-01-28', 'Angeles', 'Gutierrez', 'F', '2012-10-15');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (6, '1993-02-29', 'Marco', 'Polo', 'M', '2011-04-16');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (7, '1999-03-02', 'Victor', 'Krum', 'M', '2017-05-17');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (8, '1987-04-03', 'Hermione', 'Granger', 'F', '2018-02-18');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (9, '1983-05-04', 'Antonio', 'Junior', 'M', '2016-03-19');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (10, '1976-10-05', 'Aragorn', 'Senior', 'M', '2020-04-20');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (11, '1988-11-06', 'Kata', 'Codewar', 'F', '2021-05-21');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (12, '1983-12-07', 'Leyla', 'Ring', 'F', '2022-06-22');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (13, '1985-08-08', 'Luis', 'Verde', 'M', '2022-07-23');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (14, '1992-04-09', 'Sky', 'Rojo', 'M', '2014-08-24');
insert into employees (emp_no, birth_date, first_name, last_name, gender, hire_date) values (15, '1990-05-12', 'Antonio', 'Blue', 'M', '2016-09-25');
-- employees salaries
insert into salaries (emp_no, salary, from_date, to_date) values (1, 41000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (2, 40000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (3, 34000, '2019-12-01', '2020-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (3, 38000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (4, 48000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (5, 47000, '2019-12-01', '2020-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (5, 50000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (6, 41350, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (7, 6000, '2019-12-01', '2020-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (7, 12000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (8, 9000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (9, 24000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (10, 32000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (11, 38000, '2019-12-01', '2020-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (11, 40000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (12, 43000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (13, 26000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (14, 16000, '2019-12-01', '2020-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (14, 19000, '2020-12-01', '2021-12-31');
insert into salaries (emp_no, salary, from_date, to_date) values (15, 21460, '2020-12-01', '2021-12-31');
-- employees departments
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (1, 2, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (1, 6, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (2, 6, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (2, 5, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (3, 8, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (3, 8, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (4, 9, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (5, 10, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (6, 1, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (7, 4, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (7, 5, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (8, 6, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (8, 1, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (9, 10, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (9, 2, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (10, 2, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (10, 9, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (11, 5, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (11, 1, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (12, 5, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (12, 4, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (13, 9, '2019-12-01', '2020-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (13, 4, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (14, 6, '2020-12-01', '2021-12-31');
insert into dept_emp (emp_no, dept_no, from_date, to_date) values (15, 2, '2020-12-01', '2021-12-31');
-- employees managers
insert into dept_manager (emp_no, dept_no, from_date, to_date) values (1, 6, '2020-12-01', '2021-12-31');
insert into dept_manager (emp_no, dept_no, from_date, to_date) values (3, 8, '2020-12-01', '2021-12-31');
insert into dept_manager (emp_no, dept_no, from_date, to_date) values (11, 1, '2020-12-01', '2021-12-31');
insert into dept_manager (emp_no, dept_no, from_date, to_date) values (13, 4, '2020-12-01', '2021-12-31');
insert into dept_manager (emp_no, dept_no, from_date, to_date) values (7, 5, '2020-12-01', '2021-12-31');
-- employees titles
insert into titles (emp_no, title, from_date, to_date) values (1, 'frontend development', '2016-01-04', '2020-11-23');
insert into titles (emp_no, title, from_date, to_date) values (2, 'database management', '2016-03-05', '2020-10-22');
insert into titles (emp_no, title, from_date, to_date) values (3, 'business administration', '2017-04-09', '2020-12-25');
insert into titles (emp_no, title, from_date, to_date) values (4, 'mathematics', '2016-04-09', '2020-12-25');
insert into titles (emp_no, title, from_date, to_date) values (5, 'social work', '2017-04-09', '2020-12-25');
insert into titles (emp_no, title, from_date, to_date) values (6, 'java development', '2012-11-19', '2016-10-15');
insert into titles (emp_no, title, from_date, to_date) values (7, 'python development', '2013-04-21', '2017-02-17');
insert into titles (emp_no, title, from_date, to_date) values (8, 'business administration', '2014-05-12', '2018-09-13');
insert into titles (emp_no, title, from_date, to_date) values (9, 'mathematics', '2015-05-11', '2019-06-12');
insert into titles (emp_no, title, from_date, to_date) values (10, 'medicine', '2011-05-11', '2015-06-12');
insert into titles (emp_no, title, from_date, to_date) values (11, 'physics', '2010-05-11', '2014-06-12');
insert into titles (emp_no, title, from_date, to_date) values (12, 'mathematics doctor', '2009-05-11', '2013-06-12');
insert into titles (emp_no, title, from_date, to_date) values (13, 'computer management', '2011-05-11', '2015-06-12');
insert into titles (emp_no, title, from_date, to_date) values (14, 'computer science', '2010-05-11', '2014-06-12');
insert into titles (emp_no, title, from_date, to_date) values (15, 'data engineer', '2009-05-11', '2013-06-12');


-- UPDATE DATA ----------------------------------------------------------------------------------------------------------------------------------------------
-- employee
update employees set first_name = 'Alvaro' where first_name='Sky' and last_name='Rojo' and birth_date='1992-04-09';
-- departments
update departments set dept_name = 'medicine' where dept_no = 1;
update departments set dept_name = 'physical science' where dept_no = 2;
update departments set dept_name = 'mechanics' where dept_no = 3;
update departments set dept_name = 'restaurant service' where dept_no = 4;
update departments set dept_name = 'restaurant music' where dept_no = 5;
update departments set dept_name = 'legal advocacy' where dept_no = 6;
update departments set dept_name = 'biology' where dept_no = 7;
update departments set dept_name = 'biomedicine' where dept_no = 8;
update departments set dept_name = 'software development' where dept_no = 9;
update departments set dept_name = 'marine biology' where dept_no = 10;

-- GET DATA --------------------------------------------------------------------------------------------------------------------------------------------------

--

-- DELETE DATA --------------------------------------------------------------------------------------------------------------------------------------------------

-- salary more than 20000
delete from salaries where salary > 20000;
-- departments without use
delete from departments where dept_no not in (select dept_no from dept_emp) and dept_no not in (select dept_no from dept_manager);
-- department with more employees
delete from departments where dept_no in (select dept_no from (select dep.dept_no, COUNT(dep.dept_no) num_depts from departments dep join dept_emp emp on emp.dept_no = dep.dept_no group by dep.dept_no) as m 
where m.num_depts = (select MAX(maximums.num_depts) from (select dep.dept_no, COUNT(dep.dept_no) num_depts from departments dep join dept_emp emp on emp.dept_no = dep.dept_no group by dep.dept_no) as maximums));

-- OWN DATABASE ------------------------------------------------------------------------------------------------------------------------------------------------------------
