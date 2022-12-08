CREATE TABLE Patients(
    PatientId int,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    Age int,
    HealthCardNum int unique,
    PAddress varchar(255),
    PhoneNumber varchar(255),
    CONSTRAINT Patientid_pk PRIMARY KEY(patientid));
 
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Eltoukhy', 'Mahmoud', 35 , 987654321 , 'Toronto', 647647647);
 
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Mik', 'Matthew', 30 , 123456798 , 'Sweden', 01010101);    
   
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Na', 'Jason', 16 , 456213789 , 'Ottawa', 613613613);  
   
insert into patients(patientid, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval ,'Singh', 'Karanjot', 25 , 456789123 , 'Montreal', 514514514);
 
 
Create Table Clinics(
    ClinicId int,
    DrID int,
    PatientId int,
    City varchar(255) NOT NULL,
    Address varchar(255),
    PhoneNumber int,
    Fax int,
    CONSTRAINT clinicid_pk PRIMARY KEY(clinicid),
    CONSTRAINT patientid_fk FOREIGN KEY (patientid) REFERENCES patients (patientid));
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 5 , 1, 'Toronto' , 'University st', 456456456, 546456456);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 6 , 2, 'Sweden' , 'Ikea st', 101010, 101010101);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 7 , 3, 'Ottawa' , 'Parliament Hill', 613613613, 6136136133);
 
Create Table Doctors(
    DrID int primary key,
    LastName varchar(255) NOT NULL,
    FirstName varchar(255),
    CPSO int unique,
    ClinicId int,
    CONSTRAINT clinicid_fk FOREIGN KEY (clinicid) REFERENCES clinics (clinicid));
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Smith', 'Will', 77477 , 5);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'De niro', 'Robert', 98759 , 6);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Mamoa', 'Jason', 65326 , 7);  
 
 
Create Table Pharmacists(
    PHID int,
    Name varchar(255) NOT NULL,
    LicenseNum int unique,
    CONSTRAINT phid_pk PRIMARY KEY(phid));
 
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Tag Simon' , 631398);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Susan Eto' ,635563);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Matthew Rice' , 624864);
 
--Create Table RX (
--    rxid int,
--    phid int,
--    patientid int,
--    drid int,
--    CONSTRAINT rxid_pk PRIMARY KEY(rxid),
--    CONSTRAINT rx_patientid_fk FOREIGN KEY (patientid) REFERENCES patients (patientid),
--    CONSTRAINT rx_phid_fk FOREIGN KEY (phid) REFERENCES pharmacists (phid),
--    CONSTRAINT rx_drid_fk FOREIGN KEY (drid) REFERENCES doctors (drid));
--    
--select * from pharmacists;
--select * from doctors;
--select * from rx;
--drop table rx;
--insert into pharmacists(rxid, phid, patientid)
--  values(rxid_seq.nextval, 14, 1);
--insert into pharmacists(rxid, phid, patientid, drid)
--  values(rxid_seq.nextval, 15, 2 , 12);  
--insert into pharmacists(rxid, phid, patientid, drid)
--  values(rxid_seq.nextval, 16, 3 , 13);
--insert into pharmacists(rxid, phid, patientid, drid)
--  values(rxid_seq.nextval, 16, 4 ,13);  
 
 
Create Table Insurances(
    InsID int,
    PatientId int,
    name varchar(255),
    CONSTRAINT insid_pk PRIMARY KEY(insid),
    CONSTRAINT ins_patientid_fk FOREIGN KEY (patientid) REFERENCES patients (patientid));
 
insert into Insurances(insid, patientid, name)
  values(rxid_seq.nextval, 1 ,'Sun Life');
insert into Insurances(insid, patientid, name)
  values(rxid_seq.nextval, 2 ,'Express Script');
insert into Insurances(insid, patientid, name)
  values(rxid_seq.nextval, 3 ,'Green Shield');
 
Create Table Medication(
    DIN int,
    Name varchar(255),
    Strength varchar(255),
    Quantity int,    
    PatientId int,
    PHID int,
   CONSTRAINT DIN_PK Primary Key (DIN),
   CONSTRAINT med_patientid_fk FOREIGN KEY (PatientID) References Patient(PatientID),
    CONSTRAINT med_pharmid_fk FOREIGN KEY (PHID) References Pharmacist(PHID)
);

 
insert into medications( DIN, name, strength, quantity,PatientID,PHID )
  values(301171598, 'Pantoprazole' , 40 , 1000,1,1);
 
insert into medications( DIN, name, strength, quantity )
  values(30121688, 'Metformin' , 500 , 9530,1,1);
 
insert into medications( DIN, name, strength, quantity )
  values(359985423, 'Sertraline' , 20 , 320,2,1);
 
CREATE SEQUENCE  ID_seq  
    MINVALUE 1
    MAXVALUE 1000
    INCREMENT BY 1
    START WITH 1
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;
 
CREATE SEQUENCE  RXID_seq
    INCREMENT BY 100
    START WITH 1000
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;
