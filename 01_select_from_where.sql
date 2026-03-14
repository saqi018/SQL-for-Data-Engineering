/*
==================================================
topic Name: Core Basics ( SELECT, FROM, WHERE )  
==================================================

Topic Explanation:
- SELECT: Tells the database WHICH columns you want to see. Use * for all columns.
- FROM: Tells the database WHICH table holds the data.
- WHERE: The "VIP Bouncer". Filters rows based on mathematical rules (=, >, <).
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================

/* Goal 1: Find the Product and Price for all sales in 'Lahore' costing over 500. */
SELECT Product, Price
FROM sales_data
WHERE
    City = 'Lahore'
    AND Price > 500;

/* Goal 2: Get every single column for all records. */
SELECT * FROM sales_data;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table Name: Users */

-- TODO 1: Retrieve every single column from the Users table.
SELECT * FROM Users;

-- TODO 2: Retrieve only the FirstName and AccountBalance.
SELECT FirstName, AccountBalance FROM Users;

-- TODO 3: Retrieve all columns (*), but ONLY for users in 'Pakistan'.
SELECT * FROM Users WHERE Country = 'Pakistan';

-- TODO 4: Retrieve FirstName and LastName for users in 'Canada' with a balance > 1000.
SELECT FirstName, LastName
FROM Users
WHERE
    Country = 'Canada'
    AND AccountBalance > 1000;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: Is the WHERE clause mandatory in a SQL query?
Ans: No. If you want to return every row in the table without any filtering, you completely omit the WHERE clause.

Q2: What does the * symbol do in a SELECT statement, and when should you avoid using it?
Ans: The * symbol returns all columns from a table. Data Engineers avoid using it in production pipelines because pulling unneeded columns wastes network bandwidth and slows down the database. Always explicitly name the columns you need.
*/