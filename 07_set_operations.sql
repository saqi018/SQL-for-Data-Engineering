/*
==================================================
SQL Phase 1: Set Operations (Stacking Data)
==================================================

Topic Explanation:
- The Golden Rule: To stack tables, they MUST have the exact same number of columns, and the data types must match.
- UNION ALL: Stacks everything blindly, keeping all duplicate rows. (Lightning fast).
- UNION: Stacks everything, but scans for and removes exact duplicates. (Slower).
- INTERSECT: Only keeps rows that exist in BOTH tables.
- EXCEPT: Takes the first table and subtracts anyone who also appears in the second table.
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================
/* Table 1: UK_Customers (Name, Email)
Table 2: US_Customers (Name, Email)
*/

/* Goal 1: Stack EVERYTHING. Keep all duplicates. */
SELECT Name, Email
FROM US_Customers
UNION ALL
SELECT Name, Email
FROM UK_Customers;

/* Goal 2: Stack them, but automatically REMOVE exact duplicates. */
SELECT Name, Email
FROM US_Customers
UNION
SELECT Name, Email
FROM UK_Customers;

/* Goal 3: Find people who are on BOTH lists. */
SELECT Name, Email
FROM US_Customers INTERSECT
SELECT Name, Email
FROM UK_Customers;

/* Goal 4: Start with the US list, and subtract anyone who is also on the UK list. */
SELECT Name, Email
FROM US_Customers EXCEPT
SELECT Name, Email
FROM UK_Customers;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table 1: Q1_Sales (ProductID, Revenue)
Table 2: Q2_Sales (ProductID, Revenue)
*/

-- TODO 1: Create one massive report stacking both tables. Keep all duplicates.
SELECT ProductID, Revenue
FROM Q1_Sales
UNION ALL
SELECT ProductID, Revenue
FROM Q2_Sales;

-- TODO 2: Combine both tables, but make it a clean, unique list (no duplicates).
SELECT ProductID, Revenue
FROM Q1_Sales
UNION
SELECT ProductID, Revenue
FROM Q2_Sales;

-- TODO 3: Find items that were successfully sold in BOTH Q1 and Q2.
SELECT ProductID, Revenue
FROM Q1_Sales INTERSECT
SELECT ProductID, Revenue
FROM Q2_Sales;

-- TODO 4: Find the sales that happened in Q1, but did NOT happen in Q2.
SELECT ProductID, Revenue
FROM Q1_Sales EXCEPT
SELECT ProductID, Revenue
FROM Q2_Sales;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the main difference between a JOIN and a UNION?
Ans: A JOIN combines tables horizontally to add new columns (e.g., adding CustomerName to Orders). A UNION combines tables vertically to add new rows (e.g., stacking Q1 sales on top of Q2 sales).

Q2: Why should you use UNION ALL instead of UNION if you know your data doesn't have duplicates?
Ans: UNION ALL is much faster. Standard UNION forces the database to pause and scan the entire newly merged table to search for and delete duplicates. If you already know there are no duplicates, UNION ALL saves processing power.
*/