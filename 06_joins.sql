/*
==================================================
SQL Phase 1: JOINS (Connecting Tables)
==================================================

Topic Explanation:
- INNER JOIN: The Strict Matchmaker. Only keeps rows that have a perfect match in BOTH tables.
- LEFT JOIN: The Anchor. Keeps EVERY row from the Left Table, even if there is no match on the right. Fills missing data with NULL.
- RIGHT JOIN: Keeps EVERY row from the Right Table. (Rarely used, we usually just flip the tables and use a LEFT JOIN).
- FULL OUTER JOIN: The Everything Bagel. Keeps absolutely everything from both tables. Nobody is thrown away.
- ANTI JOIN: A trick using LEFT JOIN + WHERE ___ IS NULL to find rows that DO NOT have a match.
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================
/* Table A: Customers (CustomerID, CustomerName)
Table B: Orders (OrderID, CustomerID, TotalAmount) 
*/

/* Goal 1: INNER JOIN - Get names and amounts ONLY for customers who bought something. */
SELECT C.CustomerName, O.TotalAmount
FROM Customers AS C
    INNER JOIN Orders AS O ON C.CustomerID = O.CustomerID;

/* Goal 2: LEFT JOIN - Get a list of ALL Customers, and show their order amounts (even if NULL). */
SELECT C.CustomerName, O.TotalAmount
FROM Customers AS C
    LEFT JOIN Orders AS O ON C.CustomerID = O.CustomerID;

/* Goal 3: ANTI JOIN - Find Customers who have NEVER placed an order. */
SELECT C.CustomerName
FROM Customers AS C
    LEFT JOIN Orders AS O ON C.CustomerID = O.CustomerID
WHERE
    O.OrderID IS NULL;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/* Table A: Students (StudentID, StudentName)
Table B: Grades (GradeID, StudentID, Score) 
*/

-- TODO 1: (INNER JOIN) Return StudentName and Score ONLY for students with a grade.
SELECT S.StudentName, G.Score
FROM Students AS S
    INNER JOIN Grades AS G ON S.StudentID = G.StudentID;

-- TODO 2: (LEFT JOIN) Return ALL StudentNames, and attach their Score (even if NULL).
SELECT S.StudentName, G.Score
FROM Students AS S
    LEFT JOIN Grades AS G ON S.StudentID = G.StudentID;

-- TODO 3: (ANTI JOIN) Find the StudentName of students who have NOT received a grade.
SELECT S.StudentName
FROM Students AS S
    LEFT JOIN Grades AS G ON S.StudentID = G.StudentID
WHERE
    G.Score IS NULL;

-- TODO 4: (JOIN + AGGREGATION) Get the Average Score for each student.
SELECT S.StudentName, AVG(G.Score)
FROM Students AS S
    INNER JOIN Grades AS G ON S.StudentID = G.StudentID
GROUP BY
    S.StudentName;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the difference between an INNER JOIN and a LEFT JOIN?
Ans: An INNER JOIN drops rows if there is no match in both tables. A LEFT JOIN guarantees that every row from the primary (left) table is returned in the final output, inserting NULLs for any missing data on the right side.

Q2: How do you perform an ANTI JOIN in SQL?
Ans: SQL does not have an explicit "ANTI JOIN" command. You create one by performing a LEFT JOIN and then using a WHERE clause to filter for rows where the right table's primary key IS NULL.
*/