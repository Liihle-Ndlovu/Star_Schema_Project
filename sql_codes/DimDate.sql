DROP TABLE IF EXISTS DimDate;
CREATE TABLE DimDate (
    DateID INT PRIMARY KEY,
    FullDate DATE,
    Day INT,
    Month INT,
    Quarter INT,
    Year INT
);

INSERT INTO DimDate (DateID, FullDate, Day, Month, Quarter, Year) VALUES
(1, '2026-03-01', 1, 3, 1, 2026),
(2, '2026-03-02', 2, 3, 1, 2026),
(3, '2026-03-03', 3, 3, 1, 2026),
(4, '2026-03-04', 4, 3, 1, 2026),
(5, '2026-03-05', 5, 3, 1, 2026);