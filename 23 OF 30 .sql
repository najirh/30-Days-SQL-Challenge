-- 23/30 Days SQL Challenge

-- Dropping the table if it exists and then recreating it
DROP TABLE IF EXISTS employee;

-- Creating the employee table
CREATE TABLE employee (
    EMP_ID INT PRIMARY KEY,
    SALARY DECIMAL(10, 2)
);

-- Inserting sample data into the employee table
INSERT INTO employee (EMP_ID, SALARY) VALUES
(1, 50000),
(2, 60000),
(3, 70000),
(4, 45000),
(5, 80000),
(6, 55000),
(7, 75000),
(8, 62000),
(9, 48000),
(10, 85000);

/*
Question 1

Given the employee table with columns EMP_ID and SALARY, 
write an SQL query to find all salaries greater than the average salary.
return emp_id and salary
*/


-- ----------------------------------------------
-- My solution
-- ----------------------------------------------

-- avg salary
-- salary > avg salary

-- SELECT AVG(salary) FROM employee; 63000

SELECT 
	emp_id,
	salary
FROM employee
WHERE salary < (SELECT AVG(salary) FROM employee)








/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
