

-- Leetcode problem LeetCode SQL Premium Problem 2853: 'Highest Salary Difference'


-- DDL for Salaries table
CREATE TABLE Salaries (
emp_name VARCHAR(50),
department VARCHAR(50),
salary INT,
PRIMARY KEY (emp_name, department)
);

-- DML for Salaries table
INSERT INTO Salaries (emp_name, 
					  department, salary) VALUES
('Kathy', 'Engineering', 50000),
('Roy', 'Marketing', 30000),
('Charles', 'Engineering', 45000),
('Jack', 'Engineering', 85000),
('Benjamin', 'Marketing', 34000),
('Anthony', 'Marketing', 42000),
('Edward', 'Engineering', 102000),
('Terry', 'Engineering', 44000),
('Evelyn', 'Marketing', 53000),
('Arthur', 'Engineering', 32000);



/*
Write an SQL query to calculate the difference 
between the highest salaries 
in the marketing and engineering department. 
Output the absolute difference in salaries.
*/





SELECT * FROM Salaries;




-- ----------------------------------------------
-- My solution
-- ----------------------------------------------





SELECT
	ABS(MAX(CASE WHEN department = 'Marketing' THEN salary END) -
	MAX(CASE WHEN department = 'Engineering' THEN salary END)) as salary_diff
FROM Salaries;
	
-- Solving the same problem using CTE and Window Function








/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/

