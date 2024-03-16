-- 17/30 SQL Challenge

-- Zomato Business Analyst interview question 

CREATE TABLE order_details (
    order_id INT,
    del_partner VARCHAR(255),
    predicted_time TIMESTAMP,
    delivery_time TIMESTAMP
);


INSERT INTO order_details (order_id, del_partner, predicted_time, delivery_time) 
VALUES 
    (11, 'Partner C', '2024-02-29 11:30:00', '2024-02-29 12:00:00'),
    (12, 'Partner A', '2024-02-29 10:45:00', '2024-02-29 11:30:00'),
    (13, 'Partner B', '2024-02-29 09:00:00', '2024-02-29 09:45:00'),
    (14, 'Partner A', '2024-02-29 12:15:00', '2024-02-29 13:00:00'),
    (15, 'Partner C', '2024-02-29 13:30:00', '2024-02-29 14:15:00'),
    (16, 'Partner B', '2024-02-29 14:45:00', '2024-02-29 15:30:00'),
    (17, 'Partner A', '2024-02-29 16:00:00', '2024-02-29 16:45:00'),
    (18, 'Partner B', '2024-02-29 17:15:00', '2024-02-29 18:00:00'),
    (19, 'Partner C', '2024-02-29 18:30:00', '2024-02-29 19:15:00');


/*
-- How many delayed orders does each delivery partner have, 
considering the predicted delivery time and the actual delivery time?
*/




-- My solution


-- del_partner delayed orders cnt 
-- delayed order means del_time > pred_del_time



SELECT 
	del_partner,
	COUNT(order_id) as cnt_delayed_orders	
FROM order_details
WHERE 
	predicted_time < delivery_time
GROUP BY del_partner;




