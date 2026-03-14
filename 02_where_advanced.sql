/*
==================================================
SQL Phase 1: Advanced WHERE Clauses
==================================================

Topic Explanation:
- IN: Replaces multiple OR statements. Allows you to pass a list of valid options.
- BETWEEN: Finds values within a range (inclusive of both ends). Great for dates and numbers.
- LIKE: Used for text searching. The '%' symbol acts as a wildcard (e.g., 'A%' means starts with A, '%A' means ends with A).
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================

/* Goal 1: Find users from specific countries (Using IN) */
SELECT FirstName, Country
FROM Users
WHERE
    Country IN (
        'Pakistan',
        'France',
        'Canada'
    );

/* Goal 2: Find users with a balance between 100 and 500 (Using BETWEEN) */
SELECT FirstName, AccountBalance
FROM Users
WHERE
    AccountBalance BETWEEN 100 AND 500;

/* Goal 3: Find anyone whose last name ends with 'Khan' (Using LIKE) */
SELECT FirstName, LastName FROM Users WHERE LastName LIKE '%Khan';

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table Name: Employees */

-- TODO 1: Retrieve all columns for employees in the 'IT', 'HR', or 'Sales' departments.
SELECT * FROM Employees WHERE Department IN ('IT', 'HR', 'Sales');

-- TODO 2: Retrieve the Name and Salary of employees making between 50000 and 80000.
SELECT Name, Salary
FROM Employees
WHERE
    Salary BETWEEN 50000 AND 80000;

-- TODO 3: Retrieve all columns for employees whose Name starts with the letter 'A'.
SELECT * FROM Employees WHERE Name LIKE 'A%';

-- TODO 4: Retrieve Name and Department of employees who are in 'IT' AND make > 70000.
SELECT Name, Department
FROM Employees
WHERE
    Department = 'IT'
    AND Salary > 70000;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the difference between AND and OR?
Ans: With AND, all conditions must be true for the row to be returned. With OR, the row is returned if at least one of the conditions is true.

Q2: Why is the LIKE operator potentially dangerous for database performance?
Ans: Using a wildcard at the beginning of a string (like '%Khan') forces the database to scan every single row in the table, ignoring indexes. This is called a "Full Table Scan" and is very slow on large datasets.
*/