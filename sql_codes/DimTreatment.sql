DROP TABLE IF EXISTS DimTreatment;
CREATE TABLE DimTreatment (
    TreatmentID INT PRIMARY KEY,
    TreatmentName VARCHAR(100),
    Diagnosis VARCHAR(100),
    Cost DECIMAL(10,2) -- optional if cost is fixed per treatment
);

INSERT INTO DimTreatment (TreatmentID, TreatmentName, Diagnosis, Cost) VALUES
(1, 'Angioplasty', 'Coronary Artery Disease', 25000.00),
(2, 'Knee Replacement', 'Osteoarthritis', 40000.00),
(3, 'EEG Test', 'Epilepsy', 1500.00),
(4, 'Appendectomy', 'Appendicitis', 12000.00),
(5, 'Flu Vaccination', 'Influenza', 200.00);