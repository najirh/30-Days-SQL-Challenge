-- 26/30 Days SQL Challenge

-- SCHEMA

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    order_date DATE,
    total_items_ordered INT
);

INSERT INTO orders VALUES
(1, 101, '2022-01-01', 5),
(2, 102, '2022-01-02', 10),
(3, 103, '2022-01-03', 8),
(4, 104, '2022-01-04', 12),
(5, 105, '2022-01-05', 15),
(6, 106, '2022-01-06', 20),
(7, 107, '2022-01-07', 25),
(8, 108, '2022-01-08', 30),
(9, 109, '2022-01-09', 35),
(10, 110, '2022-01-10', 40),
(11, 111, '2022-01-11', 45),
(12, 112, '2022-01-12', 50),
(13, 113, '2022-01-13', 55),
(14, 114, '2022-01-14', 60),
(15, 115, '2022-01-15', 65);


DROP TABLE IF EXISTS returns;

CREATE TABLE returns (
    return_id INT,
    order_id INT,
    return_date DATE,
    returned_items INT
);

INSERT INTO returns VALUES
(1, 1, '2022-01-03', 2),
(2, 2, '2022-01-05', 3),
(3, 3, '2022-01-07', 1),
(4, 5, '2022-01-08', 4),
(5, 6, '2022-01-08', 6),
(6, 7, '2022-01-09', 7),
(7, 8, '2022-01-10', 8),
(8, 9, '2022-01-11', 9),
(9, 10, '2022-01-12', 10),
(10, 11, '2022-01-13', 11),
(11, 12, '2022-01-14', 12),
(12, 13, '2022-01-15', 13),
(13, 14, '2022-01-16', 14),
(14, 15, '2022-01-17', 15);




/*
-- Amazon Data Analyst Interview 
Hard Category Questions Time 15min

Question:

Suppose you are given two tables - Orders and Returns. 
The Orders table contains information about orders placed by customers, 
and the Returns table contains information about returned items. 

Design a SQL query to 
find the top 5 ustomer with the highest percentage 
of returned items out of their total orders. 
	
Return the customer ID 
and the percentage of returned items rounded to two decimal places.

*/

-- customer_id,
-- total_items_ordered by each cx
-- total_items_returned by each cx
-- 2/4*100 50% total_items_returned/total_items_ordered*100



SELECT * FROM orders;
SELECT * FROM returns;













-- --------------------
-- My Solution
-- --------------------





WITH orders_cte
AS
(
SELECT
	customer_id,
	SUM(total_items_ordered) as total_items_ordered
FROM orders
GROUP BY customer_id
),
return_cte
As
(
SELECT
	o.customer_id,
	SUM(r.returned_items) as total_items_returned
FROM returns as r
JOIN
orders as o
ON r.order_id = o.order_id
GROUP BY 
o.customer_id
)

SELECT
	oc.customer_id,
	oc.total_items_ordered,
	rc.total_items_returned,
	ROUND(CASE
		WHEN oc.total_items_ordered > 0 THEN (rc.total_items_returned::float/oc.total_items_ordered::float)*100
	ELSE 0 END::numeric ,2) as return_percentage
	
FROM orders_cte as oc
JOIN
return_cte rc
ON oc.customer_id = rc.customer_id
ORDER BY return_percentage DESC 
LIMIT 5;







/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	