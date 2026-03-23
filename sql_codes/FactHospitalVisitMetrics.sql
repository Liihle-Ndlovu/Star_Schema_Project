DROP TABLE IF EXISTS FactHospitalVisitMetrics;

CREATE TABLE FactHospitalVisitMetrics (
    VisitFactID INT IDENTITY(1,1) PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    DepartmentID INT,
    WardID INT,
    TreatmentID INT,
    MedicalAidID INT,
    DateID INT,
    LengthOfStay INT,
    NumberOfProcedures INT,
    TotalTreatmentCost DECIMAL(10,2),
    AmountCharged DECIMAL(10,2),
    AmountCoveredByMedicalAid DECIMAL(10,2),
    AmountPaidByPatient DECIMAL(10,2),
    AmountOutstanding DECIMAL(10,2)
);
INSERT INTO FactHospitalVisitMetrics
(PatientID, DoctorID, DepartmentID, WardID, TreatmentID, MedicalAidID, DateID,
 LengthOfStay, NumberOfProcedures, TotalTreatmentCost,
 AmountCharged, AmountCoveredByMedicalAid, AmountPaidByPatient, AmountOutstanding)
VALUES
-- Visit 1: Copay scenario
(1, 1, 1, 1, 1, 1, 1, 5, 1, 20000.00, 25000.00, 20000.00, 5000.00, 0.00),

-- Visit 2: Patient fully pays small treatment (no coverage)
(2, 2, 2, 2, 2, 2, 2, 3, 1, 1500.00, 1500.00, 0.00, 1500.00, 0.00),

-- Visit 3: Copay partially paid, some outstanding
(3, 3, 3, 3, 3, 3, 3, 2, 1, 10000.00, 12000.00, 7000.00, 2000.00, 3000.00),

-- Visit 4: Fully covered by insurance
(4, 4, 4, 4, 4, 4, 4, 1, 1, 5000.00, 5000.00, 5000.00, 0.00, 0.00),

-- Visit 5: Mixed copay + outstanding
(5, 5, 5, 5, 5, 5, 5, 4, 1, 12000.00, 15000.00, 10000.00, 2000.00, 3000.00);