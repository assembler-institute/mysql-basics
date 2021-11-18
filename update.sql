
-- 2. DATA UPDATE:

  -- EMPLOYEE UPDATE. CHANGE THE NAME OF ONE REPEATED NAME. AFFECT IT USING NAME, SURNAME AND DATE OF BIRTH.
  UPDATE employees 
    SET first_name = 'Rodrygo'
    WHERE (
      first_name = 'John' AND 
      last_name LIKE '%G%' AND 
      birth_date = '1992-09-08'
    );

  -- CHANGE THE NAME FOR ALL THE DEPARTMENTS..
  UPDATE departments 
    SET dept_name = 
      CASE
        WHEN dept_no = '$$$' THEN 'Finance & Administration' 
        WHEN dept_no = 'mkt' THEN 'Marketing, PR & Advertising' 
        WHEN dept_no = 'POS' THEN 'Sales & Customer Service' 
        WHEN dept_no = 'IT' THEN 'New technologies and IT development' 
        WHEN dept_no = 'LG' THEN 'Logistics & SCM' 
      END;