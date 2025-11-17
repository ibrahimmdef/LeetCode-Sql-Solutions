/* Write your T-SQL query statement below */
SELECT name,bonus 
FROM Employee t1
LEFT JOIN Bonus t2 
ON t1.empId=t2.empId 
WHERE bonus < 1000 OR bonus IS NULL