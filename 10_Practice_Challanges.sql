/*
==================================================
SQL Phase 1: Final Practical Challenges
==================================================

-- ==================================================
-- CHALLENGE 1: The Email Campaign
-- Goal: Find customers with a @gmail.com email, sorted alphabetically.
-- ==================================================
SELECT FullName, Email
FROM Customers
WHERE Email LIKE '%@gmail.com'
ORDER BY FullName ASC;


-- ==================================================
-- CHALLENGE 2: High-Performing Stores
-- Goal: Find regions with over $100,000 in total revenue.
-- ==================================================
SELECT Region, SUM(Revenue) AS Total
FROM Store_Sales
GROUP BY Region
HAVING SUM(Revenue) > 100000
ORDER BY Total DESC;


-- ==================================================
-- CHALLENGE 3: The Ghost Customers (Anti-Join)
-- Goal: Find users who have registered but NEVER made a purchase.
-- ==================================================
SELECT U.UserName
FROM Users AS U
LEFT JOIN Purchases AS P
    ON U.UserID = P.UserID
WHERE P.PurchaseID IS NULL;


-- ==================================================
-- CHALLENGE 4: The Merged Guest List
-- Goal: Combine two event lists into one clean list with NO duplicates.
-- ==================================================
SELECT AttendeeName, Email FROM Webinar_A
UNION
SELECT AttendeeName, Email FROM Webinar_B;


-- ==================================================
-- CHALLENGE 5: The Database Admin
-- Goal: Build a table, insert an employee, update their title, and delete them.
-- ==================================================
CREATE TABLE Staff (
    ID INT, 
    FirstName VARCHAR(100), 
    JobTitle VARCHAR(100)
);

INSERT INTO Staff (ID, FirstName, JobTitle)
VALUES (1, 'Saqib', 'Junior Engineer');

UPDATE Staff 
SET JobTitle = 'Senior Data Engineer' 
WHERE ID = 1;

DELETE FROM Staff 
WHERE ID = 1;