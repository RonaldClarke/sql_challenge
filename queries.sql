-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employee.emp_no, 
	employee.last_name, 
	employee.first_name,
	employee.sex,
	salaries.salary
	FROM employee
	LEFT JOIN salaries
	ON employee.emp_no = salaries.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,
	last_name, 
	hire_date
	FROM employee
	WHERE date_part('year',hire_date) = 1986;

-- 3.  List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.emp_no,
	dept_manager.dept_no,
	departments.dept_name,
	employee.last_name,
	employee.first_name
	from dept_manager
	INNER JOIN departments
	on dept_manager.dept_no = departments.dept_no
	INNER JOIN employee
	on dept_manager.emp_no = employee.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT employee.emp_no,
	employee.last_name,
	employee.first_name,
	departments.dept_name
	from employee
	INNER JOIN dept_emp
	on employee.emp_no = dept_emp.emp_no
	INNER JOIN departments
	on dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

select first_name,
	last_name,
	sex
	from employee
	where first_name ='Hercules'
	and last_name like 'B%';

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

select employee.emp_no,
	employee.last_name,
	employee.first_name,
	departments.dept_name
	from employee
	inner join dept_emp
	on employee.emp_no=dept_emp.emp_no
	inner join departments
	on dept_emp.dept_no=departments.dept_no
	where dept_name = 'Sales';

-- 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

select employee.emp_no,
	employee.last_name,
	employee.first_name,
	departments.dept_name
	from employee
	inner join dept_emp
	on employee.emp_no=dept_emp.emp_no
	inner join departments
	on dept_emp.dept_no=departments.dept_no
	where dept_name = 'Sales'
	or dept_name = 'Development';
	
-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(*)
	from employee
	group by last_name
	order by count desc;