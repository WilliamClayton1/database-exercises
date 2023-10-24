USE employees;

-- SELECT * FROM employees WHERE first_name in ('Irene', 'Vidya', 'Maya');

SELECT * FROM employees WHERE gender = 'M' AND first_name = 'Irene' OR gender = 'M' AND first_name = 'Vidya' OR gender = 'M' AND first_name = 'Maya';

-- SELECT * FROM employees WHERE last_name like 'E%';

SELECT * FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e';

SELECT * FROM employees WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

