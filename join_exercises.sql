USE employees;

-- Selecting and Joining the department names and department manager
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%' ORDER BY `Department Name`;

-- Selecting and Joining the department names and department manager who are women
SELECT departments.dept_name AS 'Department Name', CONCAT(employees.first_name, ' ', employees.last_name) AS 'Department Manager'
FROM departments
JOIN dept_manager
ON departments.dept_no = dept_manager.dept_no
JOIN employees
ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%' AND employees.gender = 'F'
ORDER BY `Department Name`;

-- Selecting number of titles from the Customer Service department
SELECT DISTINCT titles.title, COUNT(titles.title) AS Total
FROM titles
JOIN dept_emp
ON titles.emp_no = dept_emp.emp_no
JOIN departments
ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd009'
  AND dept_emp.to_date LIKE '9999%' AND titles.to_date LIKE '9999%'
GROUP BY titles.title;

