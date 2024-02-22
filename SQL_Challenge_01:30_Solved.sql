
/* 1. You have two tables: Product and Supplier.
Product Table Columns: Product_id, Product_Name, 
Supplier_id, Price
- Supplier Table Columns: Supplier_id, 
Supplier_Name, Country

-- Write an SQL query to find the name of the product with the highest 
-- price in each country. return product_name, price, country
*/



SELECT * FROM suppliers;
SELECT * FROM products;

SELECT *
FROM(	
	SELECT
			p.product_name,
			p.price,
			s.country,
			ROW_NUMBER() OVER(PARTITION BY s.country ORDER BY p.price DESC) as rn
		FROM products as p
		JOIN suppliers as s
		ON p.supplier_id = s.supplier_id ) x1
WHERE rn = 1;


-- Q.2 
/* 
You have two tables: Customer and Transaction.
- Customer Table Columns: Customer_id, Customer_Name, 
Registration_Date
- Transaction Table Columns: Transaction_id, 
Customer_id, Transaction_Date, Amount

-- Write an SQL query to calculate the total transaction amount for 
each customer for the current year. 
The output should contain Customer_Name and the total amount.
*/
-- customer_name, total spent, 
-- current year

SELECT * FROM customers;
SELECT * FROM transactions;

SELECT
	c.customer_name,
	SUM(t.amount) as total_amt
FROM customers as c
JOIN transactions as t
ON c.customer_id = t.customer_id
WHERE EXTRACT(YEAR FROM transaction_date) = EXTRACT(YEAR FROM CURRENT_DATE)
-- YEAR(transaction_date) = YEAR(current_date)
GROUP BY 1








