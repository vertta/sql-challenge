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

--2. List first name, last name, and hire date for employees who were hired in 1986.
SELECT  
 first_name  AS "first name"
,last_name  AS "last name"
, hire_date AS "hire date"
FROM employees
WHERE to_char(hire_date,'YYYY') = '1986';


/*3. List the manager of each department with the following information: 
    department number, department name, the manager's employee number, last name, first name.
*/

SELECT 
   dept.dept_no AS "department number"
  ,dept. dept_name  AS "department name" 
  ,deptmgr.emp_no AS "manager's employee number"
  ,emp.last_name AS "last name"
  ,emp.first_name  AS "first name"
FROM dept_manager AS deptmgr
INNER JOIN  departments dept ON deptmgr.dept_no = dept.dept_no
INNER JOIN employees emp ON deptmgr.emp_no = emp.emp_no;

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
  
  
--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
select 
  first_name as "first name"
 ,last_name as "last name"
 ,sex 
from employees 
where first_name = 'Hercules'
and last_name like 'B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select 
    emp.emp_no as "employee number"
   ,emp.last_name as "last name "
   ,emp.first_name as "first_name" 
   ,dept.dept_name as "department name"
   from employees emp
inner join dept_emp depe on emp.emp_no = depe.emp_no 
inner join departments dept on depe.dept_no = dept.dept_no
where dept.dept_name = 'Sales';

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
   
--8. List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
SELECT 
    count(last_name)
    ,last_name 
FROM employees
GROUP BY last_name 
ORDER BY last_name DESC;
