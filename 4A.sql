-- Find the top 5 most frequently used parts based on quantity and rank them by total amount
SELECT p.partname, 
       SUM(p.quantity) AS total_quantity
FROM PARTS p
GROUP BY p.partname
ORDER BY total_quantity DESC
LIMIT 5;
