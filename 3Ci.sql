WITH JobAvgCost AS (
    SELECT
        j.description,
        AVG(j.amount) AS avg_cost
    FROM JOB j
    GROUP BY j.description
)

SELECT
    description,
    avg_cost
FROM JobAvgCost
WHERE avg_cost = (SELECT MAX(avg_cost) FROM JobAvgCost)
   OR avg_cost = (SELECT MIN(avg_cost) FROM JobAvgCost);




