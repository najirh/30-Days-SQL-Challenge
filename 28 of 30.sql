-- 28/30 Days SQL Challenge!

DROP TABLE IF EXISTS orders;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    seller_id INT,
    sale_amount DECIMAL(10, 2)
);


DROP TABLE IF EXISTS returns;

CREATE TABLE returns (
    return_id INT PRIMARY KEY,
    seller_id INT,
    return_quantity INT
);


INSERT INTO orders (order_id, seller_id, sale_amount) VALUES
(1, 101, 1500.00),
(2, 102, 2200.00),
(3, 103, 1800.00),
(4, 104, 2500.00),
(5, 107, 1900.00),
(6, 106, 2100.00),
(7, 107, 2400.00),
(8, 107, 1700.00),
(9, 108, 2000.00),
(10, 107, 2300.00),
(11, 103, 2600.00),
(12, 102, 2900.00),
(13, 101, 3100.00),
(14, 101, 2800.00),
(15, 101, 3300.00),
(16, 106, 2700.00),
(17, 101, 3000.00),
(18, 108, 3200.00),
(19, 107, 3400.00),
(20, 106, 3500.00),
(21, 101, 3600.00),
(22, 102, 3700.00),
(23, 103, 3800.00),
(24, 102, 3900.00),
(25, 105, 4000.00);

INSERT INTO returns (return_id, seller_id, return_quantity) VALUES
(1, 101, 10),
(2, 102, 5),
(3, 103, 8),
(4, 104, 3),
(5, 105, 12),
(6, 106, 6),
(7, 107, 4),
(8, 108, 9);



/*
-- Amazon DS Interview Question?

-- Given two tables, orders and return, containing sales and returns data for Amazon's 


write a SQL query to find the top 3 sellers with the highest sales amount 
but the lowest lowest return qty. 

*/


-- ------------------
-- My Solution
-- ------------------


-- total_sales by each seller
-- total_qty return by each seller


SELECT * FROM orders;
SELECT * FROM returns;


WITH orders_cte
AS
(
SELECT
	seller_id,
	SUM(sale_amount) as total_sales
FROM orders
GROUP BY seller_id	
),

returns_cte
AS
(
SELECT
	seller_id,
	SUM(return_quantity) as total_return_qty
FROM returns
GROUP BY seller_id
)

SELECT 
	orders_cte.seller_id as seller_id,
	orders_cte.total_sales as total_sale_amt,
	COALESCE(returns_cte.total_return_qty, 0) as total_return_qty
FROM orders_cte
LEFT JOIN
returns_cte
ON orders_cte.seller_id = returns_cte.seller_id
ORDER BY total_sale_amt DESC, total_return_qty ASC
LIMIT 3















/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	





