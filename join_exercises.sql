USE employees;

-- Selecting and Joining the department names and department manager
SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%' ORDER BY `Department Name`;

-- Selecting and Joining the department names and department manager who are women
SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%'
  AND employees.gender = 'F'
ORDER BY `Department Name`;

-- Selecting number of titles from the Customer Service department
SELECT DISTINCT titles.title, COUNT(titles.title) AS Total
FROM titles
JOIN dept_emp
ON titles.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd009'
  AND dept_emp.to_date LIKE '9999%'
  AND titles.to_date LIKE '9999%'
GROUP BY titles.title;

-- Selecting Department Managers and there salaries
SELECT departments.dept_name AS 'Department Name',
       CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager',
       salaries.salary AS 'Salary'
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
JOIN salaries
ON employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date LIKE '9999%'
  AND employees.salaries.to_date LIKE '9999%'
ORDER BY `Department Name`;

-- Selecting the names of all current employees, their department name, and their current manager's name
SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
       d.dept_name AS `Department`,
       CONCAT(m.first_name, ' ', m.last_name) AS 'Manager'
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
JOIN departments d
ON de.dept_no = d.dept_no
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
JOIN employees m
ON dm.emp_no = m.emp_no
WHERE de.to_date LIKE '9999%'
  AND dm.to_date LIKE '9999%'
ORDER BY d.dept_name;

