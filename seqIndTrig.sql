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


/*TRIGGER 1*/
/*TRIGGER TO  */
/*TRIGGER CREATED*/
DROP TRIGGER MEDICATION_CONSTRAIN;
CREATE OR REPLACE TRIGGER MEDICATION_CONSTRAIN
BEFORE INSERT OR UPDATE ON medications
REFERENCING OLD AS OLD_VALUES NEW AS NEW_VALUES
FOR EACH ROW
ENABLE
DECLARE
INVALID_OPERATION EXCEPTION;
BEGIN

IF :NEW_VALUES.Quantity >= 0 THEN
DBMS_OUTPUT.PUT_LINE('VALID ENTRY: ' || :NEW_VALUES.QUANTITY);
ELSE
DBMS_OUTPUT.PUT_LINE('INVALID ENTRY, QUANTITY >= 0');
RAISE INVALID_OPERATION;
END IF;
EXCEPTION WHEN INVALID_OPERATION THEN
DBMS_OUTPUT.PUT_LINE('EXCEPTION INVOKED');
END;

---TEST TRIGGER---
DECLARE
BEGIN
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
values(9692108065, 'Advil' , 250 , -1 ,10 ,10); 
END;

/*TRIGGER 2*/
DROP TRIGGER PATIENT_TRIGGER;
CREATE OR REPLACE TRIGGER PATIENT_TRIGGER
BEFORE INSERT OR UPDATE ON patients
REFERENCING OLD AS OLD_VALUES NEW AS NEW_VALUES
FOR EACH ROW
ENABLE
DECLARE
INVALID_OPERATION EXCEPTION;
BEGIN

IF :NEW_VALUES.Age >= 60 THEN
DBMS_OUTPUT.PUT_LINE('VALID INSERTION FOR INSAURNCE: ' || :NEW_VALUES.Age);
insert into insurances(insid, patientid, name)
values(INSID_SEQ.nextval, :NEW_VALUES.PatientId ,'ClaimSecure');
ELSE
DBMS_OUTPUT.PUT_LINE('NO INSERTION FOR INSUARACE, AGE >= 60');
RAISE INVALID_OPERATION;
END IF;
EXCEPTION WHEN INVALID_OPERATION THEN
DBMS_OUTPUT.PUT_LINE('EXCEPTION INVOKED');
END;

---TEST TRIGGER 2---
SELECT * FROM insurances;

UPDATE patients
SET Age= 75
WHERE PatientId=7;

insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
values(PATIENTSID_SEQ.nextval,1 ,'Shah', 'Maya', 35 , 8173631713 , 'Toronto', 647647647);


SELECT * FROM patients;