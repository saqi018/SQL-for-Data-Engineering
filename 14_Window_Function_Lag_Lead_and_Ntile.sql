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


