-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.
-- clean up tables if exists by dropping them before importing data 

drop table if exists Titles cascade;
drop table if exists employees cascade;
drop table if exists departments cascade;
drop table if exists dept_emp cascade;
drop table if exists dept_manager cascade;
drop table if exists salaries cascade;

-- Create tables for each CSV file 

CREATE TABLE "titles" (
    "title_id" varchar(255)   NOT NULL,
    "title" varchar(255)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id"
     )
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL,
    "emp_title" varchar(255)   NOT NULL,
    "birthdate" date   NOT NULL,
    "first_name" varchar(255)   NOT NULL,
    "last_name" varchar(255)   NOT NULL,
    "sex" varchar(1)   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "departments" (
    "dept_no" varchar(255)   NOT NULL,
    "dept_name" varchar(255)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(255)   NOT NULL,
    primary key (emp_no,dept_no)  
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(255)   NOT NULL,
    "emp_no" int   NOT NULL,
    primary key(dept_no, emp_no)   
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" float   NOT NULL
);

ALTER TABLE "employees" ADD CONSTRAINT "fk_employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "titles" ("title_id");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "dept_emp" ADD CONSTRAINT "fk_dept_emp_dept_no" FOREIGN KEY("dept_no")
REFERENCES "departments" ("dept_no");

ALTER TABLE "dept_manager" ADD CONSTRAINT "fk_dept_manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

ALTER TABLE "salaries" ADD CONSTRAINT "fk_salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "employees" ("emp_no");

