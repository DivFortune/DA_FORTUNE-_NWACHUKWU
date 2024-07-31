WITH AvgJobCost AS (
    SELECT AVG(j.amount) AS avg_cost
    FROM JOB j
    GROUP BY j.description
)
SELECT 'Highest' AS cost_type, MAX(avg_cost) AS avg_cost
FROM AvgJobCost
UNION ALL
SELECT 'Lowest' AS cost_type, MIN(avg_cost) AS avg_cost
FROM AvgJobCost;




