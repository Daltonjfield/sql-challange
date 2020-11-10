-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT emp.emp_no,last_name,first_name,sex,salary FROM employees AS emp 
JOIN salaries AS sal
ON emp.emp_no = sal.emp_no;

SELECT * FROM employees
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept.dept_no, dept_name, dm.emp_no, last_name, first_name FROM departments AS dept
JOIN dept_manager AS dm
ON dept.dept_no = dm.dept_no
JOIN employees AS emp
ON emp.emp_no = dm.emp_no;


-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT de.emp_no, last_name, first_name, dept_name FROM departments AS dept
JOIN dept_emp AS de
ON dept.dept_no = de.dept_no
JOIN employees AS emp
ON emp.emp_no = de.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex FROM employees AS emp
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT de.emp_no, last_name, first_name, dept_name FROM departments AS dept
JOIN dept_emp AS de
ON dept.dept_no = de.dept_no
JOIN employees AS emp
ON emp.emp_no = de.emp_no
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT de.emp_no, last_name, first_name, dept_name FROM departments AS dept
JOIN dept_emp AS de
ON dept.dept_no = de.dept_no
JOIN employees AS emp
ON emp.emp_no = de.emp_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) AS last_name_count FROM employees
GROUP BY last_name
ORDER BY 2 DESC;


