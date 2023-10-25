USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%e' ORDER BY emp_no;

SELECT * FROM employees WHERE MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT * FROM employees WHERE YEAR(hire_date) LIKE '199%' AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25;

SELECT * FROM employees WHERE YEAR(hire_date) LIKE '199%' AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25 ORDER BY YEAR(birth_date) ASC, YEAR(hire_date) DESC;

SELECT DATEDIFF(CURDATE(), hire_date) AS number_of_days_worked FROM employees WHERE YEAR(hire_date) LIKE '199%' AND MONTH(birth_date) = 12 AND DAY(birth_date) = 25;