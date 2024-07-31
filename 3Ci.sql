SELECT j.description, AVG(j.amount) AS avg_cost
FROM JOB j
GROUP BY j.description
ORDER BY avg_cost DESC
LIMIT 1;



