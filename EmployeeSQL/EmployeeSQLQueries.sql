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
USING (emp_no);
  
SELECT de.emp_no, e.last_name, e.first_name, dm.dept_name 
FROM employees e
JOIN dept_emp de
USING (emp_no)
JOIN departments dm
USING (dept_no);

SELECT *
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp de
JOIN departments d
USING (dept_no)
JOIN employees e
USING (emp_no)
WHERE d.dept_name = 'Sales';

SELECT
	e.emp_no,
	e.last_name,
	e.first_name,
	d.dept_name
FROM dept_emp de
JOIN departments d
USING (dept_no)
JOIN employees e
USING (emp_no)
WHERE d.dept_name IN ('Sales','Development');

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

SELECT *
FROM employees
WHERE emp_no = '499942'

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.emp_title_id, title.title, salary.salary 
FROM employees
JOIN salaries AS salary
  ON employees.emp_no = salary.emp_no
JOIN titles AS title
  ON employees.emp_title_id = title.title_id
