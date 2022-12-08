---To Delete all tables----
select 'drop table '||table_name||' cascade constraints;' from user_tables;
-----Copy output and past into query to run-----

Create Table clinics(
    clinicId int,
    DrID int,
    PatientId int,
    City varchar(255) NOT NULL,
    Address varchar(255),
    PhoneNumber int,
    Fax int,
    CONSTRAINT clinicid_pk PRIMARY KEY(clinicid)
    );


Create Table doctors(
    DrID int primary key,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    CPSO int unique,
    ClinicId int,
    CONSTRAINT clinicid_fk FOREIGN KEY (clinicid) REFERENCES clinics (clinicid));

CREATE TABLE patients(
PatientId int,
DrID int,
LastName varchar(255) NOT NULL,
FirstName varchar(255),
Age int,
HealthCardNum int,
PAddress varchar(255),
PhoneNumber varchar(255),
CONSTRAINT Patientid_pk PRIMARY KEY(Patientid),
Constraint DRID_FK FOREIGN Key(DrID) References doctors(DrID)
);


Create Table pharmacists(
    PHID int,
    Name varchar(255) NOT NULL,
    LicenseNum int unique,
    CONSTRAINT phid_pk PRIMARY KEY(phid));

Create Table insurances(
    InsID int,
    PatientId int,
    name varchar(255),
    CONSTRAINT insid_pk PRIMARY KEY(insid),
    CONSTRAINT ins_patientid_fk FOREIGN KEY (patientid) REFERENCES patients (patientid));

Create Table medications(
    DIN int,
    Name varchar(255),
    Strength varchar(255),
    Quantity int,    
    PatientId int,
    PHID int,
   CONSTRAINT DIN_PK Primary Key (DIN),
   CONSTRAINT med_patientid_fk FOREIGN KEY (PatientID) References patients(PatientID),
   CONSTRAINT med_pharmid_fk FOREIGN KEY (PHID) References pharmacists(PHID));