-- SIMPLE UPDATE MULTIPLE CONDITIONALS
UPDATE employees 
SET first_name= 'Fulano' 
WHERE first_name='Cristian' and last_name='Hernandez' and birth_date='1987-07-17';

-- MULTIPLE UPDATE
UPDATE departments
    SET dept_name = (case 
                         when dept_no = '1' then 'BACK_end'
                         when dept_no = '2' then 'FRONT_end'
                         when dept_no = '3' then 'BDD'
                         when dept_no = '4' then 'ADMIN'
                         when dept_no = '5' then 'ILLUST'
                         when dept_no = '6' then 'HR'
                    end)
    WHERE dept_no in ('1', '2','3','4','5','6');