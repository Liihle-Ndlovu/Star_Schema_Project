SELECT 
    f.VisitFactID,
    p.Name AS PatientName,
    d.DoctorName,
    dep.DepartmentName,
    w.WardName,
    t.TreatmentName,
    m.Provider AS MedicalAidProvider,
    dt.FullDate AS VisitDate,
    f.LengthOfStay,
    f.NumberOfProcedures,
    f.TotalTreatmentCost,
    f.AmountCharged,
    f.AmountCoveredByMedicalAid,
    f.AmountPaidByPatient,
    f.AmountOutstanding
FROM FactHospitalVisitMetrics f
INNER JOIN DimPatient p       ON f.PatientID = p.PatientID
INNER JOIN DimDoctor d        ON f.DoctorID = d.DoctorID
INNER JOIN DimDepartment dep  ON f.DepartmentID = dep.DepartmentID
INNER JOIN DimWard w          ON f.WardID = w.WardID
INNER JOIN DimTreatment t     ON f.TreatmentID = t.TreatmentID
INNER JOIN DimMedicalAid m    ON f.MedicalAidID = m.MedicalAidID
INNER JOIN DimDate dt         ON f.DateID = dt.DateID;