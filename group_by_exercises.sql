USE titles;

SELECT DISTINCT title FROM titles;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY last_name;

SELECT DISTINCT CONCAT(COUNT(last_name), ' ', last_name) AS last_name_count FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%' GROUP BY last_name;

SELECT DISTINCT CONCAT(COUNT(gender), ' ', gender) AS gender_count FROM employees WHERE first_name in ('Irena', 'Vidya', 'Maya') GROUP BY gender;
