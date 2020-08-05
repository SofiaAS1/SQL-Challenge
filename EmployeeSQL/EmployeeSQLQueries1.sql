SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salary.salary 
FROM employees
JOIN salaries AS salary
  ON employees.emp_no = salary.emp_no;

SELECT first_name, last_name, hire_date 
FROM employees
Where hire_date between '1986-01-01' and '1986-12-31';

SELECT dept_manager.dept_no, dept_name.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name 
FROM dept_manager
JOIN departments AS dept_name
  ON dept_manager.dept_no = dept_name.dept_no
JOIN employees
  ON dept_manager.emp_no = employees.emp_no;