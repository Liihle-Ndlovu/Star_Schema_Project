DROP TABLE IF EXISTS DimDepartment;
CREATE TABLE DimDepartment (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100),
    Type VARCHAR(50),
    Location VARCHAR(50),
    ServiceType VARCHAR(50)
);

INSERT INTO DimDepartment (DepartmentID, DepartmentName, Type, Location, ServiceType) VALUES
(1, 'Cardiology', 'Medical', 'Building A', 'Inpatient'),
(2, 'Orthopedics', 'Surgical', 'Building B', 'Inpatient'),
(3, 'Neurology', 'Medical', 'Building C', 'Outpatient'),
(4, 'Pediatrics', 'Medical', 'Building D', 'Inpatient'),
(5, 'General Surgery', 'Surgical', 'Building E', 'Inpatient');