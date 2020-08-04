Drop table if exists departments;

create table departments (
	dept_no varchar(81) primary key,
	dept_name varchar(81)
);

select * from departments;

Drop table if exists dept_emp;

create table dept_emp (
	emp_no int,
	dept_no varchar(81),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_emp;

Drop table if exists dept_manager;

create table dept_manager (
	dept_no varchar(81),
	emp_no int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

select * from dept_manager;

Drop table if exists employees;

create table employees (
	emp_no int primary key,
	emp_title_id varchar(81),
	birth_date date not null,
	first_name varchar(81),
	last_name varchar(81),
	sex varchar(81),
	hire_date date not null,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

select * from employees;

Drop table if exists salaries;

create table salaries (
	emp_no serial,
	salary int,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

select * from salaries;

Drop table if exists titles;

create table titles (
	title_id varchar(81) primary key,
	title varchar(81)
);

select * from titles;
