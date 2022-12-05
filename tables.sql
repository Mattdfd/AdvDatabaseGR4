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
);

Create Table Doctors(
DrID int Not null Unique,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
CPSO int,
ClinicId int,
Primary Key (DrID)
Foriegn Key (ClinicId) References Clinic(ClinicId)
);

Create Table Clinic(
ClinicId int Not null Unique
DrID int,
PatientId int,
City varchar(255) NOT NULL,
Address varchar(255),
PhoneNumber int,
Fax int,
Primary Key (ClinicId)
Foriegn Key (PatientId) References Patient(PatientId)
);


Create Table Pharmacist(
PHID int Not null Unique,
DrID int,
PatientId int,
Name varchar(255) NOT NULL,
LicenseNum int,
Primary Key (PHID)
Foriegn Key (PatientIDt) References Patient(PatientID)
);

Create Table Insurance(
    InID int Not null Unique,
    PatientId int,
    name varchar(255),
    Primary Key(InID),
    Foriegn Key (PatientID) References Patient(PatientID)
);

Create Table Medication(
    Name varchar(255),
    Strength varchar(255),
    Quantity int,
    DIN int,
    PatientId int,
    PHID int,
    Primary Key (DIN),
    Foriegn Key (PatientID) References Patient(PatientID),
    Foriegn key (PHID) References Pharmacist(PHID)
);
