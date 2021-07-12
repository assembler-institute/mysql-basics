-- Change the name of an employee. To do this, generate a query 
-- that affects only a certain employee based on their name, 
-- surname and date of birth.
UPDATE employees SET first_name = 'Marc', last_name = 'Sola' 
WHERE first_name = 'Clark' AND last_name = 'Ken' AND birth_date ='1998-12-01';

-- Change the name of all departments in one query.
INSERT INTO departments(dept_no, dept_name)
VALUES 
(CHAR(102,105,110), 'finance department'), 
(CHAR(104,114), 'human resoruces department'), 
(CHAR(112,114,111,100), 'production department'), 
(CHAR(115,101,114), 'service department'), 
(CHAR(115,117,112), 'supply department') 
ON DUPLICATE KEY UPDATE dept_name = VALUES(dept_name); 
