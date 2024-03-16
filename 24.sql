-- 24/30 SQL Challenge

--  ----------------------------------------------------------------------------------
-- Questions 1
--  ----------------------------------------------------------------------------------	

-- SCHEMA 

-- Dropping the table if it exists and then recreating it
DROP TABLE IF EXISTS customers;

-- Creating the customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100)
);

-- Inserting sample data into the customers table
INSERT INTO customers (customer_id, first_name, last_name, email) VALUES
(1, 'John', 'Doe', 'john.doe@example.com'),
(2, 'Jane', 'Smith', 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', 'bob.brown@example.com'),
(5, 'Emily', 'Davis', 'john.doe@example.com'),
(6, 'Michael', 'Williams', 'michael.w@example.com'),
(7, 'David', 'Wilson', 'jane.smith@example.com'),
(8, 'Sarah', 'Taylor', 'sarah.t@example.com'),
(9, 'James', 'Anderson', 'james.a@example.com'),
(10, 'Laura', 'Martinez', 'laura.m@example.com');


/*


Consider a table named customers with the following columns: 
customer_id, first_name, last_name, and email. 
Write an SQL query to find all the duplicate email addresses 
in the customers table.

*/

-- email
-- GROUP BY email 
-- HAVING COUNT(email ) > 1

SELECT
	email
	-- COUNT(email) as cnt_frequency
FROM customers
GROUP BY email
HAVING COUNT(email) > 1

SELECT * FROM CUSTOMERS;













/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/