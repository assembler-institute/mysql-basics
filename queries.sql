--Employees

INSERT INTO `employees` (`emp_no`, `birth_date`, `first_name`, `last_name`, `gender`, `hire_date`) 
VALUES ('1', '1993-08-26', 'Berta', 'Garcia', 'F', '2020-01-15'),
('2', '2000/11/04', 'Lucia', 'del cacho', 'F', '2020-01-01'),
('3', '2001/02/07', 'Kristian', 'Krasimirov', 'M', '2020-01-20'), 
('4', '1990/05/12', 'Victor', 'Jauregui', 'M', '2020-02-10'), 
('5', '1990/06/12', 'Monica', 'Reverte', 'F', '2020-03-10'), 
('6', '1990/12/15', 'Sergi', 'Clemente', 'M', '2020-03-01'), 
('7', '1981/12/15', 'Valentino', 'Traverso', 'M', '2020-03-15'), 
('8', '1996/12/31', 'David', 'Moina', 'M', '2020-03-31'), 
('9', '1994/11/17', 'Isaura', 'Marti', 'F', '2020-04-01'), 
('10', '1993/10/10', 'Miquel', 'Abella', 'M', '2020-04-15'), 
('11', '1981/10/16', 'Wilson', 'Villena', 'M', '2023-04-30'), 
('12', '1981/10/21', 'Jesus', 'Velazquez', 'M', '2020-05-01'), 
('13', '1981/05/27', 'Kristian', 'Ruiz', 'F', '2023-05-15'), 
('14', '1980/05/24', 'David', 'Pizarro', 'M', '2020-05-31'), 
('15', '1994/05/22', 'Kristian', 'Moreno', 'M', '2020-06-01')

--Salary

INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('1', '49999', '2020-01-01', '2050-01-05');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('2', '49998', '2023-01-15', '2050-01-15');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('3', '5001', '2020-01-20', '2024-02-07');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('4', '45000', '2020-01-25', '2040-01-15');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('5', '50000', '2020-01-15', '2050-01-15');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('6', '44000', '2020-02-10', '2050-01-31');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('7', '35000', '2020-04-15', '2045-05-15');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('8', '45000', '2020-04-30', '2040-05-24');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('9', '50000', '2020-04-09', '2050-01-31');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('10', '50000', '2020-01-31', '2049-01-31');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('11', '40000', '2020-03-17', '2045-01-19');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('12', '30000', '2020-05-20', '2045-01-21');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('13', '6000', '2020-07-22', '2050-01-07');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('14', '50000', '2020-08-20', '2060-01-20');
INSERT INTO `salaries` (`emp_no`, `salary`, `from_date`, `to_date`) VALUES ('15', '7000', '2020-05-09', '2030-01-09');

--Department

INSERT INTO `departments` (`dept_no`, `dept_name`) VALUES ('1', 'Marketing Department'), 
('2', 'Operations Department'), 
('3', 'Finance Department'), 
('4', 'Sales Department');

INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '1', '2020-01-20', '2023-02-16'), ('1', '2', '2020-04-24', '2023-09-14');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('2', '3', '2022-01-13', '2023-02-17'), ('2', '4', '2021-05-20', '2023-05-26');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('6', '2', '2020-09-17', '2025-01-16'), ('6', '4', '2021-09-17', '2023-12-28');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('3', '1', '2021-01-26', '2023-01-31'), ('3', '2', '2021-01-28', '2023-04-26');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('4', '3', '2022-01-13', ''), ('4', '4', '2022-01-20', '2023-02-15');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '1', '2020-07-15', '2023-02-08'), ('5', '2', '2020-07-15', '2023-11-16');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('7', '1', '2020-06-24', '2023-03-16'), ('7', '3', '2021-01-15', '2023-04-12');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('8', '2', '2021-05-19', '2023-04-19'), ('8', '4', '2022-01-19', '2023-05-01');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('9', '1', '2022-06-16', '2023-03-17'), ('9', '2', '2021-01-15', '2023-04-27');
INSERT INTO `dept_emp` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('10', '3', '2022-01-14', '2023-03-23'), ('10', '4', '2020-09-10', '2023-04-08');


