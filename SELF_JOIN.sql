-- SELF JOIN

SELECT 
    e1.emp_id AS orginal_id, e2.emp_id AS dupliacte_id,
    e1.emp_name,
    e1.dept_id AS dept_1, e2.dept_id AS dept_2,
    e1.city AS city_1, e2.city AS city_2,
    e1.phone_number AS phone_1, e2.phone_number AS phone_2,
    e1.salary AS sal_1, e2.salary AS sal_2
FROM employees AS e1
INNER JOIN employees AS e2
    ON e1.emp_name = e2.emp_name
    AND e1.emp_id < e2.emp_id;
