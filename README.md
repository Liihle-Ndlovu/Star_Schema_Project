### Hospital Data Warehouse Project – Star Schema
Project Overview

#### Problem Statement:
Hospitals often have fragmented data across multiple operational systems — patient info, treatments, billing, doctor schedules, and departments are stored separately. This makes it difficult to analyze operations, revenue, and patient care efficiently.

#### Solution:
Design a star schema data warehouse to centralize and structure hospital data into fact and dimension tables. This enables fast, accurate analytical queries for reporting, decision-making, and insights.

### Star Schema Structure

#### Fact Table
- **FactHospitalVisitMetrics** – Contains hospital visit records including patient, doctor, department, treatment, ward, medical aid, length of stay,number of procedures and Billing / Financial Measures
##### Billing / Financial Measures:
- **AmountCharged** – Total billed to patient/insurance.
- **AmountCoveredByMedicalAid** – Portion paid by insurance.
- **AmountPaidByPatient-** – Portion paid out-of-pocket by the patient.
- **AmountOutstanding** – Remaining balance not yet paid.
  
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
- **Handles optional data:** Supports private patients and outpatient visits with nullable fields.

#### Example Use Cases

- Calculate **total revenue per department or doctor**.  
- Track **patient treatment histories** and diagnoses.  
- Analyze **ward occupancy and length of stay**.  
- Generate **reports by treatment, medical aid, or date**.
- Calculate**Outstanding Payments per Patient**
- Calculate**Revenue per Medical Aid Provider**

### Schema Diagram
<img width="5528" height="3976" alt="image" src="https://github.com/user-attachments/assets/8645b2e7-07f9-4adf-9247-3c7eebf0bed6" />




