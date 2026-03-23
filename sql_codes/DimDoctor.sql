DROP TABLE IF EXISTS DimDoctor;
CREATE TABLE DimDoctor (
    DoctorID INT PRIMARY KEY,
    DoctorName VARCHAR(100),
    Specialty VARCHAR(50),
    DepartmentID INT 
);

INSERT INTO DimDoctor (DoctorID, DoctorName, Specialty, DepartmentID) VALUES
(1, 'Dr. Alice Thompson', 'Cardiology', 1),
(2, 'Dr. Brian Jacobs', 'Orthopedics', 2),
(3, 'Dr. Carol van der Merwe', 'Neurology', 3),
(4, 'Dr. Daniel Nkosi', 'Pediatrics', 4),
(5, 'Dr. Emily Naidoo', 'General Surgery', 2);