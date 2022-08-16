/* Use this script to reimport data 
Note: CSV will need to be in a folder named data inside 
   CSV files will need to be provided. 
   
   This script is used for a one time import. 
   Execute from PSQL tool
  
 
*/
\! echo "Starting data import for file titles.csv"
\COPY titles FROM 'C:/imports/data/titles.csv' csv header;
\! echo "done importing..."
select count(1) from titles;

\! echo "Starting data import for file employees.csv"
\COPY employees FROM 'C:/imports/data/employees.csv' csv header;
\! echo "done importing..."

select count(1) from employees;
\! echo "Starting data import for file departments.csv"
\COPY departments FROM 'C:/imports/data/departments.csv' csv header;
\! echo "done importing..."
select count(1) from departments;

\! echo "Starting data import for file dept_emp.csv"
\COPY dept_emp FROM 'C:/imports/data/dept_emp.csv' csv header;
\! echo "done importing..."
select count(1) from dept_emp;

\! echo "Starting data import for file dept_manager.csv"
\COPY dept_manager FROM 'C:/imports/data/dept_manager.csv' csv header;
\! echo "done importing..."
select count(1) from dept_manager;

\! echo "Starting data import for file salaries.csv"
\COPY salaries FROM 'C:/imports/data/salaries.csv' csv header;
\! echo "done importing..."
select count(1) from salaries;
