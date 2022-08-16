--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
    emp.emp_no as "employee number"
   ,emp.last_name as "last name "
   ,emp.first_name as "first name" 
   ,dept.dept_name as "department name"
FROM employees emp
INNER JOIN dept_emp demp ON emp.emp_no = demp.emp_no
INNER JOIN departments dept ON demp.dept_no = dept.dept_no 
WHERE dept_name in ('Sales', 'Development');