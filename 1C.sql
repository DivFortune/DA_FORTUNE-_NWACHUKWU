SELECT c.name, COUNT(i.invoiceid) AS visit_count
FROM CUSTOMER c
JOIN INVOICE i ON c.customerid = i.customerid
GROUP BY c.name
ORDER BY visit_count DESC;
