/*4. List the department of each employee with the following information: 
employee number, last name, first name, and department name.
*/

SELECT 
  emp.emp_no AS "Employee Number"
 ,emp.last_name AS "Last Name"
 ,emp.first_name AS "First Name"
 ,dept.dept_name AS "Department Name"
FROM employees emp
INNER JOIN dept_emp depe ON emp.emp_no = depe.emp_no 
INNER JOIN departments dept ON depe.dept_no = dept.dept_no
order by emp.emp_no
  