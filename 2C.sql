WITH VehicleAge AS (
    SELECT
        v.make,
        v.model,
        DATE_PART('year', AGE(NOW(), TO_DATE(CAST(v.year AS TEXT), 'YYYY'))) AS vehicle_age,
        COUNT(j.jobid) AS job_count
    FROM VEHICLE v
    LEFT JOIN JOB j ON v.vehicleid = j.vehicleid
    GROUP BY v.make, v.model, vehicle_age
)

SELECT
    make,
    model,
    vehicle_age,
    job_count
FROM VehicleAge
ORDER BY vehicle_age DESC, make, model;
