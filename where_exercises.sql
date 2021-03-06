SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE (first_name LIKE 'Irena' 
OR first_name LIKE 'Vidya' 
OR first_name LIKE 'Maya')
AND gender = 'M';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%e';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%e';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
-- WHERE hire_date LIKE '199%';
where hire_date BETWEEN '1990-01-01' AND '1999-12-31'
AND birth_date LIKE '%12-25';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
where birth_date LIKE '%12-25';

SELECT concat(first_name, ' ', last_name) AS full_name
FROM employees
WHERE last_name LIKE '%q%'
AND last_name NOT LIKE '%qu%';