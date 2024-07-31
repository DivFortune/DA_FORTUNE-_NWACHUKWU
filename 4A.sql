SELECT p.partname, 
       SUM(p.quantity) AS total_quantity
FROM PARTS p
GROUP BY p.partname
ORDER BY total_quantity DESC
LIMIT 5;
