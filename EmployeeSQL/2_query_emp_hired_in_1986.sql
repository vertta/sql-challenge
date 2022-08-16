--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT  
 first_name  AS "first name"
,last_name  AS "last name"
, hire_date AS "hire date"
FROM employees
WHERE to_char(hire_date,'YYYY') = '1986';