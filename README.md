## Background

It’s a beautiful spring day, and it’s been two weeks since you were hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remains of the database of employees from that period are six CSV files.

I was asked to design tables to hold data in the CSVs (data modeling), import the CSVs into a SQL (Postgres) database(data engineering), and answer questions (d ata analysis).

## Data Modeling
Entity Relationship Diagram (ERD) for Previous Employee Database
<img width="536" alt="image" src="https://user-images.githubusercontent.com/75756974/184804870-98cf2224-b35b-42c0-bf87-6d04de5aeaf1.png">


## Data Engineering
Created a reusable process for people that may want to load data locally for analysis. I created database and imported files using PSQL process 

Create Datanase using PSQL Utilities
![create_hr_db_and_tables_psql](https://user-images.githubusercontent.com/75756974/184806066-d5180f55-d72c-403c-b7a6-97c9509add9e.gif)

Imported table data from CSV files into postgres using PSQL Utility.   This is a faster way to import besides using the GUI

![load_hr_tables_psql](https://user-images.githubusercontent.com/75756974/184806856-cf49f407-ad3b-40df-930d-d60c2db7fe2b.gif)

## Data Analysis

