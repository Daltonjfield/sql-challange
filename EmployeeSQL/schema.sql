CREATE TABLE departments(
dept_no VARCHAR NOT NULL,
dept_name VARCHAR NOT NULL
);

SELECT * FROM departments;

CREATE TABLE employees(
emp_no INT NOT NULL PRIMARY KEY,
emp_title_id VARCHAR NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR NOT NULL,
last_name VARCHAR NOT NULL,
sex VARCHAR NOT NULL,
hire_date DATE NOT NULL
);

SELECT * FROM employees

CREATE TABLE dept_emp(
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL
);

SELECT * FROM dept_emp

CREATE TABLE dept_manager(
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL
);

SELECT * FROM dept_manager

CREATE TABLE salaries(
emp_no INT NOT NULL PRIMARY KEY,
salary INT NOT NULL
);

SELECT * FROM salaries

CREATE TABLE titles(
title_id VARCHAR NOT NULL PRIMARY KEY,
title VARCHAR NOT NULL
);

SELECT * FROM titles;

ALTER TABLE dept_emp ADD CONSTRAINT fkey_empno FOREIGN KEY (emp_no) REFRENCES empolyees(emp_no)
ALTER TABLE dept_emp ADD CONSTRAINT fkey_deptno FOREIGN KEY (dept_no) REFRENCES departments(dept_no)
ALTER TABLE employees ADD CONSTRAINT fkey_title FOREIGN KEY (emp_title_id) REFRENCES title(title_id)
ALTER TABLE salaries ADD CONSTRAINT fkey_empno FOREIGN KEY (emp_no) REFRENCES employees(emp_no)
ALTER TABLE dept_manager ADD CONSTRAINT fkey_empno FOREIGN KEY (emp_no) REFRENCES employees(emp_no)
ALTER TABLE dept_emp ADD PRIMARY KEY (emp_no, dept_no)
ALTER TABLE dept_manager ADD PRIMARY KEY (dept_no,emp_no)