/*
==================================================
SQL Phase 1: Aggregate Functions
==================================================
About this file:
- Explains how to mathematically summarize millions of rows into a single value.
- Covers the "Big 5" functions: COUNT, SUM, AVG, MIN, MAX.

Topic Explanation:
- In Data Engineering, you rarely need to look at individual rows. You need summaries (Total Revenue, Average Order Size).
- Aggregate functions "squish" all the rows in a column together and apply math to them.
- COUNT(*) counts every single row in the table.
- SUM(), AVG(), MIN(), and MAX() must have a specific column name inside the parentheses.
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================
/* Table Name: Company_Sales */

/* Goal 1: Find out exactly how many sales happened in total. */
SELECT COUNT(*) FROM Company_Sales;

/* Goal 2: Find the total money made (sum of Revenue). */
SELECT SUM(Revenue) FROM Company_Sales;

/* Goal 3: Find the average number of units sold per order. */
SELECT AVG(Units_Sold) FROM Company_Sales;

/* Goal 4: Combine them! Find the highest revenue AND the lowest revenue in the same query. */
SELECT MAX(Revenue), MIN(Revenue) FROM Company_Sales;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table Name: Orders */

-- TODO 1: Write a query to find the total number of rows (orders) in the Orders table.
SELECT COUNT(*) FROM Orders;

-- TODO 2: Write a query to find the AVERAGE 'TotalAmount' spent across all orders.
SELECT AVG(TotalAmount) FROM Orders;

-- TODO 3: Write a query to find the SMALLEST 'ItemCount' ever ordered.
SELECT MIN(ItemCount) FROM Orders;

-- TODO 4: Write a query to find the HIGHEST 'TotalAmount' ever spent on a single order.
SELECT MAX(TotalAmount) FROM Orders;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the difference between COUNT(*) and COUNT(ColumnName)?
Ans: COUNT(*) counts every single row in the table, even if there are completely blank rows. COUNT(ColumnName) only counts the rows where that specific column has data (it ignores NULL / blank values). 

Q2: Can you use Aggregate Functions in the WHERE clause? (e.g., WHERE Salary > AVG(Salary))
Ans: NO! This is a classic interview trap. The WHERE clause filters rows *before* the math happens. If you want to filter based on an aggregate, you must use the HAVING clause (or a Subquery).
*/