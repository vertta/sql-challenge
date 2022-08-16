/*1. List the following details of each employee: 
   employee number, last name, first name, sex, and salary.
*/
SELECT 
emp.emp_no "employee number"
,emp.last_name "last name"
,emp.first_name "first name"
,emp.sex
, sal.salary 
FROM employees emp
INNER JOIN salaries sal ON emp.emp_no = sal.emp_no;