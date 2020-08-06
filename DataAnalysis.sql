--List the following details of each employee: employee number, last name, first name, 
--sex, and salary.
SELECT Employees.emp_no, 
Employees.last_name,
Employees.first_name,
Employees.sex,
Salaries.salary
FROM Employees
LEFT JOIN Salaries
ON Employees.emp_no = Salaries.emp_no
ORDER BY emp_no

--List first name, last name, and hire date for employees who were hired in 1986.

Select Employees.last_name,
Employees.first_name,
Employees.hire_date
From Employees
Where extract(year from hire_date)= '1986'  
ORDER BY emp_no;

--List the manager of each department with the following information: 
--dpt number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, 
departments.dept_name,
dept_manager.emp_no,
employees.last_name, 
employees.first_name
FROM dept_manager
LEFT JOIN departments
ON dept_manager.dept_no = departments.dept_no
LEFT JOIN employees 
ON dept_manager.emp_no = employees.emp_no
ORDER BY emp_no

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
dept_emp.dept_no,
departments.dept_name
FROM employees 
INNER JOIN dept_emp ON employees.emp_no=dept_emp.emp_no
INNER JOIN departments ON departments.dept_no=dept_emp.dept_no
order by emp_no;

--List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."
SELECT 
employees.last_name,
employees.first_name,
employees.sex
FROM employees
WHERE first_name = 'Hercules' AND last_name like 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
From employees,departments,dept_emp
where employees.emp_no=dept_emp.emp_no
and departments.dept_no=dept_emp.dept_no
and departments.dept_name='Sales'
order by emp_no;

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
departments.dept_name
From employees,departments,dept_emp
where employees.emp_no=dept_emp.emp_no
and departments.dept_no=dept_emp.dept_no
and departments.dept_name in ('Sales', 'Development')
order by emp_no;

--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM Employees
GROUP BY last_name
ORDER BY count(last_name) desc;