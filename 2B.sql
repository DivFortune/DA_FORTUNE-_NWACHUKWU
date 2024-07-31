SELECT 
    v.make, 
    v.model, 
    COUNT(i.invoiceid) AS visit_count
FROM 
    VEHICLE v
JOIN 
    INVOICE i ON v.vehicleid = i.vehicleid
JOIN 
    JOB j ON i.invoiceid = j.invoiceid
GROUP BY 
    v.make, v.model
ORDER BY 
    visit_count DESC
LIMIT 2;
