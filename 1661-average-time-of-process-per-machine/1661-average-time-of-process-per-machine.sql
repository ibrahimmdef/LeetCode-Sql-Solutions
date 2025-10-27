/* Write your T-SQL query statement below */

SELECT machine_id, 
ROUND((SUM(CASE activity_type WHEN 'end' THEN timestamp ELSE 0 END)
-SUM(CASE activity_type WHEN 'start' THEN timestamp ELSE 0 END))
/COUNT(DISTINCT process_id)
, 3)
AS processing_time 
FROM Activity GROUP BY machine_id