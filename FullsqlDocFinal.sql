--This SQL File contains Group 4's full ready to be compiled SQL codes.  Copy and past into SQL Developer for the full database set up.
--All other SQL files contain individual components of this database.

select 'drop table '||table_name||' cascade constraints;' from user_tables;

drop table CLINICS cascade constraints;
drop table DOCTORS cascade constraints;
drop table INSURANCES cascade constraints;
drop table MEDICATIONS cascade constraints;
drop table PATIENTS cascade constraints;
drop table PHARMACISTS cascade constraints;

drop SEQUENCE ID_seq;
drop SEQUENCE RXID_seq;
drop SEQUENCE clinicsID_seq;
drop SEQUENCE doctorsID_seq;
drop SEQUENCE insID_seq;
drop SEQUENCE  patientsID_seq;
drop SEQUENCE pharmacistsID_seq;

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

     
   
   
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 1 , 1, 'Toronto' , 'University st', 456456456, 546456456);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 2 , 2, 'Sweden' , 'Ikea st', 101010, 101010101);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 3 , 3, 'Ottawa' , 'Parliament Hill', 613613613, 6136136133);
  
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 4 , 4, 'Kingston' , '637 Morrow Circle', 5068576011, 6086052130);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 5 , 5, 'Alexandria' , '69533 Beilfuss Terrace', 2569201983, 7972719284);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 6 , 6, 'Smith Falls' , '9 Gerald Center', 9014497660, 6474668994);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 7 , 7, 'Huntsville' , '8 Westridge Plaza', 5496433134, 5808441111);
  
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 8 , 8, 'Bosaso' , '82923 Logan Crossing', 3426959457, 2561034269);  
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 8 , 8, 'Victoria' , '85 Armistice Park', 4023588748, 9349085294); 
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 9 , 9, 'Vancouver' , '28979 Susan Trail', 6632194765, 	5596615188); 
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(clinicsid_seq.nextval, 10 , 10, 'Banff' , '6726 Pankratz Place', 7168357696,1755599213);
 
 
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Smith', 'Will', 77477 , 1);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'De niro', 'Robert', 98759 , 2);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Mamoa', 'Jason', 65326 , 3); 
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Jeniffer', 'Gewer', 72381 , 4); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Mac', 'Bonnette', 55907 , 5); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Jennine', 'Larrett', 80967 , 6); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Tracie', 'Scranny', 65922 , 7); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Mattias', 'Grisard', 69493 , 8); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Sherrie', 'Longstreeth', 88265 , 9); 
  
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(doctorsid_seq.nextval, 'Alana', 'Scad',59583 ,10); 
 
 
 
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,1 ,'Eltoukhy', 'Mahmoud', 35 , 987654321 , 'Toronto', 647647647);
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,2 ,'Mik', 'Matthew', 30 , 123456798 , 'Sweden', 01010101);    
   
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,3 ,'Na', 'Jason', 16 , 456213789 , 'Ottawa', 613613613);  
   
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,4 ,'Singh', 'Karanjot', 25 , 456789123 , 'Montreal', 514514514);
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,5 ,'Mullally', 'Thomas' , 68 , 3192213780,'Toronto' , 3582304726);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,6 ,'ODoherty', 'Betti' ,78 ,	3754380292, 'Krasnogorsk',8747456530);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,7 ,'Eastman' , 'Alexis' , 21 , 4886980036, 'Luhe',6074696236);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,8 ,'Blint' , 'Theodor',4 , 2352728248, 'Santiago',4067846880);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,9 ,'Dun' , 'Clemence' , 80 , 7098146640, ' Orleans',1433813127);
  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(PATIENTSID_SEQ.nextval,10 ,'Fairbourn' , 'Nannette' ,45 , 5882276863,'GlennGarry',6049995315);  
 
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Tag Simon' , 631398);
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Susan Eto' ,635563);
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Matthew Rice' , 624864);
 
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Violante MacGille' ,786497);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Rosene Adderley' ,651761);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Gilligan Tomsu', 55827);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Rasia Ciotto',83290);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Zachary Capehorn' ,63792);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Jaimie Gotcliff' ,62017);
  
insert into pharmacists(phid, name, licensenum)
  values(PHARMACISTSID_SEQ.nextval, 'Cacilia Lassells' ,28957);
 
 
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 1 ,'Sun Life');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 2 ,'Express Script');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 3 ,'Green Shield');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 4 ,'ClaimSecure');
insert into insurances(insid, patientid, name)
  values(INSID_SEQ.nextval, 5 ,'BlueCross');
 
 
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(301171598, 'Pantoprazole' , 40 , 1000,1 ,1);
 
insert into medications( DIN, name, strength, quantity, PatientId,PHID )
  values(30121688, 'Metformin' , 500 , 9530, 2, 2);
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(359985423, 'Sertraline' , 20 , 320,3,3);
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(4796079569, 'Tadalafil' , 20 , 32, 4,3);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(2649881787, 'Esomeprazole' , 40 , 1200 ,5,5);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(6823365879, 'ACETAMINOPHEN' , 325 , 10500,6,6);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(9822185894, 'salicylic acid' , 81 , 12000 ,7 ,7);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(1805810966, 'lamotrigine' , 500 , 300, 8,8);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(7047017893, 'Atenolol' , 50 , 410,9,9);
  
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(9692108063, 'Metoprolol Tartrate' , 25 , 320 ,10 ,10); 

  --Procedure to check what prescription a patient has

