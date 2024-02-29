SELECT emp_no, last_name, first_name, sex, salary
FROM employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

SELECT d.dept_no, d.dept_name, m.emp_no, m.last_name, m.first_name
FROM departments d
JOIN employees m ON d.manager_employee_number = m.employee_number;

SELECT e.emp_no, e.last_name, e.first_name, e.dept_no, d.department_name
FROM employees e
JOIN departments d ON e.dept_no = d.dept_no;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

SELECT emp_no, last_name, first_name
FROM employees
WHERE dept_no = 'Sales';

SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN departments d ON e.dept_no = d.dept_no
WHERE d.dept_name IN ('Sales', 'Development');

SELECT last_name, COUNT(*) AS name_count
FROM employees
GROUP BY last_name
ORDER BY name_count DESC;