## Background

It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

I was asked to design tables to hold data in the CSVs (data modeling), import the CSVs into a SQL (Postgres) database(data engineering), and answer questions (data analysis).

## Data Modeling
Entity Relationship Diagram (ERD) for Previous Employee Database

<img width="552" alt="image" src="https://user-images.githubusercontent.com/75756974/184807744-a5b419d8-8a6c-4d67-82b3-4ef2e653aa30.png">

## Data Engineering
Created a reusable process for people that may want to load data locally for analysis. I created database and imported files using PSQL process 

Create Database using PSQL Utilities
![create_hr_db_and_tables_psql](https://user-images.githubusercontent.com/75756974/184806066-d5180f55-d72c-403c-b7a6-97c9509add9e.gif)

Imported table data from CSV files into postgres using PSQL Utility.   This is a faster way to import besides using the GUI

![load_hr_tables_psql](https://user-images.githubusercontent.com/75756974/184806856-cf49f407-ad3b-40df-930d-d60c2db7fe2b.gif)

### Script Repository  [Click Here](https://github.com/vertta/sql-challenge/tree/main/EmployeeSQL)

## Data Analysis
The data was analyzed using eight queries based on required questions some of the results are listed below.

List first name, last name, and hire date for employees who were hired in 1986. 
<img width="319" alt="image" src="https://user-images.githubusercontent.com/75756974/185028472-b89d9cad-8aab-4505-86c6-a4ab841f7323.png">

List the manager of each department with the following information:  department number, department name, the manager's employee number, last name, first name.
<img width="326" alt="image" src="https://user-images.githubusercontent.com/75756974/185028309-43084d37-7657-4acf-977f-e8951f0fcb4c.png">

List the frequency count of employee last names (i.e., how many employees share each last name) in descending order.
<img width="203" alt="image" src="https://user-images.githubusercontent.com/75756974/185028698-825528cc-3534-412a-bca5-befb353d889b.png">

## Bonus
As a bonus I was asked the following questions: 
Create a histogram to visualize the most common salary ranges for employees.

<img width="249" alt="image" src="https://user-images.githubusercontent.com/75756974/185027590-3583d054-452b-4a9b-a206-3e694285c1ad.png">

As you can see from the charting $44, 000 - $68,000 was the most common salary range employees

I was also asked to chart the average salary per title 

<img width="293" alt="image" src="https://user-images.githubusercontent.com/75756974/185027713-74beb23b-9056-4a67-a869-dd3f418e235b.png">

