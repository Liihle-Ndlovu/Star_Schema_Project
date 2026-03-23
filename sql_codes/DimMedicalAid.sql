DROP TABLE IF EXISTS DimMedicalAid;
CREATE TABLE DimMedicalAid (
    MedicalAidID INT PRIMARY KEY,
    Provider VARCHAR(100),
    PlanName VARCHAR(50),
    CoverageStatus VARCHAR(20)
);

INSERT INTO DimMedicalAid (MedicalAidID, Provider, PlanName, CoverageStatus) VALUES
(1, 'HealthSure', 'Gold Plan', 'Active'),
(2, 'MediLife', 'Silver Plan', 'Active'),
(3, 'CarePlus', 'Platinum Plan', 'Active'),
(4, 'WellnessFirst', 'Basic Plan', 'Inactive'),
(5, 'SafeHealth', 'Premium Care Plan', 'Active');