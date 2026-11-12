-- Create Customers Table
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    name VARCHAR(100) ,
    phone VARCHAR(25) ,
    email VARCHAR(100) UNIQUE ,
    address VARCHAR(100) 
);

-- Create Orders Table
CREATE TABLE orders (
    order_id VARCHAR(20) PRIMARY KEY,
    customer_id VARCHAR(20) ,
    product_name VARCHAR(100),
    category VARCHAR(50),
    quantity INT,
    price DECIMAL(10, 2),
    order_date DATE,
    status VARCHAR(30),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);



-- Insert 20 Customers
INSERT INTO customers (customer_id, name, phone, email, address) VALUES
('CUST-101', 'Ali Raza', '+92-300-5550101', 'ali.raza@example.com', 'Lahore'),
('CUST-102', 'Sara Ahmed', '+92-300-5550102', 'sara.ahmed@example.com', 'Karachi'),
('CUST-103', 'Usman Tariq', '+92-300-5550103', 'usman.tariq@example.com', 'Islamabad'),
('CUST-104', 'Fatima Noor', '+92-300-5550104', 'fatima.noor@example.com', 'Rawalpindi'),
('CUST-105', 'Bilal Khan', '+92-300-5550105', 'bilal.khan@example.com', 'Faisalabad'),
('CUST-106', 'Ayesha Malik', '+92-300-5550106', 'ayesha.malik@example.com', 'Multan'),
('CUST-107', 'Hamza Sheikh', '+92-300-5550107', 'hamza.sheikh@example.com', 'Peshawar'),
('CUST-108', 'Zainab Abbas', '+92-300-5550108', 'zainab.abbas@example.com', 'Quetta'),
('CUST-109', 'Omar Farooq', '+92-300-5550109', 'omar.farooq@example.com', 'Sialkot'),
('CUST-110', 'Hina Javed', '+92-300-5550110', 'hina.javed@example.com', 'Gujranwala'),
('CUST-111', 'Kamran Siddiqui', '+92-300-5550111', 'kamran.siddiqui@example.com', 'Hyderabad'),
('CUST-112', 'Nadia Hussain', '+92-300-5550112', 'nadia.hussain@example.com', 'Bahawalpur'),
('CUST-113', 'Tariq Mahmood', '+92-300-5550113', 'tariq.mahmood@example.com', 'Sargodha'),
('CUST-114', 'Sana Mir', '+92-300-5550114', 'sana.mir@example.com', 'Abbottabad'),
('CUST-115', 'Danish Iqbal', '+92-300-5550115', 'danish.iqbal@example.com', 'Sukkur'),
('CUST-116', 'Mahnoor Riaz', '+92-300-5550116', 'mahnoor.riaz@example.com', 'Mardan'),
('CUST-117', 'Fahad Mustafa', '+92-300-5550117', 'fahad.mustafa@example.com', 'Rahim Yar Khan'),
('CUST-118', 'Iqra Aziz', '+92-300-5550118', 'iqra.aziz@example.com', 'Kasur'),
('CUST-119', 'Salman Butt', '+92-300-5550119', 'salman.butt@example.com', 'Sheikhupura'),
('CUST-120', 'Rabia Basri', '+92-300-5550120', 'rabia.basri@example.com', 'Jhelum');

-- Insert 20 Orders
INSERT INTO orders (order_id, customer_id, product_name, category, quantity, price, order_date, status) VALUES
('ORD-201', 'CUST-101', 'Laptop', 'Computers', 1, 850.00, '2026-10-01', 'Delivered'),
('ORD-202', 'CUST-102', 'Phone', 'Mobile', 1, 620.00, '2026-10-03', 'Delivered'),
('ORD-203', 'CUST-103', 'Keyboard', 'Accessories', 2, 45.00, '2026-10-05', 'Delivered'),
('ORD-204', 'CUST-104', 'Mouse', 'Accessories', 1, 25.00, '2026-10-07', 'Shipped'),
('ORD-205', 'CUST-105', 'Tablet', 'Mobile', 1, 340.00, '2026-10-09', 'Delivered'),
('ORD-206', 'CUST-101', 'Monitor', 'Computers', 1, 210.00, '2026-10-11', 'Delivered'),
('ORD-207', 'CUST-106', 'Headphones', 'Audio', 1, 95.00, '2026-10-12', 'Shipped'),
('ORD-208', 'CUST-107', 'Smartwatch', 'Wearables', 1, 150.00, '2026-10-14', 'Delivered'),
('ORD-209', 'CUST-108', 'Printer', 'Office', 1, 180.00, '2026-10-16', 'Processing'),
('ORD-210', 'CUST-109', 'Speaker', 'Audio', 2, 60.00, '2026-10-18', 'Delivered'),
('ORD-211', 'CUST-110', 'Webcam', 'Accessories', 1, 55.00, '2026-10-20', 'Shipped'),
('ORD-212', 'CUST-111', 'Router', 'Networking', 1, 70.00, '2026-10-22', 'Delivered'),
('ORD-213', 'CUST-112', 'Charger', 'Accessories', 3, 18.00, '2026-10-24', 'Delivered'),
('ORD-214', 'CUST-103', 'Hard Drive', 'Storage', 1, 85.00, '2026-10-26', 'Shipped'),
('ORD-215', 'CUST-114', 'Earbuds', 'Audio', 1, 65.00, '2026-10-28', 'Processing'),
('ORD-216', 'CUST-115', 'Microphone', 'Audio', 1, 110.00, '2026-10-30', 'Delivered'),
('ORD-217', 'CUST-116', 'Power Bank', 'Mobile', 2, 30.00, '2026-11-02', 'Shipped'),
('ORD-218', 'CUST-117', 'USB Drive', 'Storage', 4, 12.00, '2026-11-04', 'Delivered'),
('ORD-219', 'CUST-118', 'Desk Lamp', 'Office', 1, 35.00, '2026-11-07', 'Pending'),
('ORD-220', 'CUST-120', 'Graphics Card', 'Computers', 1, 490.00, '2026-11-10', 'Processing');
