/*
==================================================
SQL Phase 1: GROUP BY, HAVING, and ORDER BY
==================================================

Topic Explanation:
- GROUP BY: Splits a giant table into smaller category buckets (e.g., by City or Department) before running math (SUM, COUNT) on them.
- HAVING: The "VIP Bouncer" for buckets. WHERE filters raw rows, HAVING filters the grouped buckets.
- ORDER BY: Sorts the final results (ASC for Ascending, DESC for Descending).
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================
/* Table Name: Employees */

/* Goal 1: Find the total number of employees in EACH Department. */
SELECT Department, COUNT(*) FROM Employees GROUP BY Department;

/* Goal 2: Find the Total Salary paid to EACH Department, but ONLY show departments costing > 100,000. */
SELECT Department, SUM(Salary)
FROM Employees
GROUP BY
    Department
HAVING
    SUM(Salary) > 100000;

/* Goal 3: Find the Average Salary per Department, filter out the cheap ones, and sort the highest to the top. */
SELECT Department, AVG(Salary)
FROM Employees
GROUP BY
    Department
HAVING
    AVG(Salary) > 50000
ORDER BY AVG(Salary) DESC;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table Name: Transactions */

-- TODO 1: Find the Total Amount (SUM) made by EACH Store_Location.
SELECT Store_location, SUM(Amount)
FROM Transactions
GROUP BY
    Store_location;

-- TODO 2: Find the total number of rows (COUNT) for EACH Category.
SELECT Category, COUNT(*) FROM Transactions GROUP BY Category;

-- TODO 3: Group by Store_Location and find the Total Amount, but ONLY show locations > 5000.
SELECT Store_location, SUM(Amount)
FROM Transactions
GROUP BY
    Store_location
HAVING
    SUM(Amount) > 5000;

-- TODO 4: Take Q3 and sort the results so the highest Total Amount is at the top.
SELECT Store_location, SUM(Amount)
FROM Transactions
GROUP BY
    Store_location
HAVING
    SUM(Amount) > 5000
ORDER BY SUM(Amount) DESC;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the exact difference between WHERE and HAVING?
Ans: WHERE filters individual rows BEFORE they are grouped. HAVING filters the aggregated buckets AFTER they are grouped. You cannot use Aggregate Functions (like SUM or COUNT) inside a WHERE clause.

Q2: What is the mandatory rule when SELECTing a normal column alongside an Aggregate Function?
Ans: Any normal column in the SELECT clause MUST also be included in the GROUP BY clause.
*/