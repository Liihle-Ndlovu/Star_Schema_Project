SELECT TOP (1000) [VisitID]
      ,[PatientID]
      ,[DoctorID]
      ,[DepartmentID]
      ,[DateID]
      ,[TreatmentID]
      ,[WardID]
      ,[Medical_Aid_ID]
      ,[Cost]
      ,[Length_of_stay]
      ,[Number_of_procedures]
  FROM [Sunrise_Care_Hospital].[dbo].[FactHospitalVisits]

 --What do i want to see the end result 
 --Fistname,Last name,Treament date,weather priavte or medical aid patient and the cost of treatment
 --For how long they stayed in hospital and the treatment they received


---------This will allow me to see the columns on each table at once for columns
Select 
Table_Name,
String_Agg (Column_Name, ', ') AS Columns
FROM Information_Schema.Columns
Group By Table_Name
Order By Table_Name;

-----------Sql for joins

 Select f.PatientId,
        p.FirstName,
        p.LastName,
        dt.Full_Date,
        t.Diagnosis_Name,
        f.Cost,
        d.Doctor_Name,
        f.Length_of_stay,
        w.WardName,
        m.Provider_Name
FROM [Sunrise_Care_Hospital].[dbo].[FactHospitalVisits] f
INNER JOIN DimPatient p ON f.PatientID = p.PatientID
INNER JOIN DimDoctor d ON f.DoctorID = d.Doctor_ID
INNER JOIN DimDate dt ON f.DateID = dt.DateID
INNER JOIN DimMedicalAid m ON f.Medical_Aid_ID = f.Medical_Aid_ID
INNER JOIN DimWard w ON f.WardID = w.WardID
INNER JOIN DimTreatment t ON f.TreatmentID = t.Treatment_ID;


