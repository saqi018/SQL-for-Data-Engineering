SELECT Name, Email
FROM US_Customers
UNION ALL
SELECT Name, Email
FROM UK_Customers;

SELECT Name, Email
FROM US_Customers
UNION
SELECT Name, Email
FROM UK_Customers;

SELECT Name, Email
FROM US_Customers INTERSECT
SELECT Name, Email
FROM UK_Customers;

SELECT Name, Email
FROM US_Customers EXCEPT
SELECT Name, Email,
FROM UK_Customers

/* unsolved quiz */

SELECT ProductID, Revenue
FROM Q1_Sales
UNION ALL
SELECT ProductID, Revenue
FROM Q2_Sales

SELECT ProductID, Revenue
FROM Q1_Sales
UNION
SELECT ProductID, Revenue
FROM Q2_Sales

SELECT ProductID, Revenue
FROM Q1_Sales INTERSECT
SELECT ProductID, Revenue
FROM Q2_Sales

SELECT ProductID, Revenue
FROM Q1_Sales EXCEPT
SELECT ProductID, Revenue
FROM Q2_Sales