/*
==================================================
SQL Phase 1: Order of Execution
==================================================
About this file:
- Explains the difference between how we TYPE SQL and how the database READS SQL.
- This is a very common topic in Data Engineering technical interviews.

The Exact Order the Database Engine Reads:
1. FROM (and JOINs) - "Where is the data?"
2. WHERE            - "Which raw rows should I throw away?"
3. GROUP BY         - "How should I bucket these rows?"
4. HAVING           - "Which buckets should I throw away?"
5. SELECT           - "What math should I do, and what Alias names should I create?"
6. ORDER BY         - "How should I sort the final list?"
7. LIMIT            - "How many results should I show?"
*/

-- ==================================================
-- 1️⃣ THE BIGGEST INTERVIEW TRAP
-- ==================================================

/* ❌ THE BROKEN CODE:
SELECT Salary * 12 AS Annual_Pay
FROM Employees
WHERE Annual_Pay > 100000;

Why it crashes: The database reads WHERE (Step 2) before SELECT (Step 5). 
When it reads the WHERE clause, the "Annual_Pay" Alias hasn't been created yet!
*/

/* ✅ THE FIXED CODE:
You must write the actual math inside the WHERE clause. 
*/
SELECT Salary * 12 AS Annual_Pay
FROM Employees
WHERE
    Salary * 12 > 100000;

-- ==================================================
-- 2️⃣ A FULL QUERY EXAMPLE
-- ==================================================

SELECT Department, SUM(Salary) AS Total_Cost
FROM Employees
WHERE
    HireDate > '2020-01-01'
GROUP BY
    Department
HAVING
    SUM(Salary) > 500000
ORDER BY Total_Cost DESC;

/*
How the database processes the query above:
1. (FROM) Opens Employees table.
2. (WHERE) Kicks out anyone hired before 2020.
3. (GROUP BY) Creates buckets for each Department.
4. (HAVING) Throws away any Department bucket costing less than 500,000.
5. (SELECT) Calculates the final Sums and names the column "Total_Cost".
6. (ORDER BY) Sorts the final list highest to lowest using the new Total_Cost name.
*/