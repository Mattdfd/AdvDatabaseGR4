CREATE TABLE Patient(
PatientId int Not null Unique,
DrID int,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
HealthCardNum int,
PAddress varchar(255),
PhoneNumber varchar(255),
Primary Key(PatientId)
Foriegn Key(DrID) References Doctors(DrID)
)

Create Table Doctors(
DrID int Not null Unique,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
CPSO int,
ClinicId int,
Primary Key (DrID)
Foriegn Key (ClinicId) References Clinic(ClinicId)
)

