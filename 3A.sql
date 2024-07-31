-- Find the top 3 most common types of jobs and their frequencies
SELECT j.description, COUNT(j.jobid) AS job_count
FROM JOB j
GROUP BY j.description
ORDER BY job_count DESC
LIMIT 3;
