-- Day 02/30 days SQL challenge


-- SCHEMA


-- Create pages table
CREATE TABLE pages (
    page_id INTEGER PRIMARY KEY,
    page_name VARCHAR(255)
);

-- Insert data into pages table
INSERT INTO pages (page_id, page_name) VALUES
(20001, 'SQL Solutions'),
(20045, 'Brain Exercises'),
(20701, 'Tips for Data Analysts');

-- Create page_likes table
CREATE TABLE page_likes (
    user_id INTEGER,
    page_id INTEGER,
    liked_date DATETIME,
    FOREIGN KEY (page_id) REFERENCES pages(page_id)
);

-- Insert data into page_likes table
INSERT INTO page_likes (user_id, page_id, liked_date) VALUES
(111, 20001, '2022-04-08 00:00:00'),
(121, 20045, '2022-03-12 00:00:00'),
(156, 20001, '2022-07-25 00:00:00');



/*
Question:
Write a SQL query to retrieve the IDs of the Facebook pages that have zero likes. 
The output should be sorted in ascending order based on the page IDs.
*/


-- My Solution


SELECT p.page_id
FROM pages p
LEFT JOIN page_likes pl ON p.page_id = pl.page_id
GROUP BY p.page_id
HAVING COUNT(pl.page_id) = 0
ORDER BY p.page_id ASC;




-- Question link ::  https://datalemur.com/questions/sql-page-with-no-likes


/*	
Follow me in LinkedIn :: https://www.linkedin.com/in/najirr/
Follow me in insta :: https://www.instagram.com/zero_analyst/
Subscribe to our youtube channel :: https://www.youtube.com/@zero_analyst
*/
