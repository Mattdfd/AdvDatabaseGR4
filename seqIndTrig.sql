-- Creating sequnces so that each table has its own id sequncer 
--except medicatoins as we used DIN as primary key
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
 
CREATE SEQUENCE  clinicsID_seq
    INCREMENT BY 1
    START WITH 1
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;
 
 
CREATE SEQUENCE  doctorsID_seq
    INCREMENT BY 1
    START WITH 1
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;
 
CREATE SEQUENCE  insID_seq
    INCREMENT BY 1
    START WITH 1
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;
 
CREATE SEQUENCE  patientsID_seq
    INCREMENT BY 1
    START WITH 1
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;
 
CREATE SEQUENCE  pharmacistsID_seq
    INCREMENT BY 1
    START WITH 1
    NOCACHE  
    NOCYCLE  
    NOPARTITION ;


--indexes

Create index pateints_index on patients (patientid,
DrID,
LastName,
FirstName)

Create index clinics_index on clinics(clinics, drid,patientid)

Create index doctors_index on doctors (drid, lastname, firstname)

Create index pharmicists_index on pharmicists(phi’s, lastname)

Create index rx_index on rx(exit, phi’s,patientid)

Create index insurances_index on insurances (insid, patientid,name)

Create index medications_index on medications (din, name, strength)


--Triggers

--need to update this trigger to add to date_log

CREATE TRIGGER del_patient
ON insurances
FOR insert into table (patient_log)
values (patientId,date)
AS 
SELECT * FROM DELETED
WHERE CANADA_STATENAME='Ontario';

DELETE FROM CANADA_STATES 
WHERE CANADA_STATENAME='Ontario';