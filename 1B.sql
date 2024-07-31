SELECT AVG(total_spent) AS avg_spending
FROM (
    SELECT SUM(i.total) AS total_spent
    FROM INVOICE i
    GROUP BY i.customerid
) AS customer_totals;
