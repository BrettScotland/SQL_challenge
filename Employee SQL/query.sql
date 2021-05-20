--1.
SELECT  emp.emp_no,
        emp.last_name,
        emp.first_name,
        emp.sex,
        sal.salary
FROM employees as emp
    LEFT JOIN salaries as sal
    ON (emp.emp_no = sal.emp_no);
	


--2.
ALTER TABLE employees ALTER COLUMN hire_date TYPE DATE
using to_date(hire_date, 'MM-DD-YYYY');

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';



--3.
SELECT depm.emp_no,
	   depm.dept_no,
	   dep.dept_name,
	   emp.last_name,
	   emp.first_name
FROM dept_manager as depm
	INNER JOIN departments as dep
	ON (depm.dept_no = dep.dept_no)
	INNER JOIN employees as emp
	ON (depm.emp_no = emp.emp_no);
	
	
--4.	
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   dep.dept_name
FROM employees as emp
	INNER JOIN dept_emp as depe
	ON (emp.emp_no = depe.emp_no)
	INNER JOIN departments as dep
	ON (depe.dept_no = dep.dept_no);
	

--5.
SELECT emp.first_name,
	   emp.last_name,
	   emp.sex
FROM employees as emp
WHERE emp.first_name = 'Hercules' AND emp.last_name LIKE 'B%';



--6.
SELECT dep.dept_name,
	   emp.emp_no,
	   emp.last_name,
	   emp.first_name
FROM departments as dep
	INNER JOIN dept_emp as depe
	ON (dep.dept_no = depe.dept_no)
	INNER JOIN employees as emp
	ON (depe.emp_no = emp.emp_no)
WHERE dep.dept_name = 'Sales';



--7.
SELECT dep.dept_name,
	   emp.emp_no,
	   emp.last_name,
	   emp.first_name
FROM departments as dep
	INNER JOIN dept_emp as depe
	ON (dep.dept_no = depe.dept_no)
	INNER JOIN employees as emp
	ON (depe.emp_no = emp.emp_no)
WHERE dep.dept_name = 'Sales' OR dep.dept_name = 'Development';



--8.
SELECT last_name, COUNT(last_name) FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name)DESC;