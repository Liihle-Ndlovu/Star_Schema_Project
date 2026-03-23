DROP TABLE IF EXISTS DimPatient;
CREATE TABLE DimPatient (
    PatientID INT PRIMARY KEY,
    Name VARCHAR(250),
    Gender CHAR(1),
    DateOfBirth DATE,
    City VARCHAR(250),
    State VARCHAR(250),
    Country VARCHAR(250)
);

INSERT INTO DimPatient (PatientID, Name, Gender, DateOfBirth, City, State, Country) VALUES
(1, 'John Smith', 'M', '1980-05-12', 'Johannesburg', 'Gauteng', 'South Africa'),
(2, 'Mary Johnson', 'F', '1992-08-23', 'Cape Town', 'Western Cape', 'South Africa'),
(3, 'David Mokoena', 'M', '1975-11-05', 'Durban', 'KwaZulu-Natal', 'South Africa'),
(4, 'Linda Nkosi', 'F', '1988-03-17', 'Pretoria', 'Gauteng', 'South Africa'),
(5, 'Sipho Dlamini', 'M', '2000-01-25', 'Bloemfontein', 'Free State', 'South Africa');