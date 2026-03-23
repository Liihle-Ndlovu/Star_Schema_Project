DROP TABLE IF EXISTS DimWard;
CREATE TABLE DimWard (
    WardID INT PRIMARY KEY,
    WardName VARCHAR(50),
    Capacity INT,
  
);

INSERT INTO DimWard (WardID, WardName, Capacity) VALUES
(1, 'Cardio Ward 1', 20),
(2, 'Ortho Ward 2', 15),
(3, 'Neuro Ward 1', 10),
(4, 'Pediatrics Ward A', 25),
(5, 'Surgery Ward 1', 12);