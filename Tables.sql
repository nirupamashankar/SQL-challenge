--Create tables
Drop Table Departments
CREATE Table Departments(
dept_no VARCHAR(30),
dept_name VARCHAR(30) Not Null,
primary key (dept_no));

Select * from Departments

Drop Table Employees
Create Table Employees(
emp_no	VARCHAR(30) Not Null,
emp_title_id VARCHAR(30),
birth_date	DATE Not Null,
first_name	VARCHAR(30) Not Null,
last_name	VARCHAR(30) Not Null,
sex	VARCHAR(30) Not Null,
hire_date DATE Not Null,
Primary Key (emp_no)
);
Select * from Employees

Drop Table Dept_emp
Create Table Dept_emp (
emp_no	VARCHAR(30) Not Null,
dept_no VARCHAR(30),
Foreign Key (emp_no) references Employees(emp_no),
Foreign Key (dept_no) references Departments(dept_no)
);
Select * from Dept_emp

Drop Table Dept_manager

Create Table Dept_manager(
dept_no VARCHAR(30),
emp_no	VARCHAR(30) Not Null,
Foreign Key (emp_no) references Employees(emp_no),
Foreign Key (dept_no) references Departments(dept_no)
);
Select * from Dept_manager

Drop Table Salaries
Create Table Salaries(
emp_no	VARCHAR(30) Not Null,
salary BIGINT Not NUll, 
Foreign Key (emp_no) references Employees(emp_no)
);
Select * from Salaries

Drop Table Titles
Create Table Titles(
title_id VARCHAR(30) Not Null, 
title VARCHAR (30) Not Null 
);
Select * from Titles
