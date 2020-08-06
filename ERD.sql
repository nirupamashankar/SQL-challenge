departments
-
dept_no PK INT FK >- dept_emp.dept_no
dept_name VARCHAR

employees
-
emp_no PK INT FK >- salaries.emp_no
emp_title VARCHAR FK >- titles.title
birth_date DATE
first_name VARCHAR
last_name VARCHAR
sex VARCHAR
hire_date DATE

dept_emp
-
dept_no INT FK >- employees.emp_no
emp_no PK INT

dept_manager
-
emp_no INT 
dept_no INT FK >- dept_emp.dept_no

titles
-
title_id PK VARCHAR
title VARCHAR

salaries
-
emp_no PK INT
salary BIGINT