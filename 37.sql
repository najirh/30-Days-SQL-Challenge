-- 37/50 SQL challenge

-- Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

-- Create spending records table
CREATE TABLE spending_records (
    record_id INT PRIMARY KEY,
    customer_id INT,
    spending_amount DECIMAL(10, 2),
    spending_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert example data into customers table
INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'John'),
(2, 'Alice'),
(3, 'Bob'),
(4, 'Charlie');

-- Insert example data into spending records table
INSERT INTO spending_records (record_id, customer_id, spending_amount, spending_date) VALUES
(9, 1, 120.00, '2024-03-25'),
(10, 2, 80.00, '2024-03-25'),
(11, 3, 150.00, '2024-03-25'),
(12, 4, 70.00, '2024-03-25'),
(13, 1, 90.00, '2024-03-02'),
(14, 2, 100.00, '2024-04-02'),
(15, 3, 160.00, '2024-04-02'),
(16, 4, 30.00, '2024-03-02'),
(17, 1, 110.00, '2024-04-09'),
(18, 2, 70.00, '2024-02-09'),
(19, 3, 140.00, '2024-03-09'),
(20, 4, 60.00, '2024-04-09'),
(21, 1, 100.00, '2024-03-16'),
(22, 2, 60.00, '2024-03-16'),
(23, 3, 130.00, '2024-03-16'),
(24, 4, 50.00, '2024-04-16'),
(25, 1, 80.00, '2024-03-23'),
(26, 2, 50.00, '2024-04-23'),
(27, 3, 120.00, '2024-04-23'),
(28, 4, 40.00, '2024-04-23'),
(29, 1, 70.00, '2024-04-30'),
(30, 2, 40.00, '2024-04-30'),
(31, 3, 110.00, '2024-03-01'),
(32, 4, 30.00, '2024-03-01');

/*

-- Amazon Data Analyst Interview Question

You are given two table of amazon
spending_records and customers 

Write a SQL query to show all customers
and their total spending show only those
customers whos total spending has reduced
compare to last month ()

Return customer_name, customer_id, 
last MONTH spend, current month spent 

-- Note consider last month as March
Current Month as April
*/

-- each cx spend for march
-- each cx spend for april
-- compare both of these 
-- make logic to say lasmonth spend > curr spend

SELECT * FROM spending_records;
SELECT * FROM customers;


WITH CTE1 -- march_spend
AS
(    
SELECT 
    customer_id,
    SUM(spending_amount) as total_spend
FROM spending_records
WHERE EXTRACT(MONTH FROM spending_date) = 3  
 -- MONTH(spending_date)
GROUP BY 1
),
CTE2 -- april_spend
AS
(SELECT 
    customer_id,
    SUM(spending_amount) as total_spend
FROM spending_records
WHERE EXTRACT(MONTH FROM spending_date) = 4  
 -- MONTH(spending_date)
GROUP BY 1)

SELECT 
    CTE1.customer_id,
    c.customer_name,
    CTE1.total_spend as lastmonth_total_spend,
    CTE2.total_spend as currentmonth_total_spend
FROM CTE1
JOIN
CTE2
ON CTE1.customer_id = CTE2.customer_id
JOIN customers as c
ON CTE1.customer_id = c.customer_id
WHERE  CTE1.total_spend > CTE2.total_spend














































-- WITH CTE1
-- AS
-- (
-- SELECT
--     customer_id,
--     SUM(spending_amount) as total_sepnd
-- FROM spending_records
-- WHERE EXTRACT(MONTH FROM spending_date) = 3
-- GROUP BY 1
-- ),
-- CTE2
-- AS
-- (
-- SELECT
--     customer_id,
--     SUM(spending_amount) as total_sepnd
-- FROM spending_records
-- WHERE EXTRACT(MONTH FROM spending_date) = 4
-- GROUP BY 1
-- )

-- SELECT 
--     CTE1.customer_id,
--     CTE1.total_sepnd,
--     CTE2.total_sepnd
-- FROM CTE1
-- JOIN 
-- CTE2
-- ON CTE1.customer_id = CTE2.customer_id
-- WHERE 
-- CTE1.total_sepnd >  CTE2.total_sepnd




