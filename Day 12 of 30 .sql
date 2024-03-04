-- Day 12/30 SQL Challenge
-- IBM Interview Questions 

-- ---------------------------------------------------
-- 2 IBM SQL Interview Questions
----------------------------------------------------


CREATE TABLE purchases (
    purchase_id INT PRIMARY KEY,
    user_id INT,
    date_of_purchase TIMESTAMP,
    product_id INT,
    amount_spent DECIMAL(10, 2)
);

INSERT INTO purchases (purchase_id, user_id, date_of_purchase, product_id, amount_spent) VALUES
(2171, 145, '2024-02-22 00:00:00', 43001, 1000),
(3022, 578, '2024-02-24 00:00:00', 25852, 4000),
(4933, 145, '2024-02-28 00:00:00', 43001, 7000),
(6322, 248, '2024-02-19 00:00:00', 25852, 2000),
(4717, 578, '2024-02-12 00:00:00', 25852, 7000),
(2172, 145, '2024-01-15 00:00:00', 43001, 8000),
(3023, 578, '2024-01-18 00:00:00', 25852, 3000),
(4934, 145, '2024-01-28 00:00:00', 43001, 9000),
(6323, 248, '2024-02-20 00:00:00', 25852, 1500),
(4718, 578, '2024-02-25 00:00:00', 25852, 6000);




/*
SQL Question 1: Identify IBM's High Capacity Users

SQL Question: 
Identify users who have made purchases 
totaling more than $10,000 in the last month 
from the purchases table. 
The table contains information about purchases, 
including the user ID, date of purchase, product ID, 
and amount spent.
*/


SELECT * FROM purchases;













-- -----------------------------------------
Question 2
-- -----------------------------------------

CREATE TABLE employee_service (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    start_date DATE,
    end_date DATE,
    department VARCHAR(50)
);

INSERT INTO employee_service (employee_id, name, start_date, end_date, department) VALUES
(101, 'John', '2015-01-15', '2020-06-30', 'Technology'),
(102, 'Emma', '2016-08-01', NULL, 'Management'),
(103, 'Ava', '2017-05-30', '2019-08-01', 'Strategy'),
(104, 'Oliver', '2018-11-11', NULL, 'Technology'),
(105, 'Sophia', '2020-01-17', NULL, 'Management'),
(106, 'William', '2019-03-20', NULL, 'Strategy'),
(107, 'James', '2018-09-10', NULL, 'Technology'),
(108, 'Charlotte', '2017-12-05', NULL, 'Management'),
(109, 'Michael', '2016-06-15', '2021-02-28', 'Technology'),
(110, 'Amelia', '2019-11-25', NULL, 'Strategy'),
(111, 'Ethan', '2018-04-08', '2022-01-10', 'Management'),
(112, 'Mia', '2020-07-15', NULL, 'Technology'),
(113, 'Alexander', '2017-10-30', '2020-09-15', 'Strategy'),
(114, 'Isabella', '2016-05-22', '2021-08-20', 'Management'),
(115, 'Liam', '2019-02-12', '2023-04-05', 'Technology'),
(116, 'Ella', '2018-08-05', '2022-11-28', 'Strategy'),
(117, 'Noah', '2020-09-18', NULL, 'Management'),
(118, 'Avery', '2017-11-10', NULL, 'Technology'),
(119, 'Benjamin', '2016-04-04', NULL, 'Strategy'),
(120, 'Abigail', '2019-08-30', NULL, 'Management');


/*
SQL Question 4: Average Duration of Employee's Service
Given the data on IBM employees, can you find the average duration 
of service for employees across different departments? 
The Duration of service is represented as end_date - start_date. 
If end_date is NULL, consider it as the current date.
*/


SELECT * FROM employee_service









