CREATE TABLE "titles" (
    "title_id" VARCHAR(30)   NOT NULL,
    "title" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_titles" PRIMARY KEY (
        "title_id")
);
select * from titles

CREATE TABLE "employee" (
    "emp_no" INT   NOT NULL,
    "emp_title_id" VARCHAR(30)   NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(30)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "sex" VARCHAR(30)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employee" PRIMARY KEY (
        "emp_no"
     )
);
select * from employee

CREATE TABLE "departments" (
    "dept_no" VARCHAR(30)   NOT NULL,
    "dept_name" VARCHAR(30)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY (
        "dept_no"
     )
);
select * from departments

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(30)   NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
    "emp_no" INT   NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);
select * from dept_manager

CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
    "dept_no" VARCHAR(30)   NOT NULL,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
select * from dept_emp

CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
		FOREIGN KEY(emp_no) REFERENCES employee(emp_no),
    "salary" INT   NOT NULL
);
select * from salaries