--Manager 

INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('1', '1', '2021-06-15', '2023-09-20'), ('2', '2', '2021-01-01', '2026-01-09');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('5', '3', '2021-04-14', '2024-06-20'), ('6', '4', '2022-01-18', '2024-03-13');
INSERT INTO `dept_manager` (`emp_no`, `dept_no`, `from_date`, `to_date`) VALUES ('7', '3', '2022-01-20', '2025-07-05');

--Degree

INSERT INTO `titles` (`emp_no`, `title`, `from_date`, `to_date`) VALUES ('1', 'Masters Degree', '2013-07-15', '2020-01-15'), 
('2', 'Masters Degree.', '2014-01-15', '2020-05-20'), 
('3', 'Bachelors Degree.', '2018-01-04', '2020-01-16'), 
('4', 'Bachelors Degree.', '2013-01-31', '2020-05-20'), 
('5', 'Doctoral Degree', '2013-01-16', '2020-04-15'), 
('6', 'Masters Degree.', '2013-01-01', '2019-05-15'), 
('7', 'Doctoral Degree', '2014-05-15', '2019-05-15'), 
('8', 'Bachelors Degree.', '2015-01-15', '2018-01-18'), 
('9', 'Doctoral Degree', '2013-01-01', '2019-06-12'), 
('10', 'Bachelors Degree.', '2013-05-15', '2019-01-20'), 
('11', 'Doctoral Degree', '2013-01-15', '2018-05-15'), 
('12', 'Bachelors Degree.', '2014-07-15', '2019-01-25'), 
('13', 'Masters Degree.', '2013-01-20', '2019-07-15'), 
('14', 'Bachelors Degree.', '2013-06-15', '2019-06-19'), 
('15', 'Masters Degree.', '2014-04-15', '2018-07-25');

--Update name

UPDATE `employees` SET `first_name` = 'Pablo' WHERE `employees`.`emp_no` = 11;

--Update department

UPDATE `departments` SET `dept_name` = 'Administration Department' WHERE `departments`.`dept_no` = '1';
UPDATE `departments` SET `dept_name` = 'Marketing Department' WHERE `departments`.`dept_no` = '2';
UPDATE `departments` SET `dept_name` = 'IT Department' WHERE `departments`.`dept_no` = '3';
UPDATE `departments` SET `dept_name` = 'Public Relations Department' WHERE `departments`.`dept_no` = '4';

--Select where salary > 20.000

SELECT emp_no,salary FROM `salaries` WHERE salary > 20000;

--Select where salary <10.000

SELECT emp_no,salary FROM `salaries` WHERE salary < 10000;

--Select where salary is between 14.000 and 50.000

SELECT emp_no,salary FROM `salaries` WHERE salary BETWEEN 10000 AND 50000;

--Count the number of employees

SELECT COUNT(*) FROM employees;

--Select all the employees that work in more than one department

SELECT emp_no, COUNT(*) FROM dept_emp GROUP BY emp_no HAVING COUNT(*)>1;

--Select the titles of the year 2020

SELECT title as total FROM titles WHERE DATE(to_date) BETWEEN '2020-01-01' AND DATE_ADD('2020-01-01', INTERVAL 1 YEAR);

--Select the name of all employees with capital letters

SELECT UPPER(first_name) FROM employees;

--Select the name, surname and name of the current department of each employee

SELECT e.first_name, e.last_name, d.dept_name FROM employees e JOIN departments d;

--Select manager with name and surname 

SELECT employees.first_name, employees.last_name, COUNT(*) as count FROM employees JOIN dept_manager ON employees.emp_no = dept_manager.emp_no GROUP BY employees.emp_no;

--Select the name of employees without any being repeated

SELECT DISTINCT first_name FROM employees;

--DELETE DATA

--Delete all employees with a salary greater than 20,000

