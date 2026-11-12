CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(50)
);

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    dept_id INT,
    city VARCHAR(50),
    phone_number VARCHAR(20),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id)
);

INSERT INTO departments (dept_id, dept_name, location) VALUES
(10, 'Human Resources', 'Islamabad'),
(20, 'IT & Engineering', 'Lahore'),
(30, 'Sales & Operations', 'Karachi'),
(40, 'Marketing', 'Peshawar'),
(50, 'Finance', 'Quetta');


INSERT INTO employees (emp_id, emp_name, dept_id, city, phone_number) VALUES
(101, 'Ahmed Raza', 20, 'Lahore', '0300-1234501'),
(102, 'Fatima Tariq', 30, 'Karachi', '0321-2345602'),
(103, 'Usman Ghani', 10, 'Islamabad', '0333-3456703'),
(104, 'Ayesha Khan', 40, 'Peshawar', '0312-4567804'),
(105, 'Bilal Ahmed', 20, 'Rawalpindi', '0345-5678905'),
(106, 'Zainab Bibi', 30, 'Karachi', '0301-6789006'),
(107, 'Hamza Ali', 20, 'Faisalabad', '0322-7890107'),
(108, 'Sanaullah Khan', 40, 'Quetta', '0334-8901208'),
(109, 'Mariam Nawaz', 10, 'Lahore', '0313-9012309'),
(110, 'Kamran Akmal', 30, 'Multan', '0346-0123410'),
(111, 'Hina Pervaiz', 20, 'Islamabad', '0302-1122311'),
(112, 'Tariq Jameel', 10, 'Rawalpindi', '0323-2233412'),
(113, 'Nadia Hussain', 30, 'Karachi', '0335-3344513'),
(114, 'Zeeshan Ashraf', 40, 'Peshawar', '0314-4455614'),
(115, 'Sadia Imam', 20, 'Lahore', '0347-5566715'),
(116, 'Fawad Alam', 30, 'Karachi', '0303-6677816'),
(117, 'Mehwish Hayat', 40, 'Islamabad', '0324-7788917'),
(118, 'Junaid Jamshed', 10, 'Quetta', '0336-8899018'),
(119, 'Babar Azam', 20, 'Lahore', '0315-9900119'),
(120, 'Mahnoor Baloch', NULL, 'Karachi', '0348-0011220');



