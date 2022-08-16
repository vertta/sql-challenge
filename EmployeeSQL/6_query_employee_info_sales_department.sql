--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select 
    emp.emp_no as "employee number"
   ,emp.last_name as "last name "
   ,emp.first_name as "first name" 
   ,dept.dept_name as "department name"
   from employees emp
inner join dept_emp depe on emp.emp_no = depe.emp_no 
inner join departments dept on depe.dept_no = dept.dept_no
where dept.dept_name = 'Sales';