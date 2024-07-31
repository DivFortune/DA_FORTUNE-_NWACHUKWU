SELECT c.name, SUM(i.total) AS total_spent
FROM CUSTOMER c
JOIN INVOICE i ON c.customerid = i.customerid
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;
