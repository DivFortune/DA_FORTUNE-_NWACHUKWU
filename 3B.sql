SELECT j.description, SUM(j.amount) AS total_revenue
FROM JOB j
GROUP BY j.description
ORDER BY total_revenue DESC;
