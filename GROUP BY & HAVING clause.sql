-- Grouping Data

-- GROUP BY
SELECT city, count(city) AS total_emp
FROM employees
GROUP BY city;


-- HAVING BY

SELECT City, count(*) AS total_city
from employees
GROUP BY city
HAVING count(*) > 2