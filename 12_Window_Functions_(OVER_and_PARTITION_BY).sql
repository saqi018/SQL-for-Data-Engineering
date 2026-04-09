/*
==================================================
SQL Phase 2: Window Functions (OVER & PARTITION BY)
==================================================


Topic Explanation:
- GROUP BY is violent: It crushes individual rows into summary buckets. You lose the individual row details.
- PARTITION BY is peaceful: It keeps every single row alive. It simply draws an invisible "window" around specific categories, calculates the math, and hands the result back to each individual row as a new column.
- The magic word is OVER(). The moment you type OVER, the database knows not to crush the rows.
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================

/* Goal 1: Find the Total Revenue for each Region, but keep the Salesperson rows intact. */
SELECT
    Salesperson,
    Region,
    Revenue,
    SUM(Revenue) OVER (
        PARTITION BY
            Region
    ) AS Region_Total_Revenue
FROM Software_Sales;

/* Goal 2: Find the Average Revenue for each Region. */
SELECT
    Salesperson,
    Region,
    Revenue,
    AVG(Revenue) OVER (
        PARTITION BY
            Region
    ) AS Region_Average_Revenue
FROM Software_Sales;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (UNSOLVED)
-- ==================================================
/*
Table: Exam_Results
Columns: StudentName, Subject, Score
*/

-- TODO 1: Write a query that returns the StudentName, Subject, and Score.
-- Create a new column showing the Lowest (MIN) score achieved by anyone in that specific Subject.

-- TODO 2: Write a query that returns the StudentName, Subject, and Score.
-- Create a new column calculating the Total (SUM) of all scores combined for that specific Subject.

-- TODO 3: Write a single query that returns the StudentName, Subject, and Score.
-- Create TWO new columns: The Highest (MAX) score for the Subject, and the Average (AVG) score for the Subject.