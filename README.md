### Star_Schema_Project

This project is a **hospital data warehouse star schema** designed to organize and analyze hospital operations efficiently. It includes **dimension tables** and a **fact table** to support reporting, analytics, and business intelligence tasks.Designed and implemented a hospital data warehouse using a star schema model. Created all dimension and fact tables and populated them with sample data to support analytical queries and reporting. 

The schema tracks **patients, doctors, departments, treatments, wards, medical aids, and visit details**, providing a normalized structure that simplifies querying and reporting.

### Star Schema Structure

#### Fact Table
- **FactHospitalVisitst** – Contains hospital visit records including patient, doctor, department, treatment, ward, medical aid, cost, length of stay, and number of procedures.

#### Dimension Tables
- **DimPatient** – Patient information including demographics and location.  
- **DimDoctor** – Doctor details including specialty and department assignment.  
- **DimDepartment** – Hospital departments including department type, location, and service type.  
- **DimTreatment** – Treatments provided with cost and associated diagnosis.  
- **DimWard** – Hospital wards linked to departments, with capacity details.  
- **DimMedicalAid** – Medical aid providers, plans, membership, and patient coverage status.  
- **DimDate** – Calendar dates for tracking visit dates, treatment dates, and hospital operations.

#### Key Features
  
- **Full star schema:** Fact table at the center, linking all dimensions.  
- **Flexible for analytics:** Easily query costs, patient visits, treatments, and doctor performance.  
- **Sample data included:** Each table contains 5 sample rows for testing and demonstrations.  
- **Handles optional data:** Supports private patients and outpatient visits with nullable fields.

#### Example Use Cases

- Calculate **total revenue per department or doctor**.  
- Track **patient treatment histories** and diagnoses.  
- Analyze **ward occupancy and length of stay**.  
- Generate **reports by treatment, medical aid, or date**.

### Schema Diagram
<img width="5528" height="3976" alt="image" src="https://github.com/user-attachments/assets/8645b2e7-07f9-4adf-9247-3c7eebf0bed6" />