DELETE FROM employees WHERE emp_no IN (SELECT emp_no FROM salaries WHERE salary > 20000);

--Remove the department that has more employees.

DELETE FROM departments WHERE dept_no = (SELECT dept_no FROM dept_emp GROUP BY dept_no ORDER BY count(dept_no) desc limit 1);

--My own data base

CREATE TABLE `videogames`.`videogames` (`id_company` INT NOT NULL AUTO_INCREMENT , 
    `name` VARCHAR(255) NOT NULL , 
    `ranking` INT NOT NULL , 
    PRIMARY KEY (`id_company`)) ENGINE = InnoDB;

CREATE TABLE `videogames`.`titles` (`id_title` INT NOT NULL AUTO_INCREMENT , 
    `title` VARCHAR(255) NOT NULL , 
    `pegi` INT NOT NULL , 
    PRIMARY KEY (`id_title`)) ENGINE = InnoDB;

CREATE TABLE `videogames`.`gametitltes` (`id` INT NOT NULL AUTO_INCREMENT , 
    `com_id` INT NOT NULL , 
    `game_id` INT NOT NULL , 
    PRIMARY KEY (`id`), 
    FOREIGN KEY (`com_id`) REFERENCES `videogames`(`id_company`), 
    FOREIGN KEY (`game_id`) REFERENCES `titles`(`id_titlte`)) ENGINE = InnoDB;

CREATE TABLE `videogames`.`sells` (`id_sell` INT NOT NULL AUTO_INCREMENT , 
    `title` VARCHAR(255) NOT NULL , 
    PRIMARY KEY (`id_sell`), 
    FOREIGN KEY(title) REFERENCES videogames(name)) ENGINE = InnoDB;

CREATE TABLE `videogames`.`most sales ranking` (`most_id` INT NOT NULL AUTO_INCREMENT , 
    `sold` INT NOT NULL , 
    `ip` INT NOT NULL , 
    PRIMARY KEY (`most_id`), 
    FOREIGN KEY(sold) REFERENCES sales(sold)) ENGINE = InnoDB;


INSERT INTO `videogames` (`id_company`, `name`, `ranking`) VALUES ('1', 'Sony', 'First'), ('2', 'Microsoft', 'Second');
INSERT INTO `videogames` (`id_company`, `name`, `ranking`) VALUES ('3', 'Nintendo', 'Third'), ('4', 'Capcom', 'Fourth');
INSERT INTO `videogames` (`id_company`, `name`, `ranking`) VALUES ('5', 'Activision Blizzard', 'Fifth');

INSERT INTO `titles` (`id_title`, `title`, `pegi`) VALUES ('1', 'Uncharted', '16'), ('2', 'God of War', '18');
INSERT INTO `titles` (`id_title`, `title`, `pegi`) VALUES ('3', 'World of Warcraft', '12'), ('4', 'Mario Kart 8 Deluxe', '3');
INSERT INTO `titles` (`id_title`, `title`, `pegi`) VALUES ('5', 'Gear of War', '16'), ('6', 'Resident Evil 4 Remake', '18');

INSERT INTO `gametitle` (`id`, `com_id`, `game_id`) VALUES ('1', '1', '1'), ('2', '1', '2');
INSERT INTO `gametitle` (`id`, `com_id`, `game_id`) VALUES ('3', '5', '3'), ('4', '3', '4');
INSERT INTO `gametitle` (`id`, `com_id`, `game_id`) VALUES ('5', '4', '6'), ('6', '2', '5');


INSERT INTO `sales` (`id_title`, `sold`) VALUES ('1', '40000000'), ('2', '4000000'), ('3', '50000000'), ('4', '46000000'), ('5', '30000000'), ('6', '60000000')

INSERT INTO `most sales ranking` (`most_id`, `sold`, `ip`) VALUES ('1', '40000000', '765674575'), ('2', '4000000', '6765787'), ('3', '50000000', '7868657'), ('4', '46000000', '675647476'), ('5', '30000000', '6574747'), ('6', '60000000', '32312453')
