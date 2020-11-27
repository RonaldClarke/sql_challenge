SELECT employee.emp_no, 
	employee.last_name, 
	employee.first_name,
	employee.sex,
	salaries.salary
	FROM employee
	LEFT JOIN salaries
	ON employee.emp_no = salaries.emp_no;

SELECT first_name,
	last_name, 
	hire_date
	FROM employee
	WHERE date_part('year',hire_date) = 1986;
	
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


	
