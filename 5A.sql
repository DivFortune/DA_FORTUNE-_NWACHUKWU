SELECT DATE_TRUNC('month', invoicedate) AS month,
       SUM(totallabour) AS total_labor_revenue,
       SUM(totalparts) AS total_parts_revenue
FROM INVOICE
GROUP BY DATE_TRUNC('month', invoicedate)
ORDER BY month;
