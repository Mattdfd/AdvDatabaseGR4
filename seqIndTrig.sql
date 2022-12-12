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
