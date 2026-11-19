-- INNER JOIN

 SELECT
    employees.emp_name,
    employees.salary,
    departments.dept_name
FROM employees
INNER JOIN departments
    ON employees.dept_id = departments.dept_id; 


-- LEFT JOIN

SELECT
employees.emp_name,
departments.dept_name
FROM employees
LEFT JOIN departments
ON departments.dept_id = employees.dept_id

-- RIGHT JOIN

SELECT
employees.emp_name,
departments.dept_name
FROM employees
RIGHT JOIN departments
ON departments.dept_id = employees.dept_id 

-- FULL JOIN

SELECT
employees.emp_name,
departments.dept_name
FROM employees
FULL JOIN departments
ON employees.dept_id = departments.dept_id 