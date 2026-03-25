SELECT 
    dep.DepartmentName,
    SUM(f.TotalTreatmentCost) AS Total_Revenue
FROM FactHospitalVisitMetrics f
JOIN DimDepartment dep ON f.DepartmentID = dep.DepartmentID
GROUP BY dep.DepartmentID
ORDER BY Total_Revenue DESC;


SELECT 
    d.DoctorName,
    SUM(f.TotalTreatmentCost) AS Total_Revenue
FROM FactHospitalVisitMetrics f
JOIN DimDoctor d ON f.DoctorID = d.DoctorID
GROUP BY d.DoctorName
ORDER BY Total_Revenue DESC;

----------Track Patient Treatment Histories and Diagnoses