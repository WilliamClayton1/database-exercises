USE employees;

SELECT * FROM employees WHERE first_name in ('Irene', 'Vidya', 'Maya') and gender = 'M' ORDER BY first_name;

SELECT * FROM employees WHERE first_name in ('Irene', 'Vidya', 'Maya') and gender = 'M' ORDER BY first_name, last_name;

SELECT * FROM employees WHERE first_name in ('Irene', 'Vidya', 'Maya') and gender = 'M' ORDER BY last_name, first_name;

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no;

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no DESC;

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';
