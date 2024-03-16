-- 18/30 SQL Challenge

-- SWIGGY BA Interview questions 


-- Create the Table
CREATE TABLE restaurant_orders (
    city VARCHAR(50),
    restaurant_id INT,
    order_id INT,
    order_date DATE
);


-- Insert Records
INSERT INTO restaurant_orders (city, restaurant_id, order_id, order_date)
VALUES
    ('Delhi', 101, 1, '2021-09-05'),
    ('Bangalore', 102, 12, '2021-09-08'),
    ('Bangalore', 102, 13, '2021-09-08'),
    ('Bangalore', 102, 14, '2021-09-08'),
    ('Mumbai', 103, 3, '2021-09-10'),
    ('Mumbai', 103, 30, '2021-09-10'),
    ('Chennai', 104, 4, '2021-09-15'),
    ('Delhi', 105, 5, '2021-09-20'),
    ('Bangalore', 106, 6, '2021-09-25'),
    ('Mumbai', 107, 7, '2021-09-28'),
    ('Chennai', 108, 8, '2021-09-30'),
    ('Delhi', 109, 9, '2021-10-05'),
    ('Bangalore', 110, 10, '2021-10-08'),
    ('Mumbai', 111, 11, '2021-10-10'),
    ('Chennai', 112, 12, '2021-10-15'),
    ('Kolkata', 113, 13, '2021-10-20'),
    ('Hyderabad', 114, 14, '2021-10-25'),
    ('Pune', 115, 15, '2021-10-28'),
    ('Jaipur', 116, 16, '2021-10-30');

/*
Question:

Which metro city had the highest number of restaurant orders in September 2021?

Write the SQL query to retrieve the city name and the total count of orders, 
ordered by the total count of orders in descending order.

-- Note metro cites are 'Delhi', 'Mumbai', 'Bangalore', 'Hyderabad'
*/


__________________________
-- My solution
__________________________

-- city name
-- total orders 
-- filter metro
-- grouyp by city 
-- 1 


SELECT 
		city,
		count(order_id) as total_orders
FROM restaurant_orders
WHERE city IN ('Delhi', 'Mumbai', 'Bangalore', 'Hyderabad')
AND order_date BETWEEN '2021-09-01' AND '2021-09-30'
GROUP BY city
ORDER BY total_orders DESC
LIMIT 1;






















-- SELECT 
-- 	city,
-- 	COUNT(order_id) as total_orders
-- FROM restaurant_orders
-- WHERE city IN ('Delhi', 'Mumbai', 'Bangalore', 'Hyderabad')
-- AND order_date BETWEEN '2021-09-01' AND '2021-09-30'
-- GROUP BY city 
-- ORDER BY total_orders DESC
-- LIMIT 1;







