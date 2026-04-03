/*
==================================================
SQL Phase 1: DDL and DML (Building the Database)
==================================================

Topic Explanation:
- DDL (Data Definition Language): "Building the House". 
Commands: CREATE, ALTER, DROP, TRUNCATE. These change the physical structure.
- DML (Data Manipulation Language): "Moving the Furniture".
Commands: INSERT, UPDATE, DELETE. These change the data inside the house.
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================

/* Goal 1: (DDL) Build the table structure. */
CREATE TABLE Employees (
    EmpID INT,
    Name VARCHAR(100),
    Salary DECIMAL(10, 2)
);

/* Goal 2: (DML) Insert a new employee into the table. */
INSERT INTO
    Employees (EmpID, Name, Salary)
VALUES (1, 'Saqib', 50000);

/* Goal 3: (DML) Update Saqib's salary. 
WARNING: Always use WHERE, or everyone gets updated! */
UPDATE Employees SET Salary = 60000 WHERE EmpID = 1;

/* Goal 4: (DDL) Add a brand new column to the table. */
ALTER TABLE Employees ADD Department VARCHAR(50);

/* Goal 5: (DML) Delete Saqib's row from the table. */
DELETE FROM Employees WHERE EmpID = 1;

/* Goal 6: (DDL) Demolish the entire table. */
DROP TABLE Employees;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================

-- TODO 1: (DDL) CREATE a table named Books.
CREATE TABLE Books ( BookID INT, Title VARCHAR(255) );

-- TODO 2: (DML) INSERT a new book into the table.
INSERT INTO
    Books (BookID, Title)
VALUES (101, 'Data Engineering 101');

-- TODO 3: (DML) UPDATE the table. Change the title to 'Advanced SQL'.
UPDATE Books SET Title = 'Advanced SQL' WHERE BookID = 101;

-- TODO 4: (DML) DELETE the row from the table.
DELETE FROM Books WHERE BookID = 101;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the difference between DELETE and TRUNCATE?
Ans: DELETE is a DML command. It removes rows one by one and can be filtered using a WHERE clause (e.g., DELETE WHERE ID = 5). TRUNCATE is a DDL command. It instantly wipes the entire table clean, removing all rows at once, and cannot be filtered with a WHERE clause. TRUNCATE is much faster.

Q2: What happens if you run an UPDATE command without a WHERE clause?
Ans: It will update every single row in the entire table to the new value, which is usually a massive mistake!
*/