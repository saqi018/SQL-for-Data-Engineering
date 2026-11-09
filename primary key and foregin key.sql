-- PRIMARY KEY

/* CREATE TABLE products(
itemsId INT PRIMARY KEY,
itemName VARCHAR(50)

)


INSERT INTO products(itemsId, itemName)
VALUEs (01 , 'phone'), (02 , 'laptop'), (03 , 'screens')
*/

SELECT *
FROM products

-- FOREING KEY 
CREATE TABLE departments( 
dep_id INT PRIMARY KEY,
dep_name varchar(50),
emp_id INT,
FOREIGN KEY (emp_id) REFERENCES employees(emp_id)
);




	





