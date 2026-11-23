-- Mini SwiftMart Project
/*

CREATE DATABASE SwiftMart_DB

CREATE TABLE Hub (
Hub_id INT PRIMARY KEY,
Hub_Name VARCHAR(50) NOT NULL UNIQUE,
City VARCHAR(50) NOT NULL
)
*/
/*

CREATE TABLE Riders (
Rider_id INT PRIMARY KEY,
Rider_name VARCHAR(50) NOT NULL,
Phone VARCHAR(20),
Hub_id INT FOREIGN KEY REFERENCES Hub,
Base_salary DECIMAL(10,2) NOT NULL,
)

ALTER TABLE Riders
ADD Rating DECIMAL(3,2)



CREATE TABLE Hub_Order(
order_id INT PRIMARY KEY,
Customer_Name VARCHAR(50) NOT NULL,
Order_Amount DECIMAL(10,2) NOT NULL,
Status VARCHAR(20),
Rider_id INT FOREIGN KEY REFERENCES Riders)
*/
INSERT  INTO Hub (Hub_id, Hub_Name, City)
VALUES          (1, 'TCS', 'ISLAMABAD'),
(2, 'laopards', 'LAHORE'),
(3, 'Daraz', 'PESHAWAR'),
(4, 'PakPost', 'KARACHI');

INSERT  INTO Riders (Rider_id, Rider_name, Phone, Hub_id, Base_salary, Rating)
VALUES             (101, 'Ali Raza', '0300-1112233', 1, 45000.00, NULL),
(102, 'Sara Khan', '0321-4445566', 1, 60000.00, NULL),
(103, 'Bilal Ahmed', '0333-7778899', 1, 38000.00, NULL),
(104, 'Saad Tariq', '0312-9990011', 2, 52000.00, NULL),
(105, 'Usman Ghani', '0345-2223344', 3, 70000.00, NULL),
(106, 'Ayesha Malik', '0301-5556677', NULL, 35000.00, NULL),
(107, 'Sara Khan', '0321-4445566', 2, 60000.00, NULL);

INSERT  INTO Hub_order (Order_id, Customer_Name, Order_Amount, Status, Rider_id)
VALUES
(1001, 'Zainab Fatima', 2500.00, 'Delivered', 101),
(1002, 'Kamran Akmal', 1800.00, 'Delivered', 102),
(1003, 'Hina Pervaiz', 350.00, 'Cancelled', 103),
(1004, 'Omer Farooq', 4200.00, 'Pending', 101),
(1005, 'Sana Javed', 1200.00, 'Delivered', 104),
(1006, 'Tariq Mahmood', 950.00, 'Cancelled', 102),
(1007, 'Nida Yasir', 3100.00, 'Pending', NULL),
(1008, 'Fawad Alam', 1500.00, 'Delivered', 105);

SELECT *
FROM   hub;

SELECT *
FROM Riders;

UPDATE Riders
SET base_salary = base_salary * 1.10
WHERE Rating > 4.5;

UPDATE Riders
SET    Rating = 4.3
WHERE  Rider_id = 101;

UPDATE Riders
SET    Rating = 3.9
WHERE  Rider_id = 102;

UPDATE Riders
SET    Rating = 2.5
WHERE  Rider_id = 103;

UPDATE Riders
SET    Rating = 4.8
WHERE  Rider_id = 104;

UPDATE Riders
SET    Rating = 2.7
WHERE  Rider_id = 105;

UPDATE Riders
SET    Rating = 4.0
WHERE  Rider_id = 106;


UPDATE Riders
WHERE Rating > 4.5



SELECT *
FROM   Hub_Order;
