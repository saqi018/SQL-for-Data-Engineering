/*
==================================================
SQL Phase 2: Conditional Logic (CASE WHEN)
==================================================

Topic Explanation:
- The structure MUST contain: CASE, WHEN, THEN, ELSE, and END AS.
- The database reads the WHEN conditions in order. As soon as it finds a true statement, it assigns the THEN value and skips the rest of the rules for that row.
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================

/* Goal 1: Basic If/Else logic for High Earners */
SELECT
    Name,
    Salary,
    CASE
        WHEN Salary >= 100000 THEN 'High Earner'
        ELSE 'Standard'
    END AS Income_Category
FROM Employees;

/* Goal 2: Multi-condition logic */
SELECT
    Name,
    Salary,
    CASE
        WHEN Salary >= 100000 THEN 'High Earner'
        WHEN Salary >= 50000 THEN 'Medium Earner'
        ELSE 'Low Earner'
    END AS Income_Category
FROM Employees;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================

/* Goal 1: Tag delayed deliveries (over 5 days) */
SELECT
    DeliveryID,
    Days_To_Deliver,
    CASE
        WHEN Days_To_Deliver > 5 THEN 'Delayed'
        ELSE 'On Time'
    END AS Delivery_Status
FROM Deliveries;

/* Goal 2: Categorize delivery speed using ranges */
SELECT
    DeliveryID,
    Days_To_Deliver,
    CASE
        WHEN Days_To_Deliver = 1 THEN 'Overnight'
        WHEN Days_To_Deliver BETWEEN 2 AND 4  THEN 'Standard'
        ELSE 'Slow'
    END AS Speed_Rating
FROM Deliveries;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What happens if you forget the ELSE statement in a CASE WHEN clause?
Ans: If a row does not match any of your WHEN conditions, and there is no ELSE to catch it, the database will automatically output a NULL for that row.

Q2: Can you use multiple columns inside a single WHEN condition?
Ans: Yes! You can use AND/OR logic. For example: 
WHEN Salary > 100000 AND Department = 'IT' THEN 'Top Tech'
*/