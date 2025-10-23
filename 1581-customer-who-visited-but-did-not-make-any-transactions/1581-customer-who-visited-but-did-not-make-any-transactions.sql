/* Write your T-SQL query statement below */

SELECT customer_id , count(*) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (
    SELECT visit_id 
    FROM transactions) 
GROUP BY customer_id

