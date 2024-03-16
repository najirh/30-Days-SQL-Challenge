-- Day 06/30 days sql challenge


-- SCHEMAS


-- Create viewership table
CREATE TABLE viewership (
    device_type VARCHAR(255),
    viewership_count INTEGER
);

-- Insert sample records
INSERT INTO viewership (device_type, viewership_count) VALUES
('laptop', 5000),
('tablet', 3000),
('phone', 7000),
('laptop', 6000),
('tablet', 4000),
('phone', 8000),
('laptop', 5500),
('tablet', 3500),
('phone', 7500);

-- Formulate the question


/*

Question:
Write a query that calculates the total viewership for laptops and mobile devices, 
where mobile is defined as the sum of tablet and phone viewership. Output the total 
viewership for laptops as laptop_views and the total viewership for mobile devices as mobile_views.

*/



-- ----------------------------------------------
-- My solution
-- ----------------------------------------------




SELECT 
    SUM(CASE WHEN device_type = 'laptop' THEN viewership_count ELSE 0 END) AS laptop_views,
    SUM(CASE WHEN device_type IN ('tablet', 'phone') THEN viewership_count ELSE 0 END) AS mobile_views
FROM viewership;



-- Question link https://datalemur.com/questions/laptop-mobile-viewership

/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/