create or replace
procedure presc_pro
        (
            p_id in int
                  
        )
    is
     no_Patient EXCEPTION;
     patient_info EXCEPTION;
    p_return  medications%ROWTYPE;
    begin

      select *
      into p_return
      from medications
      where PatientId = p_id;
      
      if p_return.PatientId = p_id then
      Raise patient_info;

     end if;

     EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No Patient Information Found.');

  WHEN patient_info THEN
    DBMS_OUTPUT.PUT_LINE('====Patient info Summary====');
    DBMS_OUTPUT.PUT_LINE('Pharmacist ID#: ' || p_return.PHID);
    DBMS_OUTPUT.PUT_LINE('DIN#: ' || p_return.DIN);
    DBMS_OUTPUT.PUT_LINE('Medication Name: ' || p_return.Name);
    DBMS_OUTPUT.PUT_LINE('Medication Quantity: ' || p_return.quantity);
    DBMS_OUTPUT.PUT_LINE('Patient ID#: ' || p_return.PatientId);
    DBMS_OUTPUT.PUT_LINE('====Patient info Summary====');

    end presc_pro;

-- TO TEST PROCEDURE

exec presc_pro(7);
  
  
--Procedure to check if patient has insurance

   create or replace
procedure has_insur_pro
        (
            p_id in int,
            p_return out insurances%Rowtype
           
           
        )
    is
     hasIn EXCEPTION;
   
    begin

      select *
      into p_return
      from insurances
      where PatientId = p_id;
      
      if p_return.PatientId = p_id then
      
    
      raise hasIn;
      end if;


EXCEPTION
  WHEN NO_DATA_FOUND THEN
    DBMS_OUTPUT.PUT_LINE('No Insurance Information Found.');
  WHEN hasIn THEN 
    dbms_output.put_line('Patient with Id#: ' || p_id || ' has insurance.');
   
end has_insur_pro;


-- test procedure 
    
    declare
    p_return insurances%rowtype;
        p_id INT := 4;
        
        
    begin
    DBMS_OUTPUT.PUT_LINE('Patient Insurance info:');
    has_insur_pro(p_id,P_return);
    DBMS_OUTPUT.PUT_LINE('Insurance Name:' || p_return.name);   
    DBMS_OUTPUT.PUT_LINE('Insurance ID#:' || p_return.insid);
    
    end;
  
--FUNCTION

      /*
Calculate the number of medication units (e.g., tablets, capsules, etc.) per daily dose given that the patient has to take a certain total dose within a specified time period
*/

CREATE OR REPLACE FUNCTION fn_calculateDailyDosage(
    in_medicationName IN medications.name%TYPE,
    in_patientId IN medications.patientId%TYPE,
    in_totalDosage IN medications.strength%TYPE,
    in_startDate IN DATE,
    in_endDate IN DATE
)
RETURN NUMBER
IS
    lv_dailyDosage NUMBER(5, 2);
    lv_medicationStrength medications.strength%TYPE;
    lv_totalDays NUMBER(5, 0);
BEGIN
    IF (in_startDate > in_endDate) THEN
        DBMS_OUTPUT.PUT_LINE('Error! The start date cannot be after the end date.');
        RETURN NULL;
    END IF;
    
    SELECT strength
    INTO lv_medicationStrength
    FROM medications
    WHERE name = in_medicationName AND patientId = in_patientId;
    
    -- Dates are inclusive, so add 1 (i.e., if you start on the 1st and end on the 2nd, you took the medicine for 2 days, not 1)
    lv_totalDays := in_endDate - in_startDate + 1;
    
    lv_dailyDosage := in_totalDosage / lv_totalDays / TO_NUMBER(lv_medicationStrength);
    
    RETURN lv_dailyDosage;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Error! No data found matching these parameters - please check the medication name and patient ID again.');
    WHEN TOO_MANY_ROWS THEN
        DBMS_OUTPUT.PUT_LINE('Error! Patient has more than one active prescription for ' || in_medicationName || '.');
END;

-- Function test
DECLARE
    lv_medicationName medications.name%TYPE := 'Pantoprazole';
    lv_patientId medications.patientId%TYPE := 1;
    lv_totalDosage medications.strength%TYPE := 5000;
    lv_startDate DATE := TO_DATE('01-01-2023', 'DD-MM-YYYY');
    lv_endDate DATE := TO_DATE('31-01-2023', 'DD-MM-YYYY');
    lv_dailyDosage NUMBER(5, 2);
BEGIN
    lv_dailyDosage := fn_calculateDailyDosage(
        lv_medicationName,
        lv_patientId,
        lv_totalDosage,
        lv_startDate,
        lv_endDate
    );
    
    DBMS_OUTPUT.PUT_LINE('Patient #' || lv_patientId || ' is recommended to take ' || lv_dailyDosage || ' unit(s) of ' || lv_medicationName || ' per day.');
END;

---triggers---

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

--indexes

--indexes

Create index pateints_index on patients (patientid,
DrID,
LastName,
FirstName);

Create index clinics_index on clinics(clinics, drid,patientid);

Create index doctors_index on doctors (drid, lastname, firstname);

Create index pharmicists_index on pharmicists(phi’s, lastname);

Create index rx_index on rx(exit, phi’s,patientid);

Create index insurances_index on insurances (insid, patientid,name);

Create index medications_index on medications (din, name, strength);
  