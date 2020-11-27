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

SELECT employee.emp_no,
	employee.last_name,
	employee.first_name,
	departments.dept_name
	from employee
	INNER JOIN dept_emp
	on employee.emp_no = dept_emp.emp_no
	INNER JOIN departments
	on dept_emp.dept_no = departments.dept_no;

select first_name,
	last_name,
	sex
	from employee
	where first_name ='Hercules'
	and last_name like 'B%';

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
	
SELECT last_name, COUNT(*)
	from employee
	group by last_name
	order by count desc;