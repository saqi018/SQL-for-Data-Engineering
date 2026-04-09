/*
==================================================
SQL Phase 2: Window Functions (Sorting & Ranking)
==================================================

Topic Explanation:
How do these tools handle TIES? (e.g., Two people score 100, next person scores 90)

1. ROW_NUMBER(): The Strict Counter.
- Ignores ties completely. Forces a strict sequential count.
- Result: 1, 2, 3, 4

2. RANK(): The Gap Maker.
- Acknowledges ties (both get 1st place). 
- BUT it skips the next available number.
- Result: 1, 1, 3, 4

3. DENSE_RANK(): The Fair Judge.
- Acknowledges ties (both get 1st place).
- NEVER skips numbers.
- Result: 1, 1, 2, 3
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================
/* Table: Employees
Columns: Name, Department, Salary
*/

/* Goal 1: Give everyone in the company a strict row number based on salary (Highest to Lowest). No ties allowed. */
SELECT
    Name,
    Department,
    Salary,
    ROW_NUMBER() OVER (
        ORDER BY Salary DESC
    ) AS Strict_Position
FROM Employees;

/* Goal 2: Rank everyone by salary. If they tie, give them the same rank, but don't skip any numbers. */
SELECT
    Name,
    Department,
    Salary,
    DENSE_RANK() OVER (
        ORDER BY Salary DESC
    ) AS Salary_Tier
FROM Employees;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table: Student_Grades
Columns: StudentName, ClassName, Grade
*/

-- TODO 1: Assign a strict row number to students inside each ClassName based on their Grade (Highest to Lowest).
SELECT
    StudentName,
    ClassName,
    Grade,
    ROW_NUMBER() OVER (
        PARTITION BY
            ClassName
        ORDER BY Grade DESC
    ) AS Strict_Class_Rank
FROM Student_Grades;

-- TODO 2: Assign a standard rank to students inside each ClassName. Allow ties, but SKIP the next number.
SELECT
    StudentName,
    ClassName,
    Grade,
    RANK() OVER (
        PARTITION BY
            ClassName
        ORDER BY Grade DESC
    ) AS Standard_Class_Rank
FROM Student_Grades;

-- TODO 3: Assign a dense rank to students inside each ClassName. Allow ties, and DO NOT skip numbers.
SELECT
    StudentName,
    ClassName,
    Grade,
    DENSE_RANK() OVER (
        PARTITION BY
            ClassName
        ORDER BY Grade DESC
    ) AS Dense_Class_Rank
FROM Student_Grades;

-- ==================================================
-- 3️⃣ PRACTICE TASKS (UNSOLVED TEMPLATE)
-- ==================================================
/* Table: Monthly_Sales
Columns: Salesperson, Region, Revenue
*/

-- TODO 1: Assign a strict row number to salespeople inside each Region based on their Revenue (Highest to Lowest).

-- TODO 2: Assign a standard rank to salespeople inside each Region. Allow ties, but SKIP the next number.

-- TODO 3: Assign a dense rank to salespeople inside each Region. Allow ties, and DO NOT skip numbers.

-- ==================================================
-- 4️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the exact difference between RANK() and DENSE_RANK()?
Ans: Both functions give the same rank to tied values. The difference is what happens to the NEXT row. RANK() skips the next sequential number (e.g., 1, 1, 3), while DENSE_RANK() does not skip numbers (e.g., 1, 1, 2).
*/