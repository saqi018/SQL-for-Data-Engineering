/*
==================================================
SQL Phase 2: Window Functions (LAG, LEAD, NTILE)
==================================================

Topic Explanation:
1. LAG(Column_Name): Looks BACKWARD to the previous row. Great for calculating Month-over-Month growth.
2. LEAD(Column_Name): Looks FORWARD to the next row.
3. NTILE(Number): Divides the rows into 'Number' of equal buckets (e.g., NTILE(4) creates 4 quartiles).
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================
/* Table: Monthly_Sales
Columns: Month_Name, Revenue 
*/

/* Goal 1 (LAG): We want to see this month's revenue right next to last month's revenue. */
SELECT
    Month_Name,
    Revenue,
    LAG(Revenue) OVER (
        ORDER BY Month_Name ASC
    ) AS Previous_Month_Revenue
FROM Monthly_Sales;

/* Goal 2 (LEAD): We want to see this month's revenue right next to next month's revenue. */
SELECT
    Month_Name,
    Revenue,
    LEAD(Revenue) OVER (
        ORDER BY Month_Name ASC
    ) AS Next_Month_Revenue
FROM Monthly_Sales;

/* Table: Marathon_Runners
Columns: RunnerName, FinishTime 
*/

/* Goal 3 (NTILE): Divide all runners into 4 equal tiers based on their finish time. */
SELECT
    RunnerName,
    FinishTime,
    NTILE(4) OVER (
        ORDER BY FinishTime ASC
    ) AS Performance_Quartile
FROM Marathon_Runners;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (UNSOLVED TEMPLATE)
-- ==================================================
/* Table: User_Logins
Columns: UserName, LoginDate
*/

-- TODO 1: Write a query that shows the UserName, the current LoginDate, and the PREVIOUS LoginDate for that specific user.
-- Hint: You will need to use PARTITION BY UserName to make sure you only look at that specific user's history!

-- TODO 2: Write a query that shows the UserName, the current LoginDate, and the NEXT LoginDate for that specific user.

/* Table: Exam_Scores
Columns: StudentName, Score
*/

-- TODO 3: Write a query that divides the students into 3 equal performance tiers (Top Tier, Middle Tier, Bottom Tier) based on their Score (Highest to Lowest).

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What happens to the very first row when you use the LAG() function?
Ans: The database will return a NULL value for the new column on the very first row, because there is no "previous" row to pull data from.

Q2: Can you specify how many rows back LAG() should look?
Ans: Yes! The syntax is LAG(Column, Offset). If you write LAG(Revenue, 2), it will look 2 rows backward instead of just 1.
*/