-- 27/30 

-- SCHEMAS

DROP TABLE IF EXISTS orders;

-- Create the orders table
CREATE TABLE orders (
    user_id INT,
    item_ordered VARCHAR(512)
);

-- Insert sample data into the orders table
INSERT INTO orders VALUES 
('1', 'Pizza'),
('1', 'Burger'),
('2', 'Cold Drink'),
('2', 'Burger'),
('3', 'Burger'),
('3', 'Cold Drink'),
('4', 'Pizza'),
('4', 'Cold Drink'),
('5', 'Cold Drink'),
('6', 'Burger'),
('6', 'Cold Drink'),
('7', 'Pizza'),
('8', 'Burger');

-- Flipkart Data Analyst Interview Questions
-- Question: Write an SQL query to fetch user IDs that have only bought both 'Burger' and 'Cold Drink' items.

-- Expected Output Columns: user_id


-- -----------------------
-- My Solution
-- -----------------------



-- user_id
-- COUNT(orders) = 2
-- DISTINCT 

SELECT 
	user_id
	-- COUNT(DISTINCT item_ordered)
FROM orders
GROUP BY user_id
HAVING COUNT(DISTINCT item_ordered) = 2
AND
	SUM(CASE WHEN item_ordered IN ('Burger', 'Cold Drink') 
		THEN 1
		ELSE 0
	END
	) = 2  -- 2, 3, 6








/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/

