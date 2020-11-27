SELECT employee.emp_no, 
	employee.last_name, 
	employee.first_name,
	employee.sex,
	salaries.salary
	FROM employee
	LEFT JOIN salaries
	ON employee.emp_no = salaries.emp_no;
select * from employee
SELECT first_name,
	last_name, 
	hire_date
	FROM employee
	WHERE hire_date LIKE '1986%';