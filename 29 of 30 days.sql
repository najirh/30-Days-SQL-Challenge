-- 29/30 Days SQL Challenge

DROP TABLE IF EXISTS Sales;
-- Create Sales table
CREATE TABLE Sales (
    sale_id INT,
    product_id INT,
    year INT,
    quantity INT,
    price INT
);
-- Insert sample records into Sales table
INSERT INTO Sales (sale_id, product_id, year, quantity, price) 
VALUES
(1, 100, 2008, 10, 5000),
(2, 100, 2009, 12, 5000),
(7, 200, 2011, 15, 9000),
(3, 100, 2010, 8, 5500),
(4, 100, 2011, 15, 4800),
(5, 200, 2013, 20, 8500),
(6, 200, 2006, 18, 9200),
(8, 300, 2012, 25, 7500),
(9, 300, 2009, 30, 7200),
(10, 300, 2013, 22, 6800);



/*
-- Walmart Data Analyst Interview Question

Write a solution to select the product id, year, quantity, 
and price for the first year of every product sold.
*/


-- --------------------------
-- My Solutions 
-- --------------------------


-- first year product sale details 
-- product_id, year (MIN), qty and price
-- rank

SELECT 
	product_id,
	first_year,
	quantity,
	price

FROM (
	SELECT 
		product_id,
		year as first_year,
		quantity,
		price,
		RANK() OVER(PARTITION BY product_id ORDER BY year) as rn
	FROM sales
) subquery
WHERE rn = 1







/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
	