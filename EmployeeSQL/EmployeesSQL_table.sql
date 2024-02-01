DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE dept_emp;
DROP TABLE employees;
DROP TABLE titles;
DROP TABLE Departments;

-- Departments csv file
CREATE TABLE Departments (
	dept_no	VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(50));

-- titles csv file
CREATE TABLE titles(
	title_id VARCHAR(10) PRIMARY KEY NOT NULL,	
	title VARCHAR(50));

-- employees csv file
CREATE TABLE employees(
	emp_no	INT PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR(10),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date	DATE,
	first_name	VARCHAR(50),
	last_name	VARCHAR(50),
	sex	VARCHAR(1),
	hire_date DATE);	
	
	
-- dept_emp csv file
CREATE TABLE dept_emp (
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

--  dept_manager csv file
CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- salaries csv file
CREATE TABLE salaries(
	emp_no INT,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT);
	
	
SELECT * FROM Departments
SELECT * FROM titles
SELECT * FROM employees
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM salaries	

