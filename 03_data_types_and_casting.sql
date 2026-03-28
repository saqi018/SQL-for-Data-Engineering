/*
==================================================
SQL Phase 1: Data Types & Casting
==================================================

Topic Explanation:
- Databases are strict. You cannot do math on a number stored as text (VARCHAR).
- CAST() acts as a shape-shifter. It forces a column to change its data type 
so you can perform calculations or date logic on it.
- Syntax: CAST(column_name AS new_data_type)
*/

-- ==================================================
-- 1️⃣ SOLVED EXAMPLES
-- ==================================================

/* Goal 1: The number 500 is wrapped in quotes, making it text (VARCHAR). 
We need to CAST it into a real Integer (INT). */
SELECT CAST('500' AS INT);

/* Goal 2: We have a literal date string '2026-03-17'. 
We need to CAST it into a real SQL DATE format. */
SELECT CAST('2026-03-17' AS DATE);

/* Goal 3: Real World Example. Selecting a column of dirty string salaries 
from a table and converting them to decimals. 
Notice: NO single quotes around the column name! */
SELECT CAST(StringSalary AS DECIMAL) FROM Raw_Employee_Data;

-- ==================================================
-- 2️⃣ PRACTICE TASKS (SOLVED)
-- ==================================================
/*
Table Name: import_data
Columns: UserID (INT), string_age (VARCHAR), string_signup_date (VARCHAR)
*/

-- TODO 1: Select the 'string_age' column from the 'import_data' table, but CAST it as an INT.
SELECT CAST(string_age AS INT) FROM import_data;

-- TODO 2: Select the 'string_signup_date' column from the 'import_data' table, but CAST it as a DATE.
SELECT CAST(string_signup_date AS DATE) FROM import_data;

-- ==================================================
-- 3️⃣ IMPORTANT INTERVIEW QUESTIONS
-- ==================================================

/*
Q1: What is the difference between CAST and CONVERT?
Ans: CAST() is the ANSI-standard SQL function that works across almost all databases (MySQL, Postgres, Snowflake). CONVERT() does the same thing but is specific to Microsoft SQL Server (MSSQL). Always use CAST() for better cross-platform compatibility.

Q2: Why must you NOT put single quotes around column names?
Ans: Single quotes are used to define literal string values. If you write 'Salary', the database sees the text word "Salary". If you write Salary (no quotes), the database knows to look for the actual column named Salary.
*/