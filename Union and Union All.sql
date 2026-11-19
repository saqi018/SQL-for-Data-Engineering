-- UNION 

SELECT emp_id, emp_name, dept_id, salary
FROM employees
WHERE dept_id = 10

UNION 

select emp_id, emp_name, dept_id, salary
FROM employees
WHERE salary < 100000.00 ;


-- UNION ALL

SELECT emp_id, emp_name, dept_id, salary
FROM employees
WHERE dept_id = 10

UNION ALL

select emp_id, emp_name, dept_id, salary
FROM employees
WHERE salary > 100000.00 AND salary < 150000.00 ;