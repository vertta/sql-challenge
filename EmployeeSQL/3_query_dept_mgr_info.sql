
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