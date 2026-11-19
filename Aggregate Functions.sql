 -- Aggregate Functions (COUNT, SUM, AVG, MIN, MAX)

-- COUNT FUNCTION

SELECT COUNT(*) AS Total_emp
FROM employees 

 -- SUM FUNCTION

 SELECT SUM(salary) AS Total_payroll
 FROM employees 

 -- AVERAGE FUNCTION (avg)
 SELECT AVG(salary) AS average_salary
 from employees 

 -- MIN FUNCTION

 SELECT MIN(salary) AS cheapest_salary
 from employees 

 -- MAX FUNCTION
SELECT MAX(salary) AS most_exp_salary
from employees 
