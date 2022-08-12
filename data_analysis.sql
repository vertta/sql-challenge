--1. List the following details of each employee: employee number, last name, first name, sex, and salary.

select emp.emp_no "employee number",emp.last_name "last name", emp.first_name "first name", emp.sex, sal.salary 
  from employees emp
  inner join salaries sal on emp.emp_no = sal.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.
select first_name "first name",last_name "last name", hire_date "hire date"
from employees
where to_char(hire_date,'YYYY')   = '1986'


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
--department number, department name, the manager's employee number, last name, first name
select 
   dept.dept_no "Department Number"
  ,dept. dept_name  "Department Name" 
  ,emp.emp_no "Managers Employee Number"
  ,emp.last_name "Last Name"
  ,emp.first_name "First Name"
  from dept_manager deptmgr
    inner join departments dept on deptmgr.dept_no = dept.dept_no
    inner join employees emp on deptmgr.emp_no = emp.emp_no



--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

select emp.emp_no, emp.last_name, emp.first_name, dept.dept_name
  from employees emp
  inner join dept_emp depe on emp.emp_no = depe.emp_no 
  inner join departments dept on depe.dept_no = dept.dept_no
  
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select first_name as "first name", last_name as "last name", sex from employees 
where first_name = 'Hercules'
and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select 
   emp.emp_no as "employee number"
   , emp.last_name as "last name "
   , emp.first_name as "first_name" 
   ,dept.dept_name as "department_name"
   from employees emp
inner join dept_emp depe on  emp.emp_no = depe.emp_no 
inner join departments dept on depe.dept_no = dept.dept_no and dept_name = 'Sales'

--select count(*) from dept_emp
--where dept_no in (select dept_no from departments where dept_name = 'Sales')
   

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
select 
    emp.emp_no as "employee number"
   ,emp.last_name as "last name "
   ,emp.first_name as "first_name" 
   ,dept.dept_name as "department name"
   from employees emp
   where depe.dept_no in (
      select dept_no 
      from departments dept
      where dept_name = 'Sales' or dept_name = 'Development'
  )
--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
select count(last_name),last_name from employees
group by last_name 
order by last_name desc
