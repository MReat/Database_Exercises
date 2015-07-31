SELECT concat(e.first_name, ' ', last_name) full_name, t.title, t.to_date
FROM employees e
LEFT JOIN titles t 
ON e.emp_no = t.emp_no
WHERE t.title LIKE 'senior %'
AND t.to_date = '9999-01-01';
/* total 161,373 with group by */
-- GROUP BY full_name;

SELECT d.dept_name 'Department Name', concat(first_name, ' ', last_name) 'Manager Name'
FROM employees e
LEFT JOIN titles t
ON e.emp_no = t.emp_no
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
WHERE d.dept_name IN ('Development', 'Finance', 'Human Resources', 'Research')
AND t.to_date = '9999-01-01' 
AND t.title = 'Manager'
AND e.gender = 'F';


SELECT d.dept_name 'Department Name', concat(first_name, ' ', last_name) 'Manager Name', s.salary, e.emp_no
FROM employees e
LEFT JOIN titles t
ON e.emp_no = t.emp_no
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON d.dept_no = de.dept_no
LEFT JOIN salaries s
ON e.emp_no = s.emp_no
WHERE t.title = 'Manager'  
AND s.to_date = '9999-01-01'
AND t.to_date = '9999-01-01'
GROUP BY d.dept_name;

SELECT t.title Title, AVG(s.salary) 'Average Salary'
FROM salaries s
LEFT JOIN titles t
ON s.emp_no = t.emp_no
WHERE t.to_date = '9999-01-01'  
AND s.to_date = '9999-01-01'
AND t.title IN ('Assistant Engineer', 'Engineer', 'Staff', 'Technique Leader', 'Senior Engineer', 'Manager', 'Senior Staff')
GROUP BY t.title;

SELECT concat(e.first_name, ' ', e.last_name) 'Employee Name', d.dept_name 'Department Name', 
concat(em.first_name, ' ', em.last_name) 'Manager Name'
FROM employees e
LEFT JOIN dept_emp de
ON e.emp_no = de.emp_no
LEFT JOIN departments d
ON de.dept_no = d.dept_no
LEFT JOIN dept_manager dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees em
ON dm.emp_no = em.emp_no
WHERE de.to_date = '9999-01-01'
AND  dm.to_date = '9999-01-01'
ORDER BY d.dept_name, e.last_name, e.first_name;
