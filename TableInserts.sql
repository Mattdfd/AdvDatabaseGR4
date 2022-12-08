insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 5 , 1, 'Toronto' , 'University st', 456456456, 546456456);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 6 , 2, 'Sweden' , 'Ikea st', 101010, 101010101);
 
insert into clinics(clinicid, drid, patientid, city, address, phonenumber, fax)
  values(id_seq.nextval, 7 , 3, 'Ottawa' , 'Parliament Hill', 613613613, 6136136133);


insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Smith', 'Will', 77477 , 1);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'De niro', 'Robert', 98759 , 2);
 
insert into doctors(drid, lastname, firstname, CPSO, clinicid)
  values(id_seq.nextval, 'Mamoa', 'Jason', 65326 , 3);   

insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,4 ,'Eltoukhy', 'Mahmoud', 35 , 987654321 , 'Toronto', 647647647);
 
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,4 ,'Mik', 'Matthew', 30 , 123456798 , 'Sweden', 01010101);    
   
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,5 ,'Na', 'Jason', 16 , 456213789 , 'Ottawa', 613613613);  
insert into patients(patientid,DrID, lastname, firstname, age,healthcardnum, paddress,phonenumber)
  values(id_seq.nextval,6 ,'Singh', 'Karanjot', 25 , 456789123 , 'Montreal', 514514514);
 
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Tag Simon' , 631398);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Susan Eto' ,635563);
insert into pharmacists(phid, name, licensenum)
  values(id_seq.nextval, 'Matthew Rice' , 624864);

   
insert into insurances(insid, patientid, name)
  values(rxid_seq.nextval, 7 ,'Sun Life');
insert into insurances(insid, patientid, name)
  values(rxid_seq.nextval, 8 ,'Express Script');
insert into insurances(insid, patientid, name)
  values(rxid_seq.nextval, 9 ,'Green Shield');



   
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(301171598, 'Pantoprazole' , 40 , 1000,7,11);
 
insert into medications( DIN, name, strength, quantity, PatientId,PHID )
  values(30121688, 'Metformin' , 500 , 9530,7,12);
 
insert into medications( DIN, name, strength, quantity,PatientId,PHID )
  values(359985423, 'Sertraline' , 20 , 320,8,13);